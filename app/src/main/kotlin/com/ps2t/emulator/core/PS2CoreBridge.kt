package com.ps2t.emulator.core

/**
 * Lớp cầu nối JNI (Native Bridge) kết nối giữa tầng UI Android và tầng C++ giả lập PS2.
 * Hỗ trợ toàn bộ các hàm cấu hình đồ họa GS, âm thanh SPU2, Speedhacks, Patches, Memory Cards,
 * Savestate đa slot, Turbo và đo đạc chỉ số hiệu năng (FPS/VPS/CPU).
 */
class PS2CoreBridge {

    companion object {
        init {
            try {
                System.loadLibrary("ps2_native_bridge")
            } catch (e: UnsatisfiedLinkError) {
                e.printStackTrace()
            }
        }
    }

    /**
     * Khởi tạo máy ảo PS2 và hệ thống Audio/Video.
     */
    external fun initEmulator(internalDir: String, biosDir: String): Boolean

    /**
     * Nạp game PS2 (ISO / BIN / ELF) từ đường dẫn tệp.
     */
    external fun loadGame(gamePath: String): Boolean

    /**
     * Nạp game PS2 từ File Descriptor (Storage Access Framework / SAF).
     */
    external fun loadGameFd(fd: Int, gameTitle: String, fileSize: Long): Boolean

    /**
     * Lấy thông tin đĩa game đã nạp: [Tên game, Mã Serial (SLUS/SCES), VMode (NTSC/PAL), Định dạng]
     */
    external fun getGameInfo(): Array<String>

    /**
     * Kết xuất khung hình đồ họa giả lập thời gian thực trực tiếp vào Direct ByteBuffer của Renderer.
     */
    external fun renderFrameToBuffer(buffer: java.nio.ByteBuffer, width: Int, height: Int, frameIndex: Long): Boolean

    /**
     * Cập nhật trạng thái tức thì của tay cầm DualShock 2.
     */
    external fun updatePadState(buttonMask: Int, lx: Int, ly: Int, rx: Int, ry: Int)

    /**
     * Bước giả lập 1 khung hình (60Hz NTSC / 50Hz PAL).
     */
    external fun stepFrame()

    /**
     * Tạm dừng hoặc tiếp tục.
     */
    external fun pause()
    external fun resume()

    /**
     * Lưu và nạp Save State theo Slot (0 đến 9).
     */
    external fun saveState(slot: Int): Boolean
    external fun loadState(slot: Int): Boolean

    /**
     * Cấu hình đồ họa GS nâng cao (Độ phân giải nội bộ, FXAA, CAS Sharpness, Lọc đẳng hướng).
     */
    external fun setGraphicsConfig(upscale: Float, fxaa: Boolean, casSharpness: Int, anisotropic: Int)

    /**
     * Cấu hình tăng tốc hiệu năng (MTVU, Fast CDVD, EE Cycle Rate & Skip).
     */
    external fun setSpeedhacks(mtvu: Boolean, fastCdvd: Boolean, eeCycleRate: Int, eeCycleSkip: Int)

    /**
     * Cấu hình Bản vá & Gian lận (Widescreen 16:9, No-Interlace, Cheats, GameFixes).
     */
    external fun setPatches(widescreen: Boolean, noInterlace: Boolean, cheats: Boolean, gamefixes: Boolean)

    /**
     * Cấu hình hệ thống âm thanh SPU2.
     */
    external fun setAudioConfig(volume: Int, timeStretch: Boolean, mute: Boolean)

    /**
     * Thiết lập đường dẫn 2 Thẻ nhớ 8MB.
     */
    external fun setMemcards(card1Path: String, card2Path: String)

    /**
     * Kích hoạt chế độ Turbo Fast-Forward (200% - 300% tốc độ).
     */
    external fun setTurbo(enabled: Boolean)

    /**
     * Chụp ảnh màn hình lưu vào tệp ảnh PNG/JPG.
     */
    external fun captureScreenshot(outPath: String): Boolean

    /**
     * Lấy chỉ số hiệu năng thực tế từ Core: [FPS, VPS, CPU%, GPU%]
     */
    external fun getPerformanceStats(): FloatArray

    /**
     * Dừng và giải phóng toàn bộ tài nguyên.
     */
    external fun release()
}
