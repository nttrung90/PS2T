package xyz.aethersx2.android

import android.content.Context
import android.graphics.Bitmap
import android.os.Build
import android.os.Vibrator
import android.util.Log
import android.view.Surface
import java.io.File

object NativeLibrary {
    private const val TAG = "NativeLibrary"

    const val DISPLAY_ALIGNMENT_TOP_OR_LEFT = 0
    const val DISPLAY_ALIGNMENT_CENTER = 1
    const val DISPLAY_ALIGNMENT_RIGHT_OR_BOTTOM = 2

    const val LIMITER_MODE_NOMINAL = 0
    const val LIMITER_MODE_TURBO = 1
    const val LIMITER_MODE_SLOWMO = 2
    const val LIMITER_MODE_UNLIMITED = 3

    const val PAD_VIBRATION_CAPABILITIES_NO_VIBRATION = 0
    const val PAD_VIBRATION_CAPABILITIES_LARGE_SMALL_MOTORS = 1
    const val PAD_VIBRATION_CAPABILITIES_SINGLE_MOTOR = 2

    // PS2 DualShock 2 Button IDs in libemucore
    const val PAD_CROSS = 0
    const val PAD_SQUARE = 1
    const val PAD_CIRCLE = 2
    const val PAD_TRIANGLE = 3
    const val PAD_DPAD_LEFT = 4
    const val PAD_DPAD_RIGHT = 5
    const val PAD_DPAD_UP = 6
    const val PAD_DPAD_DOWN = 7
    const val PAD_L1 = 8
    const val PAD_L2 = 9
    const val PAD_R1 = 10
    const val PAD_R2 = 11
    const val PAD_START = 12
    const val PAD_SELECT = 13
    const val PAD_L3 = 14
    const val PAD_R3 = 15
    const val PAD_L_AXIS_X = 16
    const val PAD_L_AXIS_Y = 17
    const val PAD_R_AXIS_X = 18
    const val PAD_R_AXIS_Y = 19

    class InputDeviceInfo {
        @JvmField var descriptor: String? = null
        @JvmField var vibratorManager: Any? = null
        @JvmField var vibrators: Array<Vibrator>? = null
    }

    private var isLibraryLoaded = false
    private var mInitialized = false
    private var mDataDirectory: String = ""
    private var mEmulationRunning = false

    var mEmulationActivity: androidx.appcompat.app.AppCompatActivity? = null
    var mEmulationThread: Thread? = null
    var onErrorListener: ((title: String, message: String) -> Unit)? = null
    var onGameChangedListener: ((path: String, serial: String, title: String, crc: Int) -> Unit)? = null
    var onPauseMenuRequested: (() -> Unit)? = null
    var onVMStartingListener: (() -> Unit)? = null
    var onVMStartedListener: (() -> Unit)? = null

    init {
        try {
            System.loadLibrary("emucore")
            isLibraryLoaded = true
            Log.i(TAG, "libemucore.so loaded successfully!")
        } catch (e: Throwable) {
            isLibraryLoaded = false
            Log.e(TAG, "Failed to load libemucore.so: ${e.message}", e)
        }
    }

    // --- Native Methods ---
    @JvmStatic
    external fun initialize(
        context: Context,
        dataDir: String,
        cacheDir: String,
        deviceName: String
    ): Boolean

    @JvmStatic
    external fun runVMThread(
        context: Context,
        bootPath: String,
        saveStatePath: String?
    )

    @JvmStatic
    external fun stopVMThreadLoop(wait: Boolean)

    @JvmStatic
    external fun pauseVM(paused: Boolean)

    @JvmStatic
    external fun resetVM()

    @JvmStatic
    external fun isVMPaused(): Boolean

    @JvmStatic
    external fun changeSurface(
        surface: Surface?,
        width: Int,
        height: Int,
        refreshRate: Float
    )

    @JvmStatic
    external fun hasValidRenderSurface(): Boolean

    @JvmStatic
    external fun changeDisc(path: String)

    @JvmStatic
    external fun setPadValue(padIndex: Int, buttonId: Int, value: Float)

    @JvmStatic
    external fun setPadMacroState(padIndex: Int, macroId: Int, pressed: Boolean)

    @JvmStatic
    external fun setUSBDeviceBind(deviceIndex: Int, buttonId: Int, value: Float)

    @JvmStatic
    external fun handleControllerButtonEvent(deviceId: Int, keyCode: Int, pressed: Boolean)

    @JvmStatic
    external fun handleControllerAxisEvent(deviceId: Int, axisId: Int, value: Float)

    @JvmStatic
    external fun handlePointerEvent(pointerId: Int, x: Float, y: Float)

    @JvmStatic
    external fun hasAnyBindingsForControllerButton(deviceId: Int, keyCode: Int): Boolean

    @JvmStatic
    external fun saveStateSlot(slot: Int)

    @JvmStatic
    external fun loadStateSlot(slot: Int)

    @JvmStatic
    external fun waitForSaveStateFlush()

    @JvmStatic
    external fun readSaveStateScreenshot(path: String): Bitmap?

    @JvmStatic
    external fun saveSingleFrameGSDump()

    @JvmStatic
    external fun isBIOSAvailable(): Boolean

    @JvmStatic
    external fun getBIOSDescription(path: String): String?

    @JvmStatic
    external fun lookupGameNameBySerial(serial: String): String?

    @JvmStatic
    external fun getGameListEntries(): Array<GameListEntry>?

    @JvmStatic
    external fun getGameListEntry(path: String): GameListEntry?

    @JvmStatic
    external fun refreshGameList(
        searchSubdirs: Boolean,
        updateCrc: Boolean,
        callback: AndroidProgressCallback?
    )

    @JvmStatic
    external fun applySettings()

    @JvmStatic
    external fun reloadGameSettings()

    @JvmStatic
    external fun reloadPatches()

    @JvmStatic
    external fun setDefaultSettings(optimal: Boolean)

    @JvmStatic
    external fun setDefaultSettingsForGame(serial: String, optimal: Boolean): Boolean

    @JvmStatic
    external fun setDefaultPadSettings()

    @JvmStatic
    external fun setDisplayAlignment(alignment: Int)

    @JvmStatic
    external fun toggleLimiterMode(mode: Int)

    @JvmStatic
    external fun toggleSoftwareRenderer()

    @JvmStatic
    external fun getBooleanSettingValue(section: String, key: String, defaultValue: Boolean): Boolean

    @JvmStatic
    external fun getIntSettingValue(section: String, key: String, defaultValue: Int): Int

    @JvmStatic
    external fun getFloatSettingValue(section: String, key: String, defaultValue: Float): Float

    @JvmStatic
    external fun getStringSettingValue(section: String, key: String, defaultValue: String?): String?

    @JvmStatic
    external fun addOSDMessage(message: String, duration: Float)

    @JvmStatic
    external fun addKeyedOSDMessage(key: String, message: String, duration: Float)

    @JvmStatic
    external fun createMemoryCard(name: String, sizeMb: Int, type: Int): Boolean

    @JvmStatic
    external fun getAvailableMemoryCards(refresh: Boolean): Array<MemoryCardInfo>?

    @JvmStatic
    external fun getMemoryCardInfo(path: String): MemoryCardInfo?

    @JvmStatic
    external fun getPadBinds(profile: String, isPad2: Boolean): Array<InputBindingInfo>?

    @JvmStatic
    external fun getPadSettings(profile: String): Array<SettingInfo>?

    @JvmStatic
    external fun getPadVibrationCapabilities(profile: String): Int

    @JvmStatic
    external fun getUSBDeviceNames(refresh: Boolean): Array<String>?

    @JvmStatic
    external fun getUSBDeviceDisplayName(device: String): String?

    @JvmStatic
    external fun getUSBDeviceSubtypes(device: String): Array<String>?

    @JvmStatic
    external fun getUSBDeviceSettings(device: String, subtype: Int): Array<SettingInfo>?

    @JvmStatic
    external fun getUSBDeviceBinds(device: String, subtype: Int, isPort2: Boolean): Array<InputBindingInfo>?

    @JvmStatic
    external fun setInputDevices(devices: Array<InputDeviceInfo>?)

    @JvmStatic
    external fun getHotkeyInfoList(): Array<HotkeyInfo>?

    @JvmStatic
    external fun getScmVersion(): String?

    @JvmStatic
    external fun getFullScmVersion(): String?

    @JvmStatic
    external fun getDriverInfo(): String?

    @JvmStatic
    external fun getCurrentSessionTime(): Long

    // --- Callbacks invoked by C++ libemucore.so ---
    @JvmStatic
    @Synchronized
    fun onVMStarting() {
        Log.i(TAG, "onVMStarting called from native core")
        val act = mEmulationActivity
        if (act != null) {
            act.runOnUiThread {
                onVMStartingListener?.invoke()
            }
            synchronized(act) {
                try {
                    (act as java.lang.Object).notifyAll()
                } catch (e: Exception) {
                    Log.w(TAG, "Failed to notify emulation activity in onVMStarting", e)
                }
            }
        } else {
            onVMStartingListener?.invoke()
        }
    }

    @JvmStatic
    @Synchronized
    fun onVMStarted() {
        Log.i(TAG, "onVMStarted called from native core")
        val act = mEmulationActivity
        if (act != null) {
            act.runOnUiThread {
                onVMStartedListener?.invoke()
            }
        } else {
            onVMStartedListener?.invoke()
        }
    }

    @JvmStatic
    @Synchronized
    fun onGameChanged(path: String?, serial: String?, title: String?, crc: Int) {
        val p = path ?: ""
        val s = serial ?: ""
        val t = title ?: ""
        Log.i(TAG, "onGameChanged: path=$p, serial=$s, title=$t, crc=0x${Integer.toHexString(crc)}")
        val act = mEmulationActivity
        if (act != null) {
            act.runOnUiThread {
                onGameChangedListener?.invoke(p, s, t, crc)
            }
        } else {
            onGameChangedListener?.invoke(p, s, t, crc)
        }
    }

    @JvmStatic
    @Synchronized
    fun showPauseMenu() {
        Log.i(TAG, "showPauseMenu requested by native core")
        val act = mEmulationActivity
        if (act != null) {
            act.runOnUiThread {
                onPauseMenuRequested?.invoke()
            }
        } else {
            onPauseMenuRequested?.invoke()
        }
    }

    @JvmStatic
    @Synchronized
    fun closePauseMenu() {
        Log.i(TAG, "closePauseMenu requested by native core")
    }

    @JvmStatic
    @Synchronized
    fun reportErrorAsync(title: String?, message: String?) {
        Log.e(TAG, "reportErrorAsync: title=$title, message=$message")
        val t = title ?: "Lỗi giả lập"
        val m = message ?: "Đã xảy ra sự cố trong quá trình khởi tạo Virtual Machine."
        val act = mEmulationActivity
        if (act != null) {
            act.runOnUiThread {
                onErrorListener?.invoke(t, m)
            }
        } else {
            onErrorListener?.invoke(t, m)
        }
    }

    @JvmStatic
    @Synchronized
    fun setVibratorIntensity(vibrator: Vibrator?, intensity: Int) {
        try {
            if (vibrator != null && vibrator.hasVibrator()) {
                if (intensity > 0) {
                    vibrator.vibrate(50)
                } else {
                    vibrator.cancel()
                }
            }
        } catch (_: Exception) {}
    }

    @JvmStatic
    @Synchronized
    fun setManagedVibratorIntensity(
        manager: Any?,
        largeMotor: Vibrator?,
        largeIntensity: Int,
        smallMotor: Vibrator?,
        smallIntensity: Int
    ) {
        setVibratorIntensity(largeMotor, largeIntensity)
        setVibratorIntensity(smallMotor, smallIntensity)
    }

    @JvmStatic
    @Synchronized
    fun playSoundAsync(sound: String?): Boolean {
        Log.d(TAG, "playSoundAsync: $sound")
        return true
    }

    private var mContext: Context? = null

    @JvmStatic
    @Synchronized
    fun getContext(): Context? = mEmulationActivity ?: mContext

    @JvmStatic
    @Synchronized
    fun getEmulationActivity(): androidx.appcompat.app.AppCompatActivity? = mEmulationActivity

    @JvmStatic
    @Synchronized
    fun hasEmulationThread(): Boolean {
        return mEmulationThread != null && mEmulationThread?.isAlive == true
    }

    @JvmStatic
    @Synchronized
    fun startEmulationThread(
        activity: androidx.appcompat.app.AppCompatActivity,
        bootPath: String,
        saveStatePath: String?
    ) {
        if (hasEmulationThread()) {
            Log.w(TAG, "Emulation thread already running!")
            return
        }

        mEmulationActivity = activity
        Log.i(TAG, "Starting emulation thread for: $bootPath")

        val thread = Thread({
            try {
                try {
                    android.os.Process.setThreadPriority(android.os.Process.THREAD_PRIORITY_URGENT_DISPLAY)
                } catch (pe: Exception) {
                    Log.w(TAG, "Failed to set thread priority", pe)
                }
                setEmulationRunning(true)
                runVMThread(activity, bootPath, saveStatePath)
            } catch (e: Throwable) {
                Log.e(TAG, "Exception inside runVMThread", e)
                reportErrorAsync("Lỗi CPU VM", e.localizedMessage ?: e.toString())
            } finally {
                setEmulationRunning(false)
                Log.i(TAG, "Emulation thread finished.")
                val act = mEmulationActivity
                if (act != null) {
                    synchronized(act) {
                        try {
                            (act as java.lang.Object).notify()
                        } catch (_: Exception) {}
                    }
                }
            }
        }, "EmulationThread").apply {
            priority = Thread.MAX_PRIORITY
            start()
        }
        mEmulationThread = thread
    }

    @JvmStatic
    @Synchronized
    fun stopEmulationThread(wait: Boolean) {
        val thread = mEmulationThread ?: return
        Log.i(TAG, "Stopping emulation thread...")
        try {
            stopVMThreadLoop(wait)
            if (wait) {
                thread.join(2500)
            }
        } catch (e: Exception) {
            Log.w(TAG, "Error waiting for emulation thread to stop", e)
        } finally {
            mEmulationThread = null
            mEmulationActivity = null
            setEmulationRunning(false)
        }
    }

    @JvmStatic
    fun importBIOS(context: Context, uri: android.net.Uri): Boolean {
        return try {
            val baos = java.io.ByteArrayOutputStream()
            context.contentResolver.openInputStream(uri)?.use { input ->
                val buf = ByteArray(512 * 1024)
                var read: Int
                while (input.read(buf).also { read = it } > 0) {
                    baos.write(buf, 0, read)
                    if (baos.size() > 8 * 1024 * 1024) {
                        throw java.io.IOException("BIOS image too large (max 8MB)")
                    }
                }
            } ?: return false

            val bytes = baos.toByteArray()
            if (bytes.size < 1024 * 1024) {
                Log.e(TAG, "File BIOS quá nhỏ (${bytes.size} bytes), không phải BIOS PS2 hợp lệ!")
                return false
            }

            val crc32 = java.util.zip.CRC32()
            crc32.update(bytes)
            val crcHex = String.format("%08X.bin", crc32.value)

            var originalName: String? = null
            try {
                val cursor = context.contentResolver.query(uri, null, null, null, null)
                cursor?.use {
                    if (it.moveToFirst()) {
                        val idx = it.getColumnIndex(android.provider.OpenableColumns.DISPLAY_NAME)
                        if (idx >= 0) originalName = it.getString(idx)
                    }
                }
            } catch (_: Exception) {}

            // Lưu vào thư mục bios nội bộ (internal) để đảm bảo POSIX I/O không bị giới hạn
            val internalBiosDir = File(context.filesDir, "bios").apply { mkdirs() }
            val internalCrcFile = File(internalBiosDir, crcHex)
            internalCrcFile.writeBytes(bytes)

            if (!originalName.isNullOrEmpty() && originalName != crcHex) {
                try {
                    File(internalBiosDir, originalName!!).writeBytes(bytes)
                } catch (_: Exception) {}
            }

            // Đồng thời sao chép sang thư mục externalFilesDir nếu có
            context.getExternalFilesDir(null)?.let { ext ->
                val extBiosDir = File(ext, "bios").apply { mkdirs() }
                try {
                    File(extBiosDir, crcHex).writeBytes(bytes)
                    if (!originalName.isNullOrEmpty() && originalName != crcHex) {
                        File(extBiosDir, originalName!!).writeBytes(bytes)
                    }
                } catch (_: Exception) {}
            }

            // Kiểm tra tính hợp lệ bằng lõi native getBIOSDescription
            val desc = getBIOSDescription(internalCrcFile.absolutePath)
            if (desc.isNullOrEmpty()) {
                Log.e(TAG, "Lõi NetherSX2 không nhận diện được BIOS: ${internalCrcFile.absolutePath}")
                internalCrcFile.delete()
                return false
            }

            // Lưu cấu hình Folders/Bios và Filenames/BIOS vào SharedPreferences chuẩn
            androidx.preference.PreferenceManager.getDefaultSharedPreferences(context)
                .edit()
                .putString("Folders/Bios", internalBiosDir.absolutePath)
                .putString("Filenames/BIOS", internalCrcFile.name)
                .commit()

            applySettings()
            Log.i(TAG, "Đã nhập thành công BIOS PS2: $desc ($crcHex)")
            true
        } catch (e: Exception) {
            Log.e(TAG, "Lỗi khi nhập BIOS", e)
            false
        }
    }

    @JvmStatic
    fun readPackageFile(context: Context, path: String): ByteArray? {
        return try {
            context.assets.open(path, android.content.res.AssetManager.ACCESS_BUFFER).use { input ->
                input.readBytes()
            }
        } catch (e: Exception) {
            Log.e(TAG, "readPackageFile failed for $path", e)
            null
        }
    }

    @JvmStatic
    fun readPackageFile(path: String): ByteArray? {
        val ctx = mContext ?: return null
        return readPackageFile(ctx, path)
    }

    @JvmStatic
    fun readPackageFileToString(context: Context, path: String): String? {
        val bytes = readPackageFile(context, path) ?: return null
        return String(bytes, Charsets.UTF_8)
    }

    @JvmStatic
    fun readPackageFileToString(path: String): String? {
        val bytes = readPackageFile(path) ?: return null
        return String(bytes, Charsets.UTF_8)
    }

    // --- Public Utility Methods ---
    @Synchronized
    fun initializeOnce(context: Context, refresh: Boolean = false): Boolean {
        mContext = context.applicationContext
        if (mInitialized) return true
        if (!isLibraryLoaded) {
            Log.w(TAG, "Cannot initialize NativeLibrary: libemucore.so is not loaded!")
            return false
        }

        // Ưu tiên filesDir nội bộ để native POSIX open/stat/mmap luôn hoạt động trơn tru không bị Scoped Storage chặn
        val internalBase = context.filesDir
        val externalBase = context.getExternalFilesDir(null)
        mDataDirectory = internalBase.absolutePath

        // Đảm bảo các thư mục cần thiết đều tồn tại trên cả bộ nhớ trong và ngoài
        listOf("bios", "memcards", "sstates", "covers", "gamesettings", "cheats", "textures").forEach { folder ->
            File(internalBase, folder).mkdirs()
            if (externalBase != null) {
                File(externalBase, folder).mkdirs()
            }
        }

        // Tự động đồng bộ hóa các tệp BIOS từ external sang internal nếu có
        if (externalBase != null) {
            val extBiosDir = File(externalBase, "bios")
            val intBiosDir = File(internalBase, "bios")
            if (extBiosDir.exists()) {
                extBiosDir.listFiles()?.forEach { file ->
                    val target = File(intBiosDir, file.name)
                    if (!target.exists() && file.length() > 0) {
                        try { file.copyTo(target) } catch (_: Exception) {}
                    }
                }
            }
        }

        // Cấu hình rõ ràng các thư mục Folders/* vào SharedPreferences cho NetherSX2 Core
        val defaultPrefs = androidx.preference.PreferenceManager.getDefaultSharedPreferences(context)
        defaultPrefs.edit()
            .putString("Folders/Bios", File(internalBase, "bios").absolutePath)
            .putString("Folders/MemoryCards", File(internalBase, "memcards").absolutePath)
            .putString("Folders/Savestates", File(internalBase, "sstates").absolutePath)
            .putString("Folders/Cheats", File(internalBase, "cheats").absolutePath)
            .putString("Folders/GameSettings", File(internalBase, "gamesettings").absolutePath)
            .putString("Folders/Covers", File(internalBase, "covers").absolutePath)
            .putString("Folders/Textures", File(internalBase, "textures").absolutePath)
            .commit()

        val cacheDir = File(context.cacheDir, "xyz.aethersx2.android").apply { mkdirs() }.absolutePath
        val deviceName = "${Build.MANUFACTURER} ${Build.DEVICE}"

        Log.i(TAG, "Initializing NativeLibrary: dataDir=$mDataDirectory, cacheDir=$cacheDir, device=$deviceName")
        try {
            mInitialized = initialize(context, mDataDirectory, cacheDir, deviceName)
        } catch (t: Throwable) {
            Log.e(TAG, "Error during NativeLibrary.initialize()", t)
            mInitialized = false
        }

        if (mInitialized) {
            Log.i(TAG, "NativeLibrary initialized successfully!")
            if (refresh) {
                try {
                    refreshGameList(false, false, null)
                } catch (e: Exception) {
                    Log.w(TAG, "Failed initial refreshGameList", e)
                }
            }
        } else {
            Log.e(TAG, "NativeLibrary.initialize returned false")
        }

        return mInitialized
    }

    fun isLibraryLoaded(): Boolean = isLibraryLoaded
    fun getDataDirectory(): String = if (mDataDirectory.isNotEmpty()) mDataDirectory else (mContext?.filesDir?.absolutePath ?: "")
    fun isInitialized(): Boolean = mInitialized
    fun isEmulationRunning(): Boolean = mEmulationRunning
    fun setEmulationRunning(running: Boolean) {
        mEmulationRunning = running
    }
}
