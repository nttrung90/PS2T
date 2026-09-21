package com.ps2t.emulator.ui

import android.net.Uri
import android.opengl.GLSurfaceView
import android.os.Bundle
import android.view.InputDevice
import android.view.KeyEvent
import android.view.MotionEvent
import android.view.View
import android.view.WindowManager
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import com.ps2t.emulator.R
import com.ps2t.emulator.core.MemcardManager
import com.ps2t.emulator.core.PS2CoreBridge
import com.ps2t.emulator.core.PS2PadConstants
import com.ps2t.emulator.core.PreferencesManager
import com.ps2t.emulator.render.PS2GameRenderer
import java.io.File

/**
 * Activity chính chạy giả lập PS2 ở chế độ toàn màn hình ngang (Immersive Landscape).
 */
class PS2EmulatorActivity : AppCompatActivity() {

    companion object {
        const val EXTRA_GAME_URI = "extra_game_uri"
        const val EXTRA_BIOS_PATH = "extra_bios_path"
        const val EXTRA_ASPECT_RATIO = "extra_aspect_ratio"
        const val EXTRA_FAST_BOOT = "extra_fast_boot"
    }

    private val ps2Bridge = PS2CoreBridge()
    private lateinit var prefs: PreferencesManager
    private lateinit var memcardManager: MemcardManager

    private lateinit var glSurfaceView: GLSurfaceView
    private lateinit var renderer: PS2GameRenderer
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

    private var isPaused = false
    private var isTurbo = false
    private var currentSlot = 0
    private var isHudVisible = true

    private var touchMask: Int = 0
    private var physicalMask: Int = 0
    private var currentLX: Int = PS2PadConstants.ANALOG_NEUTRAL
    private var currentLY: Int = PS2PadConstants.ANALOG_NEUTRAL
    private var currentRX: Int = PS2PadConstants.ANALOG_NEUTRAL
    private var currentRY: Int = PS2PadConstants.ANALOG_NEUTRAL

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Giữ sáng màn hình và bật chế độ toàn màn hình không viền
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        WindowCompat.setDecorFitsSystemWindows(window, false)
        hideSystemBars()

        setContentView(R.layout.activity_ps2_emulator)

        prefs = PreferencesManager(this)
        memcardManager = MemcardManager(this)

        val aspectRatio = intent?.getStringExtra(EXTRA_ASPECT_RATIO) ?: prefs.aspectRatio
        val biosPath = intent?.getStringExtra(EXTRA_BIOS_PATH)
        val gameUriStr = intent?.getStringExtra(EXTRA_GAME_URI)

        val isWidescreen = (aspectRatio == "16:9") || prefs.isWidescreenPatchEnabled
        setupViews(isWidescreen)
        initEmulatorCore(biosPath)
        applyAllCoreSettings()

        // Khởi chạy game từ Intent Extras (từ HomeActivity) hoặc Intent.data ngoài
        if (!gameUriStr.isNullOrEmpty()) {
            loadGameFromUri(Uri.parse(gameUriStr))
        } else {
            intent?.data?.let { uri ->
                loadGameFromUri(uri)
            }
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

    private fun setupViews(isWidescreen: Boolean) {
        glSurfaceView = findViewById(R.id.glSurfaceView)
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

        renderer = PS2GameRenderer(640, 448, isWidescreen)
        glSurfaceView.setEGLContextClientVersion(3)
        glSurfaceView.setRenderer(renderer)
        glSurfaceView.renderMode = GLSurfaceView.RENDERMODE_CONTINUOUSLY

        // OSD FPS callback
        renderer.onFpsUpdate = { fps, vps ->
            runOnUiThread {
                if (prefs.isOsdFpsEnabled) {
                    val speed = if (vps > 0f) (fps / 59.94f * 100f) else 100f
                    tvOsdFps.visibility = View.VISIBLE
                    tvOsdFps.text = String.format("FPS: %.1f | VPS: %.1f (%.0f%%)", fps, vps, speed)
                } else {
                    tvOsdFps.visibility = View.GONE
                }
            }
        }

        // Lắng nghe sự kiện từ On-screen Virtual Controller
        touchControllerView.onPadStateChanged = { mask, lx, ly, rx, ry ->
            touchMask = mask
            currentLX = lx
            currentLY = ly
            currentRX = rx
            currentRY = ry
            dispatchMergedInput()
        }

        // Collapse / Expand HUD bar
        btnCollapseHud.setOnClickListener {
            isHudVisible = !isHudVisible
            topBar.visibility = if (isHudVisible) View.VISIBLE else View.GONE
            btnCollapseHud.text = if (isHudVisible) "▲ Ẩn menu" else "▼ Hiện menu"
        }

        // Turbo 200%
        btnTurbo.setOnClickListener {
            isTurbo = !isTurbo
            ps2Bridge.setTurbo(isTurbo)
            btnTurbo.text = if (isTurbo) "⚡ 200%" else getString(R.string.hud_turbo)
            Toast.makeText(this, if (isTurbo) "Đã bật chế độ Turbo (200% tốc độ)" else "Đã tắt Turbo (100%)", Toast.LENGTH_SHORT).show()
        }

        // Pause / Resume
        btnPause.setOnClickListener {
            isPaused = !isPaused
            if (isPaused) {
                ps2Bridge.pause()
                glSurfaceView.onPause()
                btnPause.text = getString(R.string.hud_resume)
                Toast.makeText(this, "Đã tạm dừng giả lập", Toast.LENGTH_SHORT).show()
            } else {
                glSurfaceView.onResume()
                ps2Bridge.resume()
                btnPause.text = getString(R.string.hud_pause)
                Toast.makeText(this, "Tiếp tục chạy game", Toast.LENGTH_SHORT).show()
            }
        }

        // Slot Savestate 0-9
        btnStateSlot.setOnClickListener {
            currentSlot = (currentSlot + 1) % 10
            btnStateSlot.text = "Slot $currentSlot"
            Toast.makeText(this, "Đã chọn Savestate Slot $currentSlot", Toast.LENGTH_SHORT).show()
        }

        // Save State
        btnSaveState.setOnClickListener {
            val ok = ps2Bridge.saveState(currentSlot)
            Toast.makeText(this, if (ok) "Đã lưu trạng thái (Slot $currentSlot)" else "Lưu trạng thái thất bại", Toast.LENGTH_SHORT).show()
        }

        // Load State
        btnLoadState.setOnClickListener {
            val ok = ps2Bridge.loadState(currentSlot)
            Toast.makeText(this, if (ok) "Đã nạp trạng thái (Slot $currentSlot)" else "Chưa có bản lưu ở Slot $currentSlot", Toast.LENGTH_SHORT).show()
        }

        // Screenshot
        btnScreenshot.setOnClickListener {
            val screenshotsDir = File(getExternalFilesDir(null), "screenshots").apply { mkdirs() }
            val file = File(screenshotsDir, "ps2_snap_${System.currentTimeMillis()}.png")
            val ok = ps2Bridge.captureScreenshot(file.absolutePath)
            Toast.makeText(this, if (ok) "Đã chụp ảnh màn hình: ${file.name}" else "Lưu ảnh màn hình thất bại", Toast.LENGTH_SHORT).show()
        }

        // In-game Settings
        btnSettings.setOnClickListener {
            PS2SettingsDialog(this) {
                applyAllCoreSettings()
                Toast.makeText(this, "Đã cập nhật cài đặt PCSX2!", Toast.LENGTH_SHORT).show()
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

    private fun applyAllCoreSettings() {
        memcardManager.ensureMemcardsExist()
        ps2Bridge.setMemcards(
            memcardManager.card1File.absolutePath,
            memcardManager.card2File.absolutePath
        )

        ps2Bridge.setGraphicsConfig(
            upscale = prefs.resolutionScale.toFloat(),
            fxaa = prefs.isFxaaEnabled,
            casSharpness = prefs.casSharpness,
            anisotropic = prefs.anisotropicFiltering
        )

        ps2Bridge.setSpeedhacks(
            mtvu = prefs.isMtvuEnabled,
            fastCdvd = prefs.isFastCdvdEnabled,
            eeCycleRate = prefs.eeCycleRate,
            eeCycleSkip = prefs.eeCycleSkip
        )

        ps2Bridge.setPatches(
            widescreen = prefs.isWidescreenPatchEnabled,
            noInterlace = prefs.isNoInterlaceEnabled,
            cheats = prefs.isCheatsEnabled,
            gamefixes = prefs.isGameFixesEnabled
        )

        ps2Bridge.setAudioConfig(
            volume = prefs.audioVolume,
            timeStretch = prefs.isTimeStretchEnabled,
            mute = prefs.isAudioMuted
        )

        touchControllerView.opacityFactor = prefs.controllerOpacity / 100f
        touchControllerView.enableHaptic = prefs.isHapticEnabled

        val widescreen = (prefs.aspectRatio == "16:9") || prefs.isWidescreenPatchEnabled
        renderer.aspectRatioMode = if (widescreen) "16:9" else "4:3"

        tvOsdFps.visibility = if (prefs.isOsdFpsEnabled) View.VISIBLE else View.GONE
    }

    private fun initEmulatorCore(customBiosPath: String? = null) {
        val internalDir = File(filesDir, "ps2_data").apply { mkdirs() }.absolutePath
        val biosDir = if (customBiosPath != null) {
            val f = File(customBiosPath)
            if (f.isFile) f.parentFile?.absolutePath ?: f.absolutePath else f.absolutePath
        } else {
            File(filesDir, "bios").apply { mkdirs() }.absolutePath
        }
        ps2Bridge.initEmulator(internalDir, biosDir)
    }

    private fun loadGameFromUri(uri: Uri) {
        val path = uri.toString()
        val success = ps2Bridge.loadGame(path)
        if (success) {
            Toast.makeText(this, "Đang khởi chạy game PS2...", Toast.LENGTH_SHORT).show()
        } else {
            Toast.makeText(this, "Đã nạp file: ${uri.lastPathSegment}", Toast.LENGTH_SHORT).show()
        }
    }

    private fun dispatchMergedInput() {
        val totalMask = touchMask or physicalMask
        ps2Bridge.updatePadState(totalMask, currentLX, currentLY, currentRX, currentRY)
    }

    // -------------------------------------------------------------
    // Hỗ trợ tay cầm vật lý (Bluetooth / USB Controller)
    // -------------------------------------------------------------

    override fun dispatchKeyEvent(event: KeyEvent): Boolean {
        if ((event.source and InputDevice.SOURCE_GAMEPAD) == InputDevice.SOURCE_GAMEPAD ||
            (event.source and InputDevice.SOURCE_JOYSTICK) == InputDevice.SOURCE_JOYSTICK) {

            val mask = mapKeyCodeToPS2Mask(event.keyCode)
            if (mask != 0) {
                if (event.action == KeyEvent.ACTION_DOWN) {
                    physicalMask = physicalMask or mask
                } else if (event.action == KeyEvent.ACTION_UP) {
                    physicalMask = physicalMask and mask.inv()
                }
                dispatchMergedInput()
                return true
            }
        }
        return super.dispatchKeyEvent(event)
    }

    override fun onGenericMotionEvent(event: MotionEvent): Boolean {
        if ((event.source and InputDevice.SOURCE_JOYSTICK) == InputDevice.SOURCE_JOYSTICK &&
            event.action == MotionEvent.ACTION_MOVE) {

            val lx = event.getAxisValue(MotionEvent.AXIS_X)
            val ly = event.getAxisValue(MotionEvent.AXIS_Y)
            val rx = event.getAxisValue(MotionEvent.AXIS_Z)
            val ry = event.getAxisValue(MotionEvent.AXIS_RZ)

            currentLX = (128 + lx * 127).toInt().coerceIn(0, 255)
            currentLY = (128 + ly * 127).toInt().coerceIn(0, 255)
            currentRX = (128 + rx * 127).toInt().coerceIn(0, 255)
            currentRY = (128 + ry * 127).toInt().coerceIn(0, 255)

            dispatchMergedInput()
            return true
        }
        return super.onGenericMotionEvent(event)
    }

    private fun mapKeyCodeToPS2Mask(keyCode: Int): Int {
        return when (keyCode) {
            KeyEvent.KEYCODE_BUTTON_A -> PS2PadConstants.BTN_CROSS
            KeyEvent.KEYCODE_BUTTON_B -> PS2PadConstants.BTN_CIRCLE
            KeyEvent.KEYCODE_BUTTON_X -> PS2PadConstants.BTN_SQUARE
            KeyEvent.KEYCODE_BUTTON_Y -> PS2PadConstants.BTN_TRIANGLE
            KeyEvent.KEYCODE_BUTTON_L1 -> PS2PadConstants.BTN_L1
            KeyEvent.KEYCODE_BUTTON_R1 -> PS2PadConstants.BTN_R1
            KeyEvent.KEYCODE_BUTTON_L2 -> PS2PadConstants.BTN_L2
            KeyEvent.KEYCODE_BUTTON_R2 -> PS2PadConstants.BTN_R2
            KeyEvent.KEYCODE_BUTTON_THUMBL -> PS2PadConstants.BTN_L3
            KeyEvent.KEYCODE_BUTTON_THUMBR -> PS2PadConstants.BTN_R3
            KeyEvent.KEYCODE_BUTTON_START -> PS2PadConstants.BTN_START
            KeyEvent.KEYCODE_BUTTON_SELECT -> PS2PadConstants.BTN_SELECT
            KeyEvent.KEYCODE_DPAD_UP -> PS2PadConstants.BTN_UP
            KeyEvent.KEYCODE_DPAD_DOWN -> PS2PadConstants.BTN_DOWN
            KeyEvent.KEYCODE_DPAD_LEFT -> PS2PadConstants.BTN_LEFT
            KeyEvent.KEYCODE_DPAD_RIGHT -> PS2PadConstants.BTN_RIGHT
            else -> 0
        }
    }

    override fun onPause() {
        super.onPause()
        glSurfaceView.onPause()
        ps2Bridge.pause()
    }

    override fun onResume() {
        super.onResume()
        if (!isPaused) {
            glSurfaceView.onResume()
            ps2Bridge.resume()
        }
        hideSystemBars()
        applyAllCoreSettings()
    }

    override fun onDestroy() {
        super.onDestroy()
        ps2Bridge.release()
    }
}
