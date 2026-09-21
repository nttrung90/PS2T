package com.ps2t.emulator.core

import android.content.Context
import android.content.SharedPreferences

/**
 * Quản lý lưu trữ toàn bộ cấu hình giả lập PCSX2 trên Android:
 * - BIOS & Game
 * - Đồ họa (GS): Renderer, Upscaling, FXAA, CAS Sharpness, Anisotropic, ShadeBoost, OSD FPS
 * - Hiệu năng (Speedhacks): MTVU, Fast CDVD, EE Cycle Rate, Cycle Skip, Turbo Speed
 * - Bản vá & Cheats: Widescreen Patches 16:9, No-Interlacing, Cheats, GameFixes
 * - Âm thanh (SPU2): Volume, TimeStretch, Mute
 * - Thẻ nhớ & Savestates: Slot 0..9
 * - Nút bấm ảo: Opacity, Haptic Feedback
 */
class PreferencesManager(context: Context) {

    private val prefs: SharedPreferences =
        context.getSharedPreferences("ps2t_emulator_prefs", Context.MODE_PRIVATE)

    companion object {
        // BIOS & Game
        private const val KEY_BIOS_PATH = "selected_bios_path"
        private const val KEY_BIOS_NAME = "selected_bios_name"
        private const val KEY_LAST_GAME_URI = "last_game_uri"
        private const val KEY_LAST_GAME_TITLE = "last_game_title"

        // Đồ họa (GS)
        private const val KEY_RENDERER = "graphics_renderer" // "opengl" or "vulkan"
        private const val KEY_ASPECT_RATIO = "aspect_ratio"   // "4:3", "16:9", "stretch"
        private const val KEY_RESOLUTION_SCALE = "resolution_scale" // 1, 2, 3, 4
        private const val KEY_ENABLE_FXAA = "enable_fxaa"
        private const val KEY_ANISOTROPIC = "anisotropic_filtering" // 0, 2, 4, 8, 16
        private const val KEY_CAS_SHARPNESS = "cas_sharpness" // 0..100
        private const val KEY_SHOW_OSD_FPS = "show_osd_fps"
        private const val KEY_SHADEBOOST_BRIGHTNESS = "shadeboost_brightness" // 0..100
        private const val KEY_SHADEBOOST_CONTRAST = "shadeboost_contrast" // 0..100

        // Hiệu năng & Speedhacks
        private const val KEY_FAST_BOOT = "fast_boot"
        private const val KEY_ENABLE_MTVU = "enable_mtvu" // Multi-threaded microVU1
        private const val KEY_ENABLE_FAST_CDVD = "enable_fast_cdvd"
        private const val KEY_EE_CYCLE_RATE = "ee_cycle_rate" // -3..3
        private const val KEY_EE_CYCLE_SKIP = "ee_cycle_skip" // 0..3
        private const val KEY_TURBO_SPEED = "turbo_speed" // 200..300%

        // Bản vá & Cheats
        private const val KEY_ENABLE_WIDESCREEN_PATCH = "enable_widescreen_patch"
        private const val KEY_ENABLE_NO_INTERLACE = "enable_no_interlace"
        private const val KEY_ENABLE_CHEATS = "enable_cheats"
        private const val KEY_ENABLE_GAMEFIXES = "enable_gamefixes"

        // Âm thanh (SPU2)
        private const val KEY_AUDIO_VOLUME = "audio_volume" // 0..100
        private const val KEY_AUDIO_TIME_STRETCH = "audio_time_stretch"
        private const val KEY_AUDIO_MUTED = "audio_muted"

        // Thẻ nhớ & Savestates
        private const val KEY_CURRENT_SAVE_SLOT = "current_save_slot" // 0..9

        // Nút ảo cảm ứng
        private const val KEY_CONTROLLER_OPACITY = "controller_opacity" // 20..100
        private const val KEY_ENABLE_HAPTIC = "enable_haptic"
    }

    // --- BIOS & Game ---
    var selectedBiosPath: String?
        get() = prefs.getString(KEY_BIOS_PATH, null)
        set(value) = prefs.edit().putString(KEY_BIOS_PATH, value).apply()

    var selectedBiosName: String?
        get() = prefs.getString(KEY_BIOS_NAME, null)
        set(value) = prefs.edit().putString(KEY_BIOS_NAME, value).apply()

    var lastGameUri: String?
        get() = prefs.getString(KEY_LAST_GAME_URI, null)
        set(value) = prefs.edit().putString(KEY_LAST_GAME_URI, value).apply()

    var lastGameTitle: String?
        get() = prefs.getString(KEY_LAST_GAME_TITLE, null)
        set(value) = prefs.edit().putString(KEY_LAST_GAME_TITLE, value).apply()

    // --- Đồ họa (GS) ---
    var renderer: String
        get() = prefs.getString(KEY_RENDERER, "opengl") ?: "opengl"
        set(value) = prefs.edit().putString(KEY_RENDERER, value).apply()

    var aspectRatio: String
        get() = prefs.getString(KEY_ASPECT_RATIO, "4:3") ?: "4:3"
        set(value) = prefs.edit().putString(KEY_ASPECT_RATIO, value).apply()

    var resolutionScale: Int
        get() = prefs.getInt(KEY_RESOLUTION_SCALE, 1)
        set(value) = prefs.edit().putInt(KEY_RESOLUTION_SCALE, value).apply()

    var isFxaaEnabled: Boolean
        get() = prefs.getBoolean(KEY_ENABLE_FXAA, false)
        set(value) = prefs.edit().putBoolean(KEY_ENABLE_FXAA, value).apply()

    var anisotropicFiltering: Int
        get() = prefs.getInt(KEY_ANISOTROPIC, 0)
        set(value) = prefs.edit().putInt(KEY_ANISOTROPIC, value).apply()

    var casSharpness: Int
        get() = prefs.getInt(KEY_CAS_SHARPNESS, 50)
        set(value) = prefs.edit().putInt(KEY_CAS_SHARPNESS, value).apply()

    var isOsdFpsEnabled: Boolean
        get() = prefs.getBoolean(KEY_SHOW_OSD_FPS, true)
        set(value) = prefs.edit().putBoolean(KEY_SHOW_OSD_FPS, value).apply()

    var shadeBoostBrightness: Int
        get() = prefs.getInt(KEY_SHADEBOOST_BRIGHTNESS, 50)
        set(value) = prefs.edit().putInt(KEY_SHADEBOOST_BRIGHTNESS, value).apply()

    var shadeBoostContrast: Int
        get() = prefs.getInt(KEY_SHADEBOOST_CONTRAST, 50)
        set(value) = prefs.edit().putInt(KEY_SHADEBOOST_CONTRAST, value).apply()

    // --- Hiệu năng & Speedhacks ---
    var isFastBoot: Boolean
        get() = prefs.getBoolean(KEY_FAST_BOOT, true)
        set(value) = prefs.edit().putBoolean(KEY_FAST_BOOT, value).apply()

    var isMtvuEnabled: Boolean
        get() = prefs.getBoolean(KEY_ENABLE_MTVU, true)
        set(value) = prefs.edit().putBoolean(KEY_ENABLE_MTVU, value).apply()

    var isFastCdvdEnabled: Boolean
        get() = prefs.getBoolean(KEY_ENABLE_FAST_CDVD, true)
        set(value) = prefs.edit().putBoolean(KEY_ENABLE_FAST_CDVD, value).apply()

    var eeCycleRate: Int
        get() = prefs.getInt(KEY_EE_CYCLE_RATE, 0)
        set(value) = prefs.edit().putInt(KEY_EE_CYCLE_RATE, value).apply()

    var eeCycleSkip: Int
        get() = prefs.getInt(KEY_EE_CYCLE_SKIP, 0)
        set(value) = prefs.edit().putInt(KEY_EE_CYCLE_SKIP, value).apply()

    var turboSpeed: Int
        get() = prefs.getInt(KEY_TURBO_SPEED, 200)
        set(value) = prefs.edit().putInt(KEY_TURBO_SPEED, value).apply()

    // --- Bản vá & Cheats ---
    var isWidescreenPatchEnabled: Boolean
        get() = prefs.getBoolean(KEY_ENABLE_WIDESCREEN_PATCH, true)
        set(value) = prefs.edit().putBoolean(KEY_ENABLE_WIDESCREEN_PATCH, value).apply()

    var isNoInterlaceEnabled: Boolean
        get() = prefs.getBoolean(KEY_ENABLE_NO_INTERLACE, true)
        set(value) = prefs.edit().putBoolean(KEY_ENABLE_NO_INTERLACE, value).apply()

    var isCheatsEnabled: Boolean
        get() = prefs.getBoolean(KEY_ENABLE_CHEATS, false)
        set(value) = prefs.edit().putBoolean(KEY_ENABLE_CHEATS, value).apply()

    var isGameFixesEnabled: Boolean
        get() = prefs.getBoolean(KEY_ENABLE_GAMEFIXES, true)
        set(value) = prefs.edit().putBoolean(KEY_ENABLE_GAMEFIXES, value).apply()

    // --- Âm thanh (SPU2) ---
    var audioVolume: Int
        get() = prefs.getInt(KEY_AUDIO_VOLUME, 100)
        set(value) = prefs.edit().putInt(KEY_AUDIO_VOLUME, value).apply()

    var isTimeStretchEnabled: Boolean
        get() = prefs.getBoolean(KEY_AUDIO_TIME_STRETCH, true)
        set(value) = prefs.edit().putBoolean(KEY_AUDIO_TIME_STRETCH, value).apply()

    var isAudioMuted: Boolean
        get() = prefs.getBoolean(KEY_AUDIO_MUTED, false)
        set(value) = prefs.edit().putBoolean(KEY_AUDIO_MUTED, value).apply()

    // --- Thẻ nhớ & Savestates ---
    var currentSaveSlot: Int
        get() = prefs.getInt(KEY_CURRENT_SAVE_SLOT, 0)
        set(value) = prefs.edit().putInt(KEY_CURRENT_SAVE_SLOT, value).apply()

    // --- Nút ảo cảm ứng ---
    var controllerOpacity: Int
        get() = prefs.getInt(KEY_CONTROLLER_OPACITY, 80) // 80% mặc định
        set(value) = prefs.edit().putInt(KEY_CONTROLLER_OPACITY, value).apply()

    var isHapticEnabled: Boolean
        get() = prefs.getBoolean(KEY_ENABLE_HAPTIC, true)
        set(value) = prefs.edit().putBoolean(KEY_ENABLE_HAPTIC, value).apply()
}
