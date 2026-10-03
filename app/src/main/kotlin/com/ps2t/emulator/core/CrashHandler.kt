package com.ps2t.emulator.core

import android.content.Context
import android.util.Log
import java.io.File
import java.io.PrintWriter
import java.io.StringWriter

object CrashHandler {
    private const val TAG = "CrashHandler"
    private var isInstalled = false

    fun install(context: Context) {
        if (isInstalled) return
        isInstalled = true

        val defaultHandler = Thread.getDefaultUncaughtExceptionHandler()
        Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
            val sw = StringWriter()
            throwable.printStackTrace(PrintWriter(sw))
            val stackTrace = sw.toString()
            Log.e(TAG, "FATAL UNCAUGHT EXCEPTION on thread ${thread.name}:\n$stackTrace")

            try {
                val baseDir = context.getExternalFilesDir(null) ?: context.filesDir
                val crashFile = File(baseDir, "crash_log.txt")
                crashFile.writeText("=== CRASH LOG PS2T EMULATOR ===\nThread: ${thread.name}\nTime: ${java.util.Date()}\n\n$stackTrace\n")
            } catch (e: Exception) {
                Log.e(TAG, "Failed to write crash log file", e)
            }

            defaultHandler?.uncaughtException(thread, throwable)
        }
    }

    fun getLatestCrashLog(context: Context): String? {
        return try {
            val baseDir = context.getExternalFilesDir(null) ?: context.filesDir
            val crashFile = File(baseDir, "crash_log.txt")
            if (crashFile.exists() && crashFile.length() > 0) {
                crashFile.readText()
            } else null
        } catch (_: Exception) {
            null
        }
    }

    fun clearCrashLog(context: Context) {
        try {
            val baseDir = context.getExternalFilesDir(null) ?: context.filesDir
            val crashFile = File(baseDir, "crash_log.txt")
            if (crashFile.exists()) {
                crashFile.delete()
            }
        } catch (_: Exception) {}
    }
}
