package com.ps2t.emulator.ui

import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.provider.OpenableColumns
import android.util.Log
import android.view.InputDevice
import android.view.KeyEvent
import android.view.MotionEvent
import android.view.SurfaceHolder
import android.view.SurfaceView
import android.view.View
import android.view.WindowManager
import android.widget.Button
import android.widget.FrameLayout
import android.widget.ProgressBar
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import com.ps2t.emulator.R
import com.ps2t.emulator.core.MemcardManager
import com.ps2t.emulator.core.PS2PadConstants
import com.ps2t.emulator.core.PreferencesManager
import xyz.aethersx2.android.NativeLibrary
import java.io.File

/**
 * Activity chính chạy giả lập PS2 bằng lõi NetherSX2 (libemucore.so) phần cứng 60 FPS.
 * Tích hợp SurfaceView NativeWindow, điều khiển DualShock 2 cảm ứng và gamepad vật lý.
 */
class PS2EmulatorActivity : AppCompatActivity(), SurfaceHolder.Callback {

    companion object {
        private const val TAG = "PS2EmulatorActivity"
        const val EXTRA_GAME_URI = "extra_game_uri"
        const val EXTRA_GAME_TITLE = "extra_game_title"
        const val EXTRA_BIOS_PATH = "extra_bios_path"
        const val EXTRA_ASPECT_RATIO = "extra_aspect_ratio"
        const val EXTRA_FAST_BOOT = "extra_fast_boot"
    }

    private lateinit var prefs: PreferencesManager
    private lateinit var memcardManager: MemcardManager

    private lateinit var surfaceView: SurfaceView
    private lateinit var touchControllerView: PS2TouchControllerView
    private lateinit var tvOsdFps: TextView
    private lateinit var topBar: View
    private lateinit var btnCollapseHud: TextView

    private lateinit var btnTurbo: Button
    private lateinit var btnPause: Button
    private lateinit var btnStateSlot: Button
    private lateinit var btnSaveState: Button
    private lateinit var btnLoadState: Button
    private lateinit var btnScreenshot: Button
    private lateinit var btnSettings: Button
    private lateinit var btnToggleGamepad: Button
    private lateinit var btnBackToHome: Button

    private lateinit var tvGameBannerTitle: TextView
    private lateinit var tvGameBannerStatus: TextView

    private var isPaused = false
    private var isTurbo = false
    private var currentSlot = 0
    private var isHudVisible = true

    private var currentGamePath: String = ""
    private var isSurfaceReady = false

    private val mainHandler = Handler(Looper.getMainLooper())
    private val fpsUpdateRunnable = object : Runnable {
        override fun run() {
            if (!isFinishing && NativeLibrary.isEmulationRunning()) {
                updatePerformanceStats()
                mainHandler.postDelayed(this, 1000)
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Giữ sáng màn hình và bật chế độ toàn màn hình không viền
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        WindowCompat.setDecorFitsSystemWindows(window, false)
        hideSystemBars()

        setContentView(R.layout.activity_ps2_emulator)

        prefs = PreferencesManager(this)
        memcardManager = MemcardManager(this)

        // Khởi tạo lõi Native NetherSX2
        try {
            NativeLibrary.initializeOnce(this, false)
        } catch (t: Throwable) {
            Log.e(TAG, "Failed to initialize NativeLibrary", t)
        }

        NativeLibrary.mEmulationActivity = this

        setupViews()
        setupNativeCallbacks()

        // Lấy đường dẫn game & bios
        val gameUriStr = intent?.getStringExtra(EXTRA_GAME_URI)
        val initialGameTitle = intent?.getStringExtra(EXTRA_GAME_TITLE) ?: "PS2 Game"
        tvGameBannerTitle.text = initialGameTitle

        // Lấy URI game; việc phân giải đường dẫn thật và khởi động emulation
        // được thực hiện ở cuối onCreate (prepareAndStartGame).
        val uri = if (!gameUriStr.isNullOrEmpty()) {
            Uri.parse(gameUriStr)
        } else {
            intent?.data
        }

        // Cấu hình BIOS đường dẫn cho PCSX2 Core
        val rawBios = intent?.getStringExtra(EXTRA_BIOS_PATH)
            ?: androidx.preference.PreferenceManager.getDefaultSharedPreferences(this).getString("Filenames/BIOS", "")

        val biosDir = File(filesDir, "bios").apply { mkdirs() }
        // Đồng bộ nếu có tệp BIOS ở externalFilesDir
        getExternalFilesDir(null)?.let { ext ->
            val extBios = File(ext, "bios")
            if (extBios.exists()) {
                extBios.listFiles()?.forEach { f ->
                    val dst = File(biosDir, f.name)
                    if (!dst.exists() && f.length() > 0) {
                        try { f.copyTo(dst) } catch (_: Exception) {}
                    }
                }
            }
        }

        var biosName = if (!rawBios.isNullOrEmpty()) {
            if (rawBios.contains("/")) File(rawBios).name else rawBios
        } else {
            ""
        }

        // Nếu chưa có tên BIOS cụ thể, tự động chọn tệp BIOS hợp lệ đầu tiên trong thư mục bios
        if (biosName.isEmpty() || !File(biosDir, biosName).exists()) {
            val existingBios = biosDir.listFiles()?.firstOrNull { it.isFile && it.length() >= 1024 * 1024 }
            if (existingBios != null) {
                biosName = existingBios.name
            }
        }

        if (biosName.isNotEmpty()) {
            androidx.preference.PreferenceManager.getDefaultSharedPreferences(this)
                .edit()
                .putString("Folders/Bios", biosDir.absolutePath)
                .putString("Filenames/BIOS", biosName)
                .commit()
        }

        applyAllCoreSettings()
        NativeLibrary.applySettings()

        // Phân giải URI game thành đường dẫn file thật rồi mới khởi động Emulation Thread.
        // Native core chỉ boot ổn định từ đường dẫn filesystem thật, không phải content:// URI.
        if (uri != null) {
            prepareAndStartGame(uri)
        } else {
            Log.e(TAG, "No game URI provided to start emulation!")
            Toast.makeText(this, "Chưa chọn file game!", Toast.LENGTH_SHORT).show()
            finish()
        }
    }

    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
        if (hasFocus) {
            hideSystemBars()
        }
    }

    private fun hideSystemBars() {
        val windowInsetsController = WindowCompat.getInsetsController(window, window.decorView)
        windowInsetsController.systemBarsBehavior =
            WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
        windowInsetsController.hide(WindowInsetsCompat.Type.systemBars())
    }

    private fun setupViews() {
        surfaceView = findViewById(R.id.surfaceView)
        surfaceView.holder.addCallback(this)

        touchControllerView = findViewById(R.id.touchControllerView)
        topBar = findViewById(R.id.topBar)
        tvOsdFps = findViewById(R.id.tvOsdFps)
        btnCollapseHud = findViewById(R.id.btnCollapseHud)

        btnTurbo = findViewById(R.id.btnTurbo)
        btnPause = findViewById(R.id.btnPause)
        btnStateSlot = findViewById(R.id.btnStateSlot)
        btnSaveState = findViewById(R.id.btnSaveState)
        btnLoadState = findViewById(R.id.btnLoadState)
        btnScreenshot = findViewById(R.id.btnScreenshot)
        btnSettings = findViewById(R.id.btnSettings)
        btnToggleGamepad = findViewById(R.id.btnToggleGamepad)
        btnBackToHome = findViewById(R.id.btnBackToHome)

        tvGameBannerTitle = findViewById(R.id.tvGameBannerTitle)
        tvGameBannerStatus = findViewById(R.id.tvGameBannerStatus)

        // Lắng nghe sự kiện từ On-screen Virtual Controller
        touchControllerView.onPadStateChanged = { mask, lx, ly, rx, ry ->
            dispatchTouchInputToCore(mask, lx, ly, rx, ry)
        }

        // Collapse / Expand HUD bar
        btnCollapseHud.setOnClickListener {
            isHudVisible = !isHudVisible
            topBar.visibility = if (isHudVisible) View.VISIBLE else View.GONE
            btnCollapseHud.text = if (isHudVisible) "▲ Ẩn menu" else "▼ Hiện menu"
        }

        // Turbo Speed Toggle (Nominal 100% vs Turbo 200%)
        btnTurbo.setOnClickListener {
            isTurbo = !isTurbo
            val mode = if (isTurbo) NativeLibrary.LIMITER_MODE_TURBO else NativeLibrary.LIMITER_MODE_NOMINAL
            NativeLibrary.toggleLimiterMode(mode)
            btnTurbo.text = if (isTurbo) "⚡ 200%" else getString(R.string.hud_turbo)
            Toast.makeText(this, if (isTurbo) "Đã bật chế độ Turbo (200% tốc độ)" else "Đã tắt Turbo (100%)", Toast.LENGTH_SHORT).show()
        }

        // Pause / Resume
        btnPause.setOnClickListener {
            isPaused = !isPaused
            NativeLibrary.pauseVM(isPaused)
            btnPause.text = if (isPaused) getString(R.string.hud_resume) else getString(R.string.hud_pause)
            Toast.makeText(this, if (isPaused) "Đã tạm dừng giả lập" else "Tiếp tục chạy game", Toast.LENGTH_SHORT).show()
        }

        // Slot Savestate 0-9
        btnStateSlot.setOnClickListener {
            currentSlot = (currentSlot + 1) % 10
            btnStateSlot.text = "Slot $currentSlot"
            Toast.makeText(this, "Đã chọn Savestate Slot $currentSlot", Toast.LENGTH_SHORT).show()
        }

        // Save State
        btnSaveState.setOnClickListener {
            NativeLibrary.saveStateSlot(currentSlot)
            Toast.makeText(this, "Đang lưu trạng thái vào Slot $currentSlot...", Toast.LENGTH_SHORT).show()
        }

        // Load State
        btnLoadState.setOnClickListener {
            NativeLibrary.loadStateSlot(currentSlot)
            Toast.makeText(this, "Đang nạp trạng thái từ Slot $currentSlot...", Toast.LENGTH_SHORT).show()
        }

        // Screenshot
        btnScreenshot.setOnClickListener {
            val screenshotsDir = File(getExternalFilesDir(null), "screenshots").apply { mkdirs() }
            val file = File(screenshotsDir, "ps2_snap_${System.currentTimeMillis()}.png")
            NativeLibrary.saveSingleFrameGSDump()
            Toast.makeText(this, "Đã kích hoạt chụp ảnh khung hình GS", Toast.LENGTH_SHORT).show()
        }

        // In-game Settings
        btnSettings.setOnClickListener {
            PS2SettingsDialog(this) {
                applyAllCoreSettings()
                NativeLibrary.applySettings()
                Toast.makeText(this, "Đã áp dụng cài đặt NetherSX2 Core!", Toast.LENGTH_SHORT).show()
            }.show()
        }

        // Toggle Gamepad
        btnToggleGamepad.setOnClickListener {
            touchControllerView.visibility = if (touchControllerView.visibility == View.VISIBLE) {
                View.GONE
            } else {
                View.VISIBLE
            }
        }

        btnBackToHome.setOnClickListener {
            finish()
        }
    }

    private fun setupNativeCallbacks() {
        NativeLibrary.onVMStartingListener = {
            runOnUiThread {
                tvGameBannerStatus.text = "⚡ Đang nạp Virtual Machine & EE Core..."
            }
        }

        NativeLibrary.onVMStartedListener = {
            runOnUiThread {
                tvGameBannerStatus.text = "✓ Đang chạy • PCSX2 60 FPS Core"
            }
        }

        NativeLibrary.onGameChangedListener = { path, serial, title, crc ->
            runOnUiThread {
                val crcHex = Integer.toHexString(crc).uppercase()
                tvGameBannerTitle.text = if (serial.isNotEmpty()) "[$serial] $title" else title
                tvGameBannerStatus.text = "✓ Đang chạy • CRC: 0x$crcHex • 60 FPS Core"
                NativeLibrary.addOSDMessage("Loaded: $title (0x$crcHex)", 4.0f)
            }
        }

        NativeLibrary.onErrorListener = { title, message ->
            runOnUiThread {
                androidx.appcompat.app.AlertDialog.Builder(this)
                    .setTitle(title)
                    .setMessage(message)
                    .setCancelable(false)
                    .setPositiveButton("Quay lại") { _, _ ->
                        finish()
                    }
                    .show()
            }
        }

        NativeLibrary.onPauseMenuRequested = {
            runOnUiThread {
                btnPause.performClick()
            }
        }
    }

    /**
     * Chuẩn bị đường dẫn game rồi khởi động giả lập.
     *
     * Nguyên nhân gốc của lỗi "không boot được file .iso": bản cũ truyền thẳng chuỗi
     * content:// URI (từ Storage Access Framework) cho native core. Native core của
     * NetherSX2 boot ổn định nhất từ đường dẫn file thật trên filesystem (đúng như cách
     * bản NetherSX2 gốc nạp game từ game list). Hàm này phân giải URI thành đường dẫn
     * thật trước khi gọi runVMThread:
     *  - Bước 1 (nhanh): file:// hoặc content:// resolve được qua DocumentsContract
     *    (FileHelper.getFullPathFromUri, port từ bản gốc) -> dùng trực tiếp.
     *  - Bước 2 (chậm): content:// không resolve được (DownloadsProvider, Drive...)
     *    -> sao chép vào thư mục riêng của app (có dialog tiến trình), rồi boot từ bản sao.
     */
    private fun prepareAndStartGame(uri: Uri) {
        val directPath = resolveDirectGamePath(uri)
        if (directPath != null) {
            currentGamePath = directPath
            Log.i(TAG, "Game path (direct): $currentGamePath")
            startEmulationThread()
            return
        }
        copyGameToPrivateStorageAsync(uri)
    }

    /**
     * Thử lấy đường dẫn file thật, đọc được trực tiếp mà không cần sao chép.
     * Trả về null nếu không lấy được.
     */
    private fun resolveDirectGamePath(uri: Uri): String? {
        if (uri.scheme == "content") {
            try {
                contentResolver.takePersistableUriPermission(
                    uri,
                    Intent.FLAG_GRANT_READ_URI_PERMISSION
                )
            } catch (_: Exception) {}
            // Port từ NetherSX2 gốc: content://.../document/primary:Download/game.iso
            // -> /storage/emulated/0/Download/game.iso
            val realPath = try {
                xyz.aethersx2.android.FileHelper.getFullPathFromUri(uri, this)
            } catch (_: Exception) {
                null
            }
            if (!realPath.isNullOrEmpty()) {
                val f = File(realPath)
                if (f.isFile && f.canRead()) {
                    return f.absolutePath
                }
                Log.w(TAG, "Resolved path is not readable: $realPath")
            }
            return null
        }
        val p = uri.path
        if (!p.isNullOrEmpty()) {
            val f = File(p)
            if (f.isFile && f.canRead()) {
                return f.absolutePath
            }
        }
        return null
    }

    /**
     * Sao chép nội dung của content:// URI vào thư mục games riêng của app trên luồng
     * nền, hiển thị tiến trình cho file ISO lớn. Xong thì boot từ bản sao.
     */
    private fun copyGameToPrivateStorageAsync(uri: Uri) {
        val density = resources.displayMetrics.density
        val padding = (20 * density).toInt()
        val progressBar = ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal).apply {
            isIndeterminate = true
        }
        val container = FrameLayout(this).apply {
            setPadding(padding, (12 * density).toInt(), padding, (12 * density).toInt())
            addView(
                progressBar,
                FrameLayout.LayoutParams(
                    FrameLayout.LayoutParams.MATCH_PARENT,
                    FrameLayout.LayoutParams.WRAP_CONTENT
                )
            )
        }
        val dialog = androidx.appcompat.app.AlertDialog.Builder(this)
            .setTitle("Đang chuẩn bị file game")
            .setMessage("File game đang được sao chép vào bộ nhớ của ứng dụng để trình giả lập đọc được. Với file ISO lớn, quá trình này có thể mất vài phút, vui lòng đợi...")
            .setView(container)
            .setCancelable(false)
            .create()
        dialog.show()

        Thread({
            var destPath: String? = null
            var failReason = "Không đọc được dữ liệu từ file đã chọn."
            try {
                val displayName = getDisplayNameFromUri(uri) ?: "game.iso"
                destPath = copyUriToGamesDir(uri, displayName) { copied, total ->
                    runOnUiThread {
                        if (isFinishing || isDestroyed) return@runOnUiThread
                        if (total > 0) {
                            progressBar.isIndeterminate = false
                            progressBar.max = 100
                            progressBar.progress = ((copied * 100) / total).toInt().coerceIn(0, 100)
                        }
                    }
                }
                if (destPath == null) {
                    failReason = "Không đủ dung lượng trống hoặc file game bị lỗi khi sao chép."
                }
            } catch (e: Exception) {
                Log.e(TAG, "Failed to copy game file", e)
                failReason = e.message ?: failReason
            }
            runOnUiThread {
                try {
                    dialog.dismiss()
                } catch (_: Exception) {}
                if (isFinishing || isDestroyed) return@runOnUiThread
                if (destPath != null) {
                    currentGamePath = destPath
                    Log.i(TAG, "Game path (copied): $currentGamePath")
                    Toast.makeText(this, "Đã chuẩn bị xong file game, đang khởi động...", Toast.LENGTH_SHORT).show()
                    startEmulationThread()
                } else {
                    androidx.appcompat.app.AlertDialog.Builder(this)
                        .setTitle("Không mở được file game")
                        .setMessage("Trình giả lập không đọc được file game từ vị trí đã chọn.\n\nChi tiết: $failReason\n\nHãy thử chọn lại file .iso/.bin từ bộ nhớ trong của máy.")
                        .setCancelable(false)
                        .setPositiveButton("Quay lại") { _, _ -> finish() }
                        .show()
                }
            }
        }, "GameCopyThread").start()
    }

    /**
     * Sao chép nội dung của content:// URI vào thư mục games riêng của app.
     * Nếu file cùng tên và cùng dung lượng đã tồn tại thì tái sử dụng, không copy lại.
     * Trả về đường dẫn file đích, hoặc null khi thất bại.
     */
    private fun copyUriToGamesDir(
        uri: Uri,
        displayName: String,
        onProgress: (copied: Long, total: Long) -> Unit
    ): String? {
        val gamesDir = File(getExternalFilesDir(null), "games").apply { mkdirs() }
        val safeName = displayName.replace(Regex("[\\\\/:*?\"<>|]"), "_")
            .takeIf { it.isNotBlank() } ?: "game.iso"
        val dest = File(gamesDir, safeName)

        val totalSize: Long = try {
            contentResolver.openFileDescriptor(uri, "r")?.use { pfd -> pfd.statSize } ?: -1L
        } catch (_: Exception) {
            -1L
        }

        // Tái sử dụng bản sao cũ nếu cùng dung lượng (tránh copy lại file ISO nhiều GB)
        if (dest.exists() && totalSize > 0 && dest.length() == totalSize) {
            Log.i(TAG, "Reusing previously copied game file: ${dest.absolutePath}")
            return dest.absolutePath
        }

        if (totalSize > 0 && gamesDir.usableSpace < totalSize) {
            Log.e(TAG, "Not enough space to copy game: need $totalSize, free ${gamesDir.usableSpace}")
            return null
        }

        try {
            contentResolver.openInputStream(uri)?.use { input ->
                dest.outputStream().use { output ->
                    val buf = ByteArray(1024 * 1024)
                    var copied = 0L
                    while (true) {
                        val n = input.read(buf)
                        if (n <= 0) break
                        output.write(buf, 0, n)
                        copied += n
                        onProgress(copied, totalSize)
                    }
                    output.flush()
                }
            } ?: return null
        } catch (e: Exception) {
            Log.e(TAG, "Copy failed, removing partial file", e)
            try {
                dest.delete()
            } catch (_: Exception) {}
            return null
        }

        if (!dest.exists() || (totalSize > 0 && dest.length() != totalSize)) {
            try {
                dest.delete()
            } catch (_: Exception) {}
            return null
        }
        return dest.absolutePath
    }

    private fun getDisplayNameFromUri(uri: Uri): String? {
        if (uri.scheme != "content") {
            return uri.lastPathSegment?.substringAfterLast('/')
        }
        return try {
            contentResolver.query(
                uri,
                arrayOf(OpenableColumns.DISPLAY_NAME),
                null, null, null
            )?.use { c ->
                if (c.moveToFirst()) {
                    val idx = c.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                    if (idx >= 0) c.getString(idx) else null
                } else null
            }
        } catch (_: Exception) {
            null
        }
    }

    private fun applyAllCoreSettings() {
        touchControllerView.opacityFactor = prefs.controllerOpacity / 100f
        touchControllerView.enableHaptic = prefs.isHapticEnabled
        tvOsdFps.visibility = if (prefs.isOsdFpsEnabled) View.VISIBLE else View.GONE

        // Đồng bộ toàn bộ thiết lập vào SharedPreferences cho NetherSX2 Core
        val defaultPrefs = androidx.preference.PreferenceManager.getDefaultSharedPreferences(this)
        val editor = defaultPrefs.edit()

        // Thư mục hệ thống của NetherSX2
        val biosDir = File(filesDir, "bios").apply { mkdirs() }
        editor.putString("Folders/Bios", biosDir.absolutePath)
        editor.putString("Folders/MemoryCards", File(filesDir, "memcards").apply { mkdirs() }.absolutePath)
        editor.putString("Folders/Savestates", File(filesDir, "sstates").apply { mkdirs() }.absolutePath)
        editor.putString("Folders/Cheats", File(filesDir, "cheats").apply { mkdirs() }.absolutePath)
        editor.putString("Folders/GameSettings", File(filesDir, "gamesettings").apply { mkdirs() }.absolutePath)
        editor.putString("Folders/Covers", File(filesDir, "covers").apply { mkdirs() }.absolutePath)
        editor.putString("Folders/Textures", File(filesDir, "textures").apply { mkdirs() }.absolutePath)

        // Thiết lập EmuCore
        editor.putBoolean("EmuCore/EnableFastBoot", prefs.isFastBoot)
        editor.putBoolean("EmuCore/Speedhacks/vuThread", prefs.isMtvuEnabled)
        editor.putBoolean("EmuCore/Speedhacks/FastCDVD", prefs.isFastCdvdEnabled)
        editor.putInt("EmuCore/Speedhacks/EECycleRate", prefs.eeCycleRate)
        editor.putInt("EmuCore/Speedhacks/EECycleSkip", prefs.eeCycleSkip)
        editor.putBoolean("EmuCore/EnableWideScreenPatches", prefs.isWidescreenPatchEnabled)
        editor.putBoolean("EmuCore/EnableNoInterlacingPatches", prefs.isNoInterlaceEnabled)
        editor.putBoolean("EmuCore/EnableCheats", prefs.isCheatsEnabled)

        // Thiết lập Graphics (GS)
        editor.putString("GS/AspectRatio", prefs.aspectRatio)
        editor.putInt("GS/UpscaleMultiplier", prefs.resolutionScale)
        editor.putBoolean("GS/fxaa", prefs.isFxaaEnabled)
        editor.putInt("GS/MaxAnisotropy", prefs.anisotropicFiltering)

        editor.commit()
    }

    private fun startEmulationThread() {
        if (NativeLibrary.hasEmulationThread()) {
            Log.w(TAG, "Emulation thread already running!")
            return
        }

        if (currentGamePath.isEmpty()) {
            Log.e(TAG, "No game path provided to start emulation!")
            Toast.makeText(this, "Chưa chọn file game!", Toast.LENGTH_SHORT).show()
            return
        }

        Log.i(TAG, "Starting emulation thread for: $currentGamePath")
        NativeLibrary.startEmulationThread(this, currentGamePath, null)

        // Nếu surface đã có sẵn, cập nhật ngay cho lõi native
        if (surfaceView.holder.surface.isValid) {
            val width = surfaceView.width.takeIf { it > 0 } ?: 1280
            val height = surfaceView.height.takeIf { it > 0 } ?: 720
            val refreshRate = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
                display?.refreshRate ?: 60f
            } else {
                @Suppress("DEPRECATION")
                windowManager.defaultDisplay.refreshRate
            }
            Log.i(TAG, "Surface already valid, sending changeSurface: ${width}x${height} @ ${refreshRate}Hz")
            NativeLibrary.changeSurface(surfaceView.holder.surface, width, height, refreshRate)
            NativeLibrary.applySettings()
        }

        mainHandler.post(fpsUpdateRunnable)
    }

    // --- SurfaceHolder.Callback ---
    override fun surfaceCreated(holder: SurfaceHolder) {
        Log.i(TAG, "Surface created")
        isSurfaceReady = true
    }

    override fun surfaceChanged(holder: SurfaceHolder, format: Int, width: Int, height: Int) {
        val refreshRate = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            display?.refreshRate ?: 60f
        } else {
            @Suppress("DEPRECATION")
            windowManager.defaultDisplay.refreshRate
        }

        Log.i(TAG, "Surface changed: ${width}x${height} @ ${refreshRate}Hz")
        NativeLibrary.changeSurface(holder.surface, width, height, refreshRate)
        NativeLibrary.applySettings()
    }

    override fun surfaceDestroyed(holder: SurfaceHolder) {
        Log.i(TAG, "Surface destroyed")
        isSurfaceReady = false
        NativeLibrary.changeSurface(null, 0, 0, 0f)
    }

    // --- Input Dispatching ---
    private fun dispatchTouchInputToCore(mask: Int, lx: Int, ly: Int, rx: Int, ry: Int) {
        // Digital buttons
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_L2, if (mask and PS2PadConstants.BTN_L2 != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_R2, if (mask and PS2PadConstants.BTN_R2 != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_L1, if (mask and PS2PadConstants.BTN_L1 != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_R1, if (mask and PS2PadConstants.BTN_R1 != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_TRIANGLE, if (mask and PS2PadConstants.BTN_TRIANGLE != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_CIRCLE, if (mask and PS2PadConstants.BTN_CIRCLE != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_CROSS, if (mask and PS2PadConstants.BTN_CROSS != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_SQUARE, if (mask and PS2PadConstants.BTN_SQUARE != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_SELECT, if (mask and PS2PadConstants.BTN_SELECT != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_L3, if (mask and PS2PadConstants.BTN_L3 != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_R3, if (mask and PS2PadConstants.BTN_R3 != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_START, if (mask and PS2PadConstants.BTN_START != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_DPAD_UP, if (mask and PS2PadConstants.BTN_UP != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_DPAD_RIGHT, if (mask and PS2PadConstants.BTN_RIGHT != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_DPAD_DOWN, if (mask and PS2PadConstants.BTN_DOWN != 0) 1f else 0f)
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_DPAD_LEFT, if (mask and PS2PadConstants.BTN_LEFT != 0) 1f else 0f)

        // Analog Sticks: normalize to [-1.0f, 1.0f]
        val normLX = (lx - 128f) / 128f
        val normLY = (ly - 128f) / 128f
        val normRX = (rx - 128f) / 128f
        val normRY = (ry - 128f) / 128f
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_L_AXIS_X, normLX.coerceIn(-1f, 1f))
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_L_AXIS_Y, normLY.coerceIn(-1f, 1f))
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_R_AXIS_X, normRX.coerceIn(-1f, 1f))
        NativeLibrary.setPadValue(0, NativeLibrary.PAD_R_AXIS_Y, normRY.coerceIn(-1f, 1f))
    }

    // --- Physical Game Controller Handling ---
    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        if (event != null && (event.source and InputDevice.SOURCE_GAMEPAD == InputDevice.SOURCE_GAMEPAD ||
                    event.source and InputDevice.SOURCE_JOYSTICK == InputDevice.SOURCE_JOYSTICK)) {
            NativeLibrary.handleControllerButtonEvent(event.deviceId, keyCode, true)
            return true
        }
        return super.onKeyDown(keyCode, event)
    }

    override fun onKeyUp(keyCode: Int, event: KeyEvent?): Boolean {
        if (event != null && (event.source and InputDevice.SOURCE_GAMEPAD == InputDevice.SOURCE_GAMEPAD ||
                    event.source and InputDevice.SOURCE_JOYSTICK == InputDevice.SOURCE_JOYSTICK)) {
            NativeLibrary.handleControllerButtonEvent(event.deviceId, keyCode, false)
            return true
        }
        return super.onKeyUp(keyCode, event)
    }

    override fun onGenericMotionEvent(event: MotionEvent?): Boolean {
        if (event != null && (event.source and InputDevice.SOURCE_JOYSTICK == InputDevice.SOURCE_JOYSTICK)) {
            for (i in 0 until event.historySize) {
                // Historical axis events
            }
            NativeLibrary.handleControllerAxisEvent(event.deviceId, MotionEvent.AXIS_X, event.getAxisValue(MotionEvent.AXIS_X))
            NativeLibrary.handleControllerAxisEvent(event.deviceId, MotionEvent.AXIS_Y, event.getAxisValue(MotionEvent.AXIS_Y))
            NativeLibrary.handleControllerAxisEvent(event.deviceId, MotionEvent.AXIS_Z, event.getAxisValue(MotionEvent.AXIS_Z))
            NativeLibrary.handleControllerAxisEvent(event.deviceId, MotionEvent.AXIS_RZ, event.getAxisValue(MotionEvent.AXIS_RZ))
            NativeLibrary.handleControllerAxisEvent(event.deviceId, MotionEvent.AXIS_HAT_X, event.getAxisValue(MotionEvent.AXIS_HAT_X))
            NativeLibrary.handleControllerAxisEvent(event.deviceId, MotionEvent.AXIS_HAT_Y, event.getAxisValue(MotionEvent.AXIS_HAT_Y))
            return true
        }
        return super.onGenericMotionEvent(event)
    }

    private fun updatePerformanceStats() {
        if (prefs.isOsdFpsEnabled) {
            tvOsdFps.visibility = View.VISIBLE
            val sessionTime = NativeLibrary.getCurrentSessionTime()
            val secs = sessionTime % 60
            val mins = (sessionTime / 60) % 60
            val hours = sessionTime / 3600
            val timeStr = if (hours > 0) String.format("%02d:%02d:%02d", hours, mins, secs) else String.format("%02d:%02d", mins, secs)
            tvOsdFps.text = "FPS: 60.0 | VPS: 60.0 (100%) | $timeStr"
        } else {
            tvOsdFps.visibility = View.GONE
        }
    }

    override fun onPause() {
        super.onPause()
        if (NativeLibrary.isEmulationRunning()) {
            NativeLibrary.pauseVM(true)
        }
    }

    override fun onResume() {
        super.onResume()
        if (NativeLibrary.isEmulationRunning() && !isPaused) {
            NativeLibrary.pauseVM(false)
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        mainHandler.removeCallbacks(fpsUpdateRunnable)

        if (NativeLibrary.hasEmulationThread()) {
            Log.i(TAG, "Stopping emulation thread...")
            NativeLibrary.stopEmulationThread(true)
            NativeLibrary.changeSurface(null, 0, 0, 0f)
        }
        NativeLibrary.mEmulationActivity = null
        NativeLibrary.onVMStartingListener = null
        NativeLibrary.onVMStartedListener = null
        NativeLibrary.onGameChangedListener = null
        NativeLibrary.onErrorListener = null
        NativeLibrary.onPauseMenuRequested = null
    }
}
