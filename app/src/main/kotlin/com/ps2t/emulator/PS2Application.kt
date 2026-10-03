package com.ps2t.emulator

import android.app.Application
import com.ps2t.emulator.core.CrashHandler

class PS2Application : Application() {
    override fun onCreate() {
        super.onCreate()
        CrashHandler.install(this)
        try {
            xyz.aethersx2.android.NativeLibrary.initializeOnce(this, false)
        } catch (t: Throwable) {
            android.util.Log.e("PS2Application", "Failed to initialize NativeLibrary in Application.onCreate", t)
        }
    }
}
