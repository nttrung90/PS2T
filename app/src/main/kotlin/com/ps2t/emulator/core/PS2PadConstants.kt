package com.ps2t.emulator.core

/**
 * Định nghĩa các hằng số bitmask cho tay cầm PS2 DualShock 2.
 * Tương ứng đồng bộ 1:1 với cấu trúc PAD trong mã nguồn PCSX2 (PadDualshock2.h).
 */
object PS2PadConstants {
    // 16 nút bấm kỹ thuật số (Bitmask 16-bit)
    const val BTN_L2       = 1 shl 0
    const val BTN_R2       = 1 shl 1
    const val BTN_L1       = 1 shl 2
    const val BTN_R1       = 1 shl 3
    const val BTN_TRIANGLE = 1 shl 4
    const val BTN_CIRCLE   = 1 shl 5
    const val BTN_CROSS    = 1 shl 6
    const val BTN_SQUARE   = 1 shl 7
    const val BTN_SELECT   = 1 shl 8
    const val BTN_L3       = 1 shl 9
    const val BTN_R3       = 1 shl 10
    const val BTN_START    = 1 shl 11
    const val BTN_UP       = 1 shl 12
    const val BTN_RIGHT    = 1 shl 13
    const val BTN_DOWN     = 1 shl 14
    const val BTN_LEFT     = 1 shl 15

    // Giá trị cần gạt Analog (Phạm vi 0..255)
    const val ANALOG_MIN     = 0
    const val ANALOG_NEUTRAL = 128
    const val ANALOG_MAX     = 255
}
