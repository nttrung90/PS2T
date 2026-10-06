package com.ps2t.emulator.core

import android.content.Context
import java.io.File
import java.io.RandomAccessFile

/**
 * Quản lý Thẻ nhớ PlayStation 2 (Memory Cards - Mcd001.ps2 & Mcd002.ps2).
 * Tự động tạo và kiểm tra trạng thái 2 thẻ nhớ chuẩn 8MB theo thông số của PCSX2.
 */
class MemcardManager(context: Context) {

    // Dùng dataDir của NativeLibrary (external) để nhất quán với native core
    // (Folders/MemoryCards). Fallback về filesDir nếu chưa initialize.
    val memcardDir: File = File(
        xyz.aethersx2.android.NativeLibrary.getDataDirectory().ifEmpty { context.filesDir.absolutePath },
        "memcards"
    ).apply { mkdirs() }

    // Kích thước chuẩn của thẻ nhớ 8MB PS2 (kèm spare area = 8,650,752 bytes)
    companion object {
        const val PS2_MEMCARD_SIZE: Long = 8650752L
    }

    val card1File: File get() = File(memcardDir, "Mcd001.ps2")
    val card2File: File get() = File(memcardDir, "Mcd002.ps2")

    init {
        ensureMemcardsExist()
    }

    /**
     * Đảm bảo cả hai thẻ nhớ Slot 1 và Slot 2 đều được tạo sẵn để game có thể lưu dữ liệu.
     */
    fun ensureMemcardsExist() {
        createMemcardIfNotExists(card1File)
        createMemcardIfNotExists(card2File)
    }

    private fun createMemcardIfNotExists(file: File) {
        if (!file.exists() || file.length() < PS2_MEMCARD_SIZE) {
            try {
                file.parentFile?.mkdirs()
                val raf = RandomAccessFile(file, "rw")
                raf.setLength(PS2_MEMCARD_SIZE)
                // Ghi Superblock header chuẩn PS2 Memory Card ("Sony PS2 Memory Card Format ")
                val header = "Sony PS2 Memory Card Format ".toByteArray(Charsets.US_ASCII)
                raf.seek(0)
                raf.write(header)
                raf.close()
            } catch (e: Exception) {
                e.printStackTrace()
            }
        }
    }

    fun isCard1Ready(): Boolean = card1File.exists() && card1File.length() >= PS2_MEMCARD_SIZE
    fun isCard2Ready(): Boolean = card2File.exists() && card2File.length() >= PS2_MEMCARD_SIZE
}
