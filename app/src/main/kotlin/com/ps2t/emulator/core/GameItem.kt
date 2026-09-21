package com.ps2t.emulator.core

/**
 * Model đại diện cho một tệp game PS2 đã chọn hoặc quét được.
 */
data class GameItem(
    val title: String,
    val uriString: String,
    val fileSizeFormatted: String,
    val lastPlayedTime: Long = System.currentTimeMillis()
)
