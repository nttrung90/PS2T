package com.ps2t.emulator.core

import android.content.Context
import android.net.Uri
import android.provider.OpenableColumns
import android.util.Log
import androidx.preference.PreferenceManager
import xyz.aethersx2.android.NativeLibrary
import java.io.File
import java.util.Locale

/**
 * Quản lý tệp BIOS của PlayStation 2 (lưu trữ trong thư mục bios của NativeLibrary,
 * nhập tự động qua NativeLibrary.importBIOS, kiểm tra tính hợp lệ bằng getBIOSDescription).
 */
class BiosManager(private val context: Context) {

    private val prefs = PreferencesManager(context)

    companion object {
        private const val TAG = "BiosManager"
    }

    val biosDir: File
        get() {
            val dir = File(context.filesDir, "bios").apply { mkdirs() }
            // Đồng bộ hóa với externalFilesDir nếu có
            context.getExternalFilesDir(null)?.let { ext ->
                val extBios = File(ext, "bios")
                if (extBios.exists()) {
                    extBios.listFiles()?.forEach { file ->
                        val target = File(dir, file.name)
                        if (!target.exists() && file.length() > 0) {
                            try { file.copyTo(target) } catch (_: Exception) {}
                        }
                    }
                }
            }
            return dir
        }

    data class BiosInfo(
        val file: File,
        val displayName: String,
        val sizeFormatted: String,
        val region: String,
        val isValid: Boolean = true
    )

    /**
     * Liệt kê tất cả các tệp BIOS hợp lệ trong thư mục bios.
     */
    fun getInstalledBiosList(): List<BiosInfo> {
        val files = biosDir.listFiles { f ->
            f.isFile && (f.extension.lowercase() in listOf("bin", "rom", "rom1", "rom2", "erom") || f.length() >= 1024 * 1024)
        } ?: emptyArray()

        val list = mutableListOf<BiosInfo>()
        for (file in files) {
            val desc = try {
                NativeLibrary.getBIOSDescription(file.absolutePath)
            } catch (_: Throwable) {
                null
            }
            if (!desc.isNullOrEmpty()) {
                val region = detectRegion(desc + " " + file.name)
                list.add(
                    BiosInfo(
                        file = file,
                        displayName = desc,
                        sizeFormatted = formatFileSize(file.length()),
                        region = region,
                        isValid = true
                    )
                )
            }
        }
        return list
    }

    /**
     * Lấy thông tin BIOS hiện đang được chọn.
     * Trả về null nếu người dùng chưa nạp BIOS thật nào.
     */
    fun getSelectedBios(): BiosInfo? {
        val defaultPrefs = PreferenceManager.getDefaultSharedPreferences(context)
        val path = defaultPrefs.getString("Filenames/BIOS", null) ?: prefs.selectedBiosPath

        if (!path.isNullOrEmpty()) {
            val file = if (path.contains(File.separator) || path.contains("/")) File(path) else File(biosDir, path)
            if (file.exists() && file.length() >= 1024 * 1024) {
                val desc = try {
                    NativeLibrary.getBIOSDescription(file.absolutePath)
                } catch (_: Throwable) {
                    null
                }
                if (!desc.isNullOrEmpty()) {
                    return BiosInfo(
                        file = file,
                        displayName = desc,
                        sizeFormatted = formatFileSize(file.length()),
                        region = detectRegion(desc + " " + file.name),
                        isValid = true
                    )
                }
            }
        }

        // Nếu file được lưu không hợp lệ, thử lấy file BIOS hợp lệ đầu tiên trong thư mục
        val installed = getInstalledBiosList()
        if (installed.isNotEmpty()) {
            val first = installed.first()
            setSelectedBios(first.file.name, first.displayName)
            return first
        }

        return null
    }

    /**
     * Đặt BIOS đã chọn vào cấu hình giả lập và Preferences.
     */
    fun setSelectedBios(path: String, name: String) {
        val biosName = if (path.contains(File.separator) || path.contains("/")) File(path).name else path
        prefs.selectedBiosPath = biosName
        prefs.selectedBiosName = name
        PreferenceManager.getDefaultSharedPreferences(context)
            .edit()
            .putString("Folders/Bios", biosDir.absolutePath)
            .putString("Filenames/BIOS", biosName)
            .commit()
        try {
            NativeLibrary.applySettings()
        } catch (_: Throwable) {}
    }

    /**
     * Nhập tệp BIOS từ Storage Access Framework (SAF).
     * Sử dụng thuật toán CRC32 và kiểm định trực tiếp qua NetherSX2 Native Core.
     */
    fun importBiosFromUri(uri: Uri): BiosInfo? {
        val success = try {
            NativeLibrary.importBIOS(context, uri)
        } catch (e: Exception) {
            Log.e(TAG, "Lỗi khi gọi NativeLibrary.importBIOS", e)
            false
        }

        if (success) {
            return getSelectedBios()
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
            else -> "PlayStation 2 (Generic)"
        }
    }

    private fun formatFileSize(bytes: Long): String {
        return when {
            bytes >= 1024 * 1024 -> String.format(Locale.US, "%.1f MB", bytes / (1024f * 1024f))
            bytes >= 1024 -> String.format(Locale.US, "%.1f KB", bytes / 1024f)
            else -> "$bytes B"
        }
    }
}
