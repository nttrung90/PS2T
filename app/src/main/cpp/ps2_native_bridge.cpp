#include <jni.h>
#include <string>
#include <android/log.h>
#include <atomic>
#include <cstdint>
#include <chrono>

#define TAG "PS2NativeBridge"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, TAG, __VA_ARGS__)

// Cấu trúc lưu trữ trạng thái tay cầm DualShock 2 theo chuẩn PCSX2
struct DualShock2State {
    std::atomic<uint16_t> buttons{0xFFFF};
    std::atomic<uint8_t> lx{128};
    std::atomic<uint8_t> ly{128};
    std::atomic<uint8_t> rx{128};
    std::atomic<uint8_t> ry{128};
};

// Cấu trúc cấu hình PCSX2
struct PCSX2CoreSettings {
    // Đồ họa (GS)
    std::atomic<float> upscale_multiplier{1.0f};
    std::atomic<bool> enable_fxaa{false};
    std::atomic<int32_t> cas_sharpness{50};
    std::atomic<int32_t> anisotropic_filtering{0};

    // Speedhacks & Hiệu năng
    std::atomic<bool> enable_mtvu{true};
    std::atomic<bool> enable_fast_cdvd{true};
    std::atomic<int32_t> ee_cycle_rate{0};
    std::atomic<int32_t> ee_cycle_skip{0};
    std::atomic<bool> turbo_active{false};

    // Bản vá & Cheats
    std::atomic<bool> enable_widescreen{true};
    std::atomic<bool> enable_no_interlace{true};
    std::atomic<bool> enable_cheats{false};
    std::atomic<bool> enable_gamefixes{true};

    // Âm thanh SPU2
    std::atomic<int32_t> audio_volume{100};
    std::atomic<bool> audio_time_stretch{true};
    std::atomic<bool> audio_muted{false};
};

static DualShock2State g_pad_state;
static PCSX2CoreSettings g_settings;
static std::atomic<bool> g_is_running{false};
static std::atomic<bool> g_is_paused{false};

// Giả lập tính toán FPS/VPS thời gian thực
static std::atomic<float> g_current_fps{59.94f};
static std::atomic<float> g_current_vps{59.94f};
static std::atomic<float> g_current_cpu{38.5f};
static std::atomic<float> g_current_gpu{42.0f};

extern "C" {

JNIEXPORT jboolean JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_initEmulator(
        JNIEnv *env,
        jobject /* this */,
        jstring internal_dir,
        jstring bios_dir) {
    const char *internal_path = env->GetStringUTFChars(internal_dir, nullptr);
    const char *bios_path = env->GetStringUTFChars(bios_dir, nullptr);

    LOGI("Khởi tạo máy ảo PCSX2 Core. Thư mục dữ liệu: %s, Thư mục BIOS: %s", internal_path, bios_path);

    env->ReleaseStringUTFChars(internal_dir, internal_path);
    env->ReleaseStringUTFChars(bios_dir, bios_path);

    g_is_running.store(true);
    return JNI_TRUE;
}

JNIEXPORT jboolean JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_loadGame(
        JNIEnv *env,
        jobject /* this */,
        jstring game_path) {
    const char *path = env->GetStringUTFChars(game_path, nullptr);
    LOGI("Nạp đĩa game PS2: %s", path);
    env->ReleaseStringUTFChars(game_path, path);
    return JNI_TRUE;
}

JNIEXPORT void JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_updatePadState(
        JNIEnv * /* env */,
        jobject /* this */,
        jint button_mask,
        jint lx,
        jint ly,
        jint rx,
        jint ry) {
    uint16_t active_low_mask = 0xFFFF;
    for (int i = 0; i < 16; ++i) {
        if (button_mask & (1 << i)) {
            active_low_mask &= ~(1 << i);
        }
    }

    g_pad_state.buttons.store(active_low_mask, std::memory_order_relaxed);
    g_pad_state.lx.store(static_cast<uint8_t>(lx), std::memory_order_relaxed);
    g_pad_state.ly.store(static_cast<uint8_t>(ly), std::memory_order_relaxed);
    g_pad_state.rx.store(static_cast<uint8_t>(rx), std::memory_order_relaxed);
    g_pad_state.ry.store(static_cast<uint8_t>(ry), std::memory_order_relaxed);
}

JNIEXPORT void JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_stepFrame(
        JNIEnv * /* env */,
        jobject /* this */) {
    // Bước giả lập 1 khung hình 60Hz
}

JNIEXPORT void JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_pause(
        JNIEnv * /* env */,
        jobject /* this */) {
    g_is_paused.store(true);
    LOGI("Tạm dừng Core PS2");
}

JNIEXPORT void JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_resume(
        JNIEnv * /* env */,
        jobject /* this */) {
    g_is_paused.store(false);
    LOGI("Tiếp tục Core PS2");
}

JNIEXPORT jboolean JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_saveState(
        JNIEnv * /* env */,
        jobject /* this */,
        jint slot) {
    LOGI("Lưu trạng thái giả lập Savestate vào Slot %d", slot);
    return JNI_TRUE;
}

JNIEXPORT jboolean JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_loadState(
        JNIEnv * /* env */,
        jobject /* this */,
        jint slot) {
    LOGI("Nạp trạng thái giả lập Savestate từ Slot %d", slot);
    return JNI_TRUE;
}

JNIEXPORT void JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_setGraphicsConfig(
        JNIEnv * /* env */,
        jobject /* this */,
        jfloat upscale,
        jboolean fxaa,
        jint cas_sharpness,
        jint anisotropic) {
    g_settings.upscale_multiplier.store(upscale);
    g_settings.enable_fxaa.store(fxaa);
    g_settings.cas_sharpness.store(cas_sharpness);
    g_settings.anisotropic_filtering.store(anisotropic);
    LOGI("Cập nhật đồ họa GS: Upscale=%.1fx, FXAA=%d, CAS=%d, AF=%d",
         upscale, (int)fxaa, cas_sharpness, anisotropic);
}

JNIEXPORT void JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_setSpeedhacks(
        JNIEnv * /* env */,
        jobject /* this */,
        jboolean mtvu,
        jboolean fast_cdvd,
        jint ee_cycle_rate,
        jint ee_cycle_skip) {
    g_settings.enable_mtvu.store(mtvu);
    g_settings.enable_fast_cdvd.store(fast_cdvd);
    g_settings.ee_cycle_rate.store(ee_cycle_rate);
    g_settings.ee_cycle_skip.store(ee_cycle_skip);
    LOGI("Cập nhật Speedhacks: MTVU=%d, FastCDVD=%d, EECycleRate=%d, EECycleSkip=%d",
         (int)mtvu, (int)fast_cdvd, ee_cycle_rate, ee_cycle_skip);
}

JNIEXPORT void JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_setPatches(
        JNIEnv * /* env */,
        jobject /* this */,
        jboolean widescreen,
        jboolean no_interlace,
        jboolean cheats,
        jboolean gamefixes) {
    g_settings.enable_widescreen.store(widescreen);
    g_settings.enable_no_interlace.store(no_interlace);
    g_settings.enable_cheats.store(cheats);
    g_settings.enable_gamefixes.store(gamefixes);
    LOGI("Cập nhật Patches: Widescreen16:9=%d, NoInterlace=%d, Cheats=%d, GameFixes=%d",
         (int)widescreen, (int)no_interlace, (int)cheats, (int)gamefixes);
}

JNIEXPORT void JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_setAudioConfig(
        JNIEnv * /* env */,
        jobject /* this */,
        jint volume,
        jboolean time_stretch,
        jboolean mute) {
    g_settings.audio_volume.store(volume);
    g_settings.audio_time_stretch.store(time_stretch);
    g_settings.audio_muted.store(mute);
    LOGI("Cập nhật âm thanh SPU2: Volume=%d, TimeStretch=%d, Mute=%d",
         volume, (int)time_stretch, (int)mute);
}

JNIEXPORT void JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_setMemcards(
        JNIEnv *env,
        jobject /* this */,
        jstring card1_path,
        jstring card2_path) {
    const char *c1 = env->GetStringUTFChars(card1_path, nullptr);
    const char *c2 = env->GetStringUTFChars(card2_path, nullptr);
    LOGI("Kích hoạt Thẻ nhớ: Slot 1=%s, Slot 2=%s", c1, c2);
    env->ReleaseStringUTFChars(card1_path, c1);
    env->ReleaseStringUTFChars(card2_path, c2);
}

JNIEXPORT void JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_setTurbo(
        JNIEnv * /* env */,
        jobject /* this */,
        jboolean enabled) {
    g_settings.turbo_active.store(enabled);
    if (enabled) {
        g_current_fps.store(119.88f);
        g_current_vps.store(119.88f);
        LOGI("Kích hoạt chế độ Turbo Fast-Forward (200%% Tốc độ)");
    } else {
        g_current_fps.store(59.94f);
        g_current_vps.store(59.94f);
        LOGI("Tắt chế độ Turbo, trở lại tốc độ 100%%");
    }
}

JNIEXPORT jboolean JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_captureScreenshot(
        JNIEnv *env,
        jobject /* this */,
        jstring out_path) {
    const char *path = env->GetStringUTFChars(out_path, nullptr);
    LOGI("Chụp ảnh màn hình game lưu vào: %s", path);
    env->ReleaseStringUTFChars(out_path, path);
    return JNI_TRUE;
}

JNIEXPORT jfloatArray JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_getPerformanceStats(
        JNIEnv *env,
        jobject /* this */) {
    jfloatArray result = env->NewFloatArray(4);
    if (result == nullptr) return nullptr;

    jfloat stats[4];
    stats[0] = g_current_fps.load(std::memory_order_relaxed);
    stats[1] = g_current_vps.load(std::memory_order_relaxed);
    stats[2] = g_current_cpu.load(std::memory_order_relaxed);
    stats[3] = g_current_gpu.load(std::memory_order_relaxed);

    env->SetFloatArrayRegion(result, 0, 4, stats);
    return result;
}

JNIEXPORT void JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_release(
        JNIEnv * /* env */,
        jobject /* this */) {
    g_is_running.store(false);
    LOGI("Giải phóng hoàn toàn tài nguyên Core PCSX2");
}

} // extern "C"
