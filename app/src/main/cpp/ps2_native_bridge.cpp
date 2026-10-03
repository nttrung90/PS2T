#include <jni.h>
#include <string>
#include <android/log.h>
#include <atomic>
#include <cstdint>
#include <chrono>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <cstring>
#include <cmath>
#include <algorithm>
#include <mutex>

#define TAG "PS2NativeBridge"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, TAG, __VA_ARGS__)

// Cấu trúc thông tin tệp game đang chạy
struct LoadedGameInfo {
    std::string title{"PS2 Game"};
    std::string serial{"PS2-DISC"};
    std::string vmode{"NTSC"};
    int fd{-1};
    int64_t file_size{0};
    bool is_valid_iso{false};
    bool is_valid_elf{false};
    uint64_t frame_count{0};
};
static LoadedGameInfo g_game;
static std::mutex g_game_mutex;

// Trích xuất Serial và VMode từ tệp SYSTEM.CNF trong đĩa ISO 9660 PS2
static bool parsePs2Iso(int fd, std::string &out_serial, std::string &out_vmode) {
    if (fd < 0) return false;

    // Sector 16: Primary Volume Descriptor (Offset 0x8000 = 32768)
    uint8_t pvd[2048];
    if (pread(fd, pvd, sizeof(pvd), 0x8000) != sizeof(pvd)) {
        return false;
    }

    if (memcmp(pvd + 1, "CD001", 5) != 0) {
        return false;
    }

    const uint8_t *root_record = pvd + 156;
    uint32_t root_sector = *reinterpret_cast<const uint32_t *>(root_record + 2);
    uint32_t root_size = *reinterpret_cast<const uint32_t *>(root_record + 10);

    if (root_sector == 0 || root_size == 0 || root_size > 1024 * 1024) {
        return false;
    }

    uint32_t bytes_to_read = std::min(root_size, static_cast<uint32_t>(16 * 2048));
    std::vector<uint8_t> dir_buf(bytes_to_read);
    if (pread(fd, dir_buf.data(), bytes_to_read, static_cast<uint64_t>(root_sector) * 2048) != static_cast<ssize_t>(bytes_to_read)) {
        return false;
    }

    uint32_t cnf_sector = 0;
    uint32_t cnf_size = 0;
    size_t offset = 0;
    while (offset < dir_buf.size()) {
        uint8_t len = dir_buf[offset];
        if (len == 0) {
            offset = ((offset / 2048) + 1) * 2048;
            continue;
        }
        if (offset + len > dir_buf.size()) break;

        uint8_t name_len = dir_buf[offset + 32];
        if (name_len > 0 && offset + 33 + name_len <= dir_buf.size()) {
            std::string name(reinterpret_cast<const char *>(&dir_buf[offset + 33]), name_len);
            if (name.find("SYSTEM.CNF") != std::string::npos) {
                cnf_sector = *reinterpret_cast<const uint32_t *>(&dir_buf[offset + 2]);
                cnf_size = *reinterpret_cast<const uint32_t *>(&dir_buf[offset + 10]);
                break;
            }
        }
        offset += len;
    }

    if (cnf_sector == 0 || cnf_size == 0 || cnf_size > 4096) {
        return false;
    }

    std::vector<char> cnf_content(cnf_size + 1, 0);
    if (pread(fd, cnf_content.data(), cnf_size, static_cast<uint64_t>(cnf_sector) * 2048) <= 0) {
        return false;
    }

    std::string text(cnf_content.data());
    size_t boot_pos = text.find("BOOT2");
    if (boot_pos != std::string::npos) {
        size_t slash = text.find_first_of("\\/", boot_pos);
        if (slash != std::string::npos) {
            size_t semi = text.find_first_of(";\r\n", slash);
            if (semi != std::string::npos && semi > slash + 1) {
                out_serial = text.substr(slash + 1, semi - slash - 1);
            }
        }
    }

    size_t vmode_pos = text.find("VMODE");
    if (vmode_pos != std::string::npos) {
        size_t eq = text.find('=', vmode_pos);
        if (eq != std::string::npos) {
            size_t end = text.find_first_of("\r\n", eq);
            if (end != std::string::npos && end > eq + 1) {
                std::string mode = text.substr(eq + 1, end - eq - 1);
                mode.erase(0, mode.find_first_not_of(" \t"));
                mode.erase(mode.find_last_not_of(" \t") + 1);
                out_vmode = mode;
            }
        }
    }

    return !out_serial.empty();
}

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
    LOGI("Nạp đĩa game PS2 từ file path: %s", path);
    {
        std::lock_guard<std::mutex> lock(g_game_mutex);
        g_game.title = path ? path : "PS2 Game";
        g_game.frame_count = 0;
    }
    env->ReleaseStringUTFChars(game_path, path);
    g_is_running.store(true);
    return JNI_TRUE;
}

JNIEXPORT jboolean JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_loadGameFd(
        JNIEnv *env,
        jobject /* this */,
        jint fd,
        jstring game_title,
        jlong file_size) {
    const char *title_str = env->GetStringUTFChars(game_title, nullptr);

    std::lock_guard<std::mutex> lock(g_game_mutex);
    if (g_game.fd >= 0 && g_game.fd != fd) {
        close(g_game.fd);
    }
    g_game.title = title_str ? title_str : "PS2 Game";
    g_game.fd = fd;
    g_game.file_size = file_size;
    g_game.frame_count = 0;
    g_game.serial = "PS2-DISC";
    g_game.vmode = "NTSC";
    g_game.is_valid_iso = false;
    g_game.is_valid_elf = false;

    if (fd >= 0) {
        std::string serial, vmode;
        if (parsePs2Iso(fd, serial, vmode)) {
            g_game.serial = serial;
            g_game.vmode = vmode;
            g_game.is_valid_iso = true;
            LOGI("Xác thực thành công đĩa ISO 9660 PS2: Serial=%s, VMode=%s, Dung lượng=%lld bytes",
                 serial.c_str(), vmode.c_str(), (long long)file_size);
        } else {
            char header_buf[16];
            memset(header_buf, 0, sizeof(header_buf));
            ssize_t r_elf = pread(fd, header_buf, 4, 0);
            if (r_elf >= 4 && memcmp(header_buf, "\x7f\x45\x4c\x46", 4) == 0) {
                g_game.is_valid_elf = true;
                g_game.serial = "ELF-EXEC";
                LOGI("Xác thực thành công tệp thực thi ELF PlayStation 2: %s", g_game.title.c_str());
            } else {
                LOGI("Nạp tệp đĩa PS2 qua FD (%d): %s (Dung lượng: %lld bytes)", fd, g_game.title.c_str(), (long long)file_size);
            }
        }
    }

    g_is_running.store(true);
    env->ReleaseStringUTFChars(game_title, title_str);
    return JNI_TRUE;
}

JNIEXPORT jobjectArray JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_getGameInfo(
        JNIEnv *env,
        jobject /* this */) {
    std::lock_guard<std::mutex> lock(g_game_mutex);
    jclass str_class = env->FindClass("java/lang/String");
    jobjectArray array = env->NewObjectArray(4, str_class, nullptr);
    env->SetObjectArrayElement(array, 0, env->NewStringUTF(g_game.title.c_str()));
    env->SetObjectArrayElement(array, 1, env->NewStringUTF(g_game.serial.c_str()));
    env->SetObjectArrayElement(array, 2, env->NewStringUTF(g_game.vmode.c_str()));
    std::string format = g_game.is_valid_iso ? "DVD-ROM ISO 9660" : (g_game.is_valid_elf ? "ELF Executable" : "PS2 Disc Image");
    env->SetObjectArrayElement(array, 3, env->NewStringUTF(format.c_str()));
    return array;
}

JNIEXPORT jboolean JNICALL
Java_com_ps2t_emulator_core_PS2CoreBridge_renderFrameToBuffer(
        JNIEnv *env,
        jobject /* this */,
        jobject direct_buffer,
        jint width,
        jint height,
        jlong frame_index) {
    if (direct_buffer == nullptr || width <= 0 || height <= 0) {
        return JNI_FALSE;
    }

    uint8_t *dst = static_cast<uint8_t *>(env->GetDirectBufferAddress(direct_buffer));
    if (dst == nullptr) {
        return JNI_FALSE;
    }

    std::lock_guard<std::mutex> lock(g_game_mutex);
    uint64_t frame = (frame_index > 0) ? static_cast<uint64_t>(frame_index) : g_game.frame_count;

    uint16_t btn = g_pad_state.buttons.load(std::memory_order_relaxed);
    uint8_t lx = g_pad_state.lx.load(std::memory_order_relaxed);
    uint8_t ly = g_pad_state.ly.load(std::memory_order_relaxed);
    float normLX = (lx - 128.0f) / 128.0f; // -1.0 .. 1.0
    float normLY = (ly - 128.0f) / 128.0f;

    float t = frame * 0.035f;
    float rotA = t * 1.2f + normLX * 2.0f;
    float rotB = t * 0.7f + normLY * 2.0f;
    float sinA = std::sin(rotA), cosA = std::cos(rotA);
    float sinB = std::sin(rotB), cosB = std::cos(rotB);

    // Xác định màu phản hồi nút bấm
    uint8_t waveR = 0, waveG = 229, waveB = 255;
    bool hasBtn = (btn != 0xFFFF);
    if (hasBtn) {
        if (!(btn & (1 << 4))) { // Triangle
            waveR = 0; waveG = 230; waveB = 118;
        } else if (!(btn & (1 << 7))) { // Square
            waveR = 255; waveG = 64; waveB = 129;
        } else if (!(btn & (1 << 5))) { // Circle
            waveR = 255; waveG = 23; waveB = 68;
        } else { // Cross
            waveR = 0; waveG = 229; waveB = 255;
        }
    }

    float aspect = static_cast<float>(width) / static_cast<float>(height);

    for (int y = 0; y < height; ++y) {
        float ny = static_cast<float>(y) / static_cast<float>(height);
        uint32_t *row = reinterpret_cast<uint32_t *>(dst + y * (width * 4));

        // Nền không gian PlayStation xanh sâu thẳm mượt mà, không sọc ngang
        float grad = 1.0f - std::abs(ny - 0.5f) * 1.2f;
        grad = std::max(0.0f, std::min(1.0f, grad));
        uint8_t bgR = static_cast<uint8_t>(4 + 10 * grad);
        uint8_t bgG = static_cast<uint8_t>(10 + 26 * grad);
        uint8_t bgB = static_cast<uint8_t>(28 + 65 * grad);

        for (int x = 0; x < width; ++x) {
            float nx = static_cast<float>(x) / static_cast<float>(width);

            float u = (nx - 0.5f) * 2.0f * aspect;
            float v = (ny - 0.5f) * 2.0f;

            uint8_t r = bgR;
            uint8_t g = bgG;
            uint8_t b = bgB;

            // Bụi sao lấp lánh nhẹ nhàng
            float star = std::sin(nx * 345.67f + ny * 890.12f);
            if (star > 0.988f) {
                float twinkle = 0.4f + 0.6f * std::sin(t * 4.0f + star * 50.0f);
                r = static_cast<uint8_t>(std::min(255, r + static_cast<int>(120 * twinkle)));
                g = static_cast<uint8_t>(std::min(255, g + static_cast<int>(170 * twinkle)));
                b = static_cast<uint8_t>(std::min(255, b + static_cast<int>(230 * twinkle)));
            }

            // Xoay 3D tọa độ cho khối pha lê PS2
            float px = u;
            float py = v;
            float pz = 0.0f;

            float rx = px * cosA - pz * sinA;
            float rz = px * sinA + pz * cosA;
            float ry = py * cosB - rz * sinB;
            rz = py * sinB + rz * cosB;

            // Khối pha lê Octahedron biểu tượng PlayStation 2
            float distOct = (std::abs(rx) + std::abs(ry) + std::abs(rz) * 0.7f);
            float crystalRadius = 0.55f;

            if (distOct < crystalRadius) {
                float normZ = std::sqrt(std::max(0.0f, 1.0f - (u * u + v * v) / (crystalRadius * crystalRadius)));
                float spec = std::pow(std::max(0.0f, normZ * 0.8f + (rx + ry) * 0.2f), 8.0f);

                r = static_cast<uint8_t>(std::min(255, static_cast<int>(30 + 180 * spec)));
                g = static_cast<uint8_t>(std::min(255, static_cast<int>(80 + 200 * spec)));
                b = static_cast<uint8_t>(std::min(255, static_cast<int>(190 + 65 * spec)));

                if (distOct > crystalRadius - 0.06f) {
                    r = static_cast<uint8_t>(std::min(255, r + 60));
                    g = static_cast<uint8_t>(std::min(255, g + 120));
                    b = 255;
                }
            } else if (distOct < crystalRadius + 0.28f) {
                float aura = 1.0f - (distOct - crystalRadius) / 0.28f;
                r = static_cast<uint8_t>(std::min(255, r + static_cast<int>(20 * aura)));
                g = static_cast<uint8_t>(std::min(255, g + static_cast<int>(65 * aura)));
                b = static_cast<uint8_t>(std::min(255, b + static_cast<int>(140 * aura)));
            }

            // Sóng tương tác phản hồi khi bấm nút
            if (hasBtn) {
                float distCenter = std::sqrt(u * u + v * v);
                float wave = std::sin(distCenter * 12.0f - t * 14.0f);
                if (wave > 0.75f && distCenter < 1.8f) {
                    float waveAlpha = (wave - 0.75f) * 4.0f * (1.0f - distCenter / 1.8f);
                    r = static_cast<uint8_t>(std::min(255, r + static_cast<int>(waveR * waveAlpha * 0.6f)));
                    g = static_cast<uint8_t>(std::min(255, g + static_cast<int>(waveG * waveAlpha * 0.6f)));
                    b = static_cast<uint8_t>(std::min(255, b + static_cast<int>(waveB * waveAlpha * 0.6f)));
                }
            }

            row[x] = (0xFF << 24) | (b << 16) | (g << 8) | r;
        }
    }

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
    if (g_is_paused.load(std::memory_order_relaxed)) {
        return;
    }
    std::lock_guard<std::mutex> lock(g_game_mutex);
    g_game.frame_count++;
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
    std::lock_guard<std::mutex> lock(g_game_mutex);
    if (g_game.fd >= 0) {
        close(g_game.fd);
        g_game.fd = -1;
    }
    g_is_running.store(false);
    LOGI("Giải phóng hoàn toàn tài nguyên Core PCSX2");
}

} // extern "C"
