package xyz.aethersx2.android

import android.util.Log
import java.io.ByteArrayOutputStream
import java.net.HttpURLConnection
import java.net.URL

class URLDownloader(private val userAgent: String?) {
    private var statusCode: Int = 0
    private var contentType: String? = null
    private var responseData: ByteArray? = null

    fun get(urlString: String): Boolean {
        return try {
            val url = URL(urlString)
            val conn = url.openConnection() as HttpURLConnection
            conn.requestMethod = "GET"
            if (!userAgent.isNullOrEmpty()) {
                conn.setRequestProperty("User-Agent", userAgent)
            }
            conn.connectTimeout = 10000
            conn.readTimeout = 15000
            statusCode = conn.responseCode
            contentType = conn.contentType

            if (statusCode in 200..299) {
                conn.inputStream.use { input ->
                    val bos = ByteArrayOutputStream()
                    input.copyTo(bos)
                    responseData = bos.toByteArray()
                }
                true
            } else {
                false
            }
        } catch (e: Exception) {
            Log.e("URLDownloader", "Failed GET $urlString", e)
            false
        }
    }

    fun post(urlString: String, data: ByteArray): Boolean {
        return try {
            val url = URL(urlString)
            val conn = url.openConnection() as HttpURLConnection
            conn.requestMethod = "POST"
            conn.doOutput = true
            if (!userAgent.isNullOrEmpty()) {
                conn.setRequestProperty("User-Agent", userAgent)
            }
            conn.connectTimeout = 10000
            conn.readTimeout = 15000
            conn.outputStream.use { it.write(data) }

            statusCode = conn.responseCode
            contentType = conn.contentType

            if (statusCode in 200..299) {
                conn.inputStream.use { input ->
                    val bos = ByteArrayOutputStream()
                    input.copyTo(bos)
                    responseData = bos.toByteArray()
                }
                true
            } else {
                false
            }
        } catch (e: Exception) {
            Log.e("URLDownloader", "Failed POST $urlString", e)
            false
        }
    }

    fun getStatusCode(): Int = statusCode
    fun getContentType(): String? = contentType
    fun getData(): ByteArray? = responseData
}
