package com.ps2t.emulator.core

import android.content.Context
import android.net.Uri
import android.provider.OpenableColumns
import java.io.File
import java.io.FileOutputStream
import java.io.InputStream
import java.util.Locale

/**
 * Quản lý tệp BIOS của PlayStation 2 (lưu trữ nội bộ, sao chép từ SAF, kiểm tra tính hợp lệ).
 */
class BiosManager(private val context: Context) {

    val biosDir: File = File(context.filesDir, "bios").apply { mkdirs() }
    private val prefs = PreferencesManager(context)

    data class BiosInfo(
        val file: File,
        val displayName: String,
        val sizeFormatted: String,
        val region: String
    )

    /**
     * Liệt kê tất cả các tệp BIOS đã có trong thư mục nội bộ.
     */
    fun getInstalledBiosList(): List<BiosInfo> {
        val files = biosDir.listFiles { f ->
            f.isFile && (f.extension.lowercase() in listOf("bin", "rom", "rom1", "rom2", "erom") || f.length() >= 1024 * 1024)
        } ?: emptyArray()

        return files.map { file ->
            val region = detectRegion(file.name)
            val sizeStr = formatFileSize(file.length())
            BiosInfo(file, file.name, sizeStr, region)
        }
    }

    /**
     * Lấy thông tin BIOS hiện đang được chọn (hoặc tự động chọn tệp đầu tiên nếu có).
     */
    fun getSelectedBios(): BiosInfo? {
        val path = prefs.selectedBiosPath
        if (path != null) {
            val file = File(path)
            if (file.exists() && file.length() > 0) {
                return BiosInfo(file, file.name, formatFileSize(file.length()), detectRegion(file.name))
            }
        }

        // Nếu chưa chọn hoặc file cũ bị xóa, tự động lấy file đầu tiên trong thư mục bios nếu có
        val installed = getInstalledBiosList()
        if (installed.isNotEmpty()) {
            val first = installed.first()
            prefs.selectedBiosPath = first.file.absolutePath
            prefs.selectedBiosName = first.displayName
            return first
        }

        return null
    }

    /**
     * Nhập tệp BIOS từ Uri (Storage Access Framework) vào thư mục nội bộ an toàn.
     */
    fun importBiosFromUri(uri: Uri): BiosInfo? {
        var originalName = getFileNameFromUri(uri) ?: "ps2_bios_${System.currentTimeMillis()}.bin"
        if (!originalName.contains(".")) {
            originalName += ".bin"
        }

        val destFile = File(biosDir, originalName)
        try {
            val inputStream: InputStream? = context.contentResolver.openInputStream(uri)
            if (inputStream != null) {
                FileOutputStream(destFile).use { outputStream ->
                    inputStream.copyTo(outputStream)
                }
                inputStream.close()

                prefs.selectedBiosPath = destFile.absolutePath
                prefs.selectedBiosName = destFile.name

                return BiosInfo(
                    destFile,
                    destFile.name,
                    formatFileSize(destFile.length()),
                    detectRegion(destFile.name)
                )
            }
        } catch (e: Exception) {
            e.printStackTrace()
        }
        return null
    }

    private fun detectRegion(name: String): String {
        val upper = name.uppercase(Locale.ROOT)
        return when {
            upper.contains("USA") || upper.contains("U_") || upper.contains("NTSC-U") -> "USA (NTSC-U)"
            upper.contains("EUROPE") || upper.contains("EU") || upper.contains("PAL") -> "Europe (PAL)"
            upper.contains("JAPAN") || upper.contains("J_") || upper.contains("NTSC-J") -> "Japan (NTSC-J)"
            upper.contains("ASIA") -> "Asia (NTSC-J)"
            else -> "PlayStation 2 Generic"
        }
    }

    private fun getFileNameFromUri(uri: Uri): String? {
        var name: String? = null
        try {
            val cursor = context.contentResolver.query(uri, null, null, null, null)
            cursor?.use {
                if (it.moveToFirst()) {
                    val index = it.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                    if (index >= 0) {
                        name = it.getString(index)
                    }
                }
            }
        } catch (_: Exception) {}

        if (name == null) {
            name = uri.lastPathSegment?.substringAfterLast('/')
        }
        return name
    }

    private fun formatFileSize(bytes: Long): String {
        return when {
            bytes >= 1024 * 1024 -> String.format(Locale.US, "%.1f MB", bytes / (1024f * 1024f))
            bytes >= 1024 -> String.format(Locale.US, "%.1f KB", bytes / 1024f)
            else -> "$bytes B"
        }
    }
}
