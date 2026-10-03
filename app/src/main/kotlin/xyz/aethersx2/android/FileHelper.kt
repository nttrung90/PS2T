package xyz.aethersx2.android

import android.content.ContentResolver
import android.content.Context
import android.net.Uri
import android.os.ParcelFileDescriptor
import android.util.Log
import java.io.File

class FileHelper(private val context: Context) {
    private val contentResolver: ContentResolver = context.contentResolver

    class StatResult(
        @JvmField val size: Long,
        @JvmField val modifiedTime: Long,
        @JvmField val flags: Int
    )

    class FindResult(
        @JvmField val relativeName: String,
        @JvmField val name: String,
        @JvmField val size: Long,
        @JvmField val modifiedTime: Long,
        @JvmField val flags: Int
    )

    companion object {
        const val FILESYSTEM_FILE_ATTRIBUTE_DIRECTORY = 1
        const val FILESYSTEM_FILE_ATTRIBUTE_READ_ONLY = 2
        const val FILESYSTEM_FILE_ATTRIBUTE_COMPRESSED = 4
        const val FILESYSTEM_FIND_RECURSIVE = 1
        const val FILESYSTEM_FIND_RELATIVE_PATHS = 2
        const val FILESYSTEM_FIND_HIDDEN_FILES = 4
        const val FILESYSTEM_FIND_FOLDERS = 8
        const val FILESYSTEM_FIND_FILES = 16
        const val FILESYSTEM_FIND_KEEP_ARRAY = 32

        @JvmStatic
        fun format(format: String, vararg args: Any?): String {
            return String.format(format, *args)
        }
    }

    fun statFile(path: String): StatResult? {
        return try {
            val uri = Uri.parse(path)
            if (uri.scheme == "content") {
                var result: StatResult? = null
                try {
                    val projection = arrayOf(
                        android.provider.DocumentsContract.Document.COLUMN_MIME_TYPE,
                        android.provider.OpenableColumns.SIZE,
                        android.provider.DocumentsContract.Document.COLUMN_LAST_MODIFIED
                    )
                    contentResolver.query(uri, projection, null, null, null)?.use { cursor ->
                        if (cursor.moveToFirst()) {
                            val mimeType = cursor.getString(0) ?: ""
                            val size = if (!cursor.isNull(1)) cursor.getLong(1) else 0L
                            val lastMod = if (!cursor.isNull(2)) cursor.getLong(2) else System.currentTimeMillis()
                            val isDir = mimeType == "vnd.android.document/directory"
                            val flags = if (isDir) FILESYSTEM_FILE_ATTRIBUTE_DIRECTORY else 0
                            result = StatResult(size, lastMod, flags)
                        }
                    }
                } catch (_: Exception) {}

                if (result == null) {
                    try {
                        contentResolver.query(uri, arrayOf(android.provider.OpenableColumns.SIZE), null, null, null)?.use { cursor ->
                            if (cursor.moveToFirst()) {
                                val sizeIndex = cursor.getColumnIndex(android.provider.OpenableColumns.SIZE)
                                val size = if (sizeIndex != -1) cursor.getLong(sizeIndex) else 0L
                                result = StatResult(size, System.currentTimeMillis(), 0)
                            }
                        }
                    } catch (_: Exception) {}
                }
                result
            } else {
                val file = File(path)
                if (file.exists()) {
                    var flags = 0
                    if (file.isDirectory) flags = flags or FILESYSTEM_FILE_ATTRIBUTE_DIRECTORY
                    if (!file.canWrite()) flags = flags or FILESYSTEM_FILE_ATTRIBUTE_READ_ONLY
                    StatResult(file.length(), file.lastModified(), flags)
                } else null
            }
        } catch (e: Exception) {
            Log.e("FileHelper", "Error in statFile for $path", e)
            null
        }
    }

    fun findFiles(path: String, flags: Int): Array<FindResult> {
        val results = ArrayList<FindResult>()
        try {
            val dir = File(path)
            if (dir.exists() && dir.isDirectory) {
                val files = dir.listFiles()
                if (files != null) {
                    for (file in files) {
                        var fileFlags = 0
                        if (file.isDirectory) fileFlags = fileFlags or FILESYSTEM_FILE_ATTRIBUTE_DIRECTORY
                        if (!file.canWrite()) fileFlags = fileFlags or FILESYSTEM_FILE_ATTRIBUTE_READ_ONLY
                        val isDir = file.isDirectory
                        if (isDir && (flags and FILESYSTEM_FIND_FOLDERS != 0)) {
                            results.add(FindResult(file.name, file.absolutePath, file.length(), file.lastModified(), fileFlags))
                        } else if (!isDir && (flags and FILESYSTEM_FIND_FILES != 0)) {
                            results.add(FindResult(file.name, file.absolutePath, file.length(), file.lastModified(), fileFlags))
                        }
                    }
                }
            }
        } catch (e: Exception) {
            Log.e("FileHelper", "Error in findFiles for $path", e)
        }
        return results.toTypedArray()
    }

    fun openURIAsFileDescriptor(uriString: String, mode: String): Int {
        return openFile(uriString, mode)
    }

    fun openFile(uriString: String, mode: String): Int {
        return try {
            val uri = Uri.parse(uriString)
            val pfd: ParcelFileDescriptor? = if (uri.scheme == "content") {
                val sanitizedMode = when {
                    mode.contains("w") -> "rw"
                    else -> "r"
                }
                contentResolver.openFileDescriptor(uri, sanitizedMode)
            } else {
                val file = File(uriString)
                val parcelMode = if (mode.contains("w")) {
                    ParcelFileDescriptor.MODE_READ_WRITE or ParcelFileDescriptor.MODE_CREATE
                } else {
                    ParcelFileDescriptor.MODE_READ_ONLY
                }
                ParcelFileDescriptor.open(file, parcelMode)
            }
            pfd?.detachFd() ?: -1
        } catch (e: Exception) {
            Log.e("FileHelper", "Failed to openFile: $uriString, mode: $mode", e)
            -1
        }
    }

    fun getDisplayNameForURIPath(uriString: String): String? {
        return try {
            val uri = Uri.parse(uriString)
            if (uri.scheme == "content") {
                contentResolver.query(uri, arrayOf(android.provider.OpenableColumns.DISPLAY_NAME), null, null, null)?.use { cursor ->
                    if (cursor.moveToFirst()) {
                        val idx = cursor.getColumnIndex(android.provider.OpenableColumns.DISPLAY_NAME)
                        if (idx != -1) cursor.getString(idx) else null
                    } else null
                }
            } else {
                File(uriString).name
            }
        } catch (e: Exception) {
            Log.e("FileHelper", "getDisplayNameForURIPath failed for $uriString", e)
            null
        }
    }

    fun getRelativePathForURIPath(basePath: String, path: String): String? {
        return try {
            if (path.startsWith(basePath)) {
                path.removePrefix(basePath).trimStart('/')
            } else {
                path
            }
        } catch (_: Exception) {
            path
        }
    }
}
