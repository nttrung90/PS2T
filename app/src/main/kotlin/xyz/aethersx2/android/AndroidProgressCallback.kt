package xyz.aethersx2.android

import android.app.Activity
import android.util.Log

open class AndroidProgressCallback(private val activity: Activity?) {
    open fun setProgressValue(value: Int) {}
    open fun setProgressRange(range: Int) {}
    open fun setStatusText(text: String) {
        Log.d("ProgressCallback", "Status: $text")
    }
    open fun setTitle(title: String) {
        Log.d("ProgressCallback", "Title: $title")
    }
    open fun dismiss() {}
    open fun modalError(error: String) {
        Log.e("ProgressCallback", "Error: $error")
    }
    open fun modalInformation(info: String) {
        Log.i("ProgressCallback", "Info: $info")
    }
    open fun modalConfirmation(question: String): Boolean = true
}
