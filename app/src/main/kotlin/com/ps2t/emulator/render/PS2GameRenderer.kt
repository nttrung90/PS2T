package com.ps2t.emulator.render

import android.opengl.GLES30
import android.opengl.GLSurfaceView
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import javax.microedition.khronos.egl.EGLConfig
import javax.microedition.khronos.opengles.GL10

/**
 * Renderer OpenGL ES 3.0 kết xuất khung hình game PS2 (chuẩn tỉ lệ 4:3 với pillarbox).
 */
class PS2GameRenderer(
    private val frameWidth: Int = 640,
    private val frameHeight: Int = 448,
    var isWidescreen: Boolean = false
) : GLSurfaceView.Renderer {

    var aspectRatioMode: String = if (isWidescreen) "16:9" else "4:3"
    var onFpsUpdate: ((fps: Float, vps: Float) -> Unit)? = null

    private var program: Int = 0
    private var textureId: Int = 0
    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null

    private var lastFpsTimestamp = System.nanoTime()
    private var frameCount = 0

    // Quản lý khung hình PS2 (640x448 chuẩn NTSC PS2)
    private var frameBuffer: ByteBuffer = ByteBuffer.allocateDirect(frameWidth * frameHeight * 4)
        .order(ByteOrder.nativeOrder())

    @Volatile
    private var frameReady = false

    private val vertexShaderCode = """#version 300 es
        layout(location = 0) in vec4 aPosition;
        layout(location = 1) in vec2 aTexCoord;
        out vec2 vTexCoord;
        void main() {
            gl_Position = aPosition;
            vTexCoord = aTexCoord;
        }
    """.trimIndent()

    private val fragmentShaderCode = """#version 300 es
        precision mediump float;
        in vec2 vTexCoord;
        out vec4 fragColor;
        uniform sampler2D uTexture;
        void main() {
            fragColor = texture(uTexture, vTexCoord);
        }
    """.trimIndent()

    override fun onSurfaceCreated(gl: GL10?, config: EGLConfig?) {
        GLES30.glClearColor(0.0f, 0.0f, 0.0f, 1.0f)
        initShaders()
        initTexture()
        generatePlaceholderFrame()
    }

    override fun onSurfaceChanged(gl: GL10?, width: Int, height: Int) {
        val screenAspect = width.toFloat() / height.toFloat()
        val targetAspect = when (aspectRatioMode) {
            "16:9" -> 16.0f / 9.0f
            "stretch" -> screenAspect
            else -> 4.0f / 3.0f
        }

        val vpW: Int
        val vpH: Int
        val vpX: Int
        val vpY: Int

        if (screenAspect > targetAspect) {
            vpH = height
            vpW = (height * targetAspect).toInt()
            vpX = (width - vpW) / 2
            vpY = 0
        } else {
            vpW = width
            vpH = (width / targetAspect).toInt()
            vpX = 0
            vpY = (height - vpH) / 2
        }

        GLES30.glViewport(vpX, vpY, vpW, vpH)
    }

    override fun onDrawFrame(gl: GL10?) {
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        frameCount++
        val now = System.nanoTime()
        val elapsed = now - lastFpsTimestamp
        if (elapsed >= 500_000_000L) {
            val currentFps = (frameCount * 1_000_000_000.0f) / elapsed
            onFpsUpdate?.invoke(currentFps, currentFps)
            frameCount = 0
            lastFpsTimestamp = now
        }

        if (program == 0 || textureId == 0) return

        GLES30.glUseProgram(program)

        // Upload texture nếu có khung hình mới
        if (frameReady) {
            synchronized(this) {
                frameBuffer.position(0)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
                GLES30.glTexSubImage2D(
                    GLES30.GL_TEXTURE_2D, 0, 0, 0,
                    frameWidth, frameHeight,
                    GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE,
                    frameBuffer
                )
                frameReady = false
            }
        }

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)

        vertexBuffer?.let { vb ->
            GLES30.glEnableVertexAttribArray(0)
            GLES30.glVertexAttribPointer(0, 2, GLES30.GL_FLOAT, false, 0, vb)
        }

        texCoordBuffer?.let { tb ->
            GLES30.glEnableVertexAttribArray(1)
            GLES30.glVertexAttribPointer(1, 2, GLES30.GL_FLOAT, false, 0, tb)
        }

        GLES30.glDrawArrays(GLES30.GL_TRIANGLE_STRIP, 0, 4)

        GLES30.glDisableVertexAttribArray(0)
        GLES30.glDisableVertexAttribArray(1)
    }

    fun updateFrame(rgbaData: ByteArray) {
        synchronized(this) {
            frameBuffer.position(0)
            frameBuffer.put(rgbaData, 0, minOf(rgbaData.size, frameBuffer.capacity()))
            frameReady = true
        }
    }

    private fun initShaders() {
        val vs = loadShader(GLES30.GL_VERTEX_SHADER, vertexShaderCode)
        val fs = loadShader(GLES30.GL_FRAGMENT_SHADER, fragmentShaderCode)

        program = GLES30.glCreateProgram().also {
            GLES30.glAttachShader(it, vs)
            GLES30.glAttachShader(it, fs)
            GLES30.glLinkProgram(it)
        }

        val vertices = floatArrayOf(
            -1.0f, -1.0f,
             1.0f, -1.0f,
            -1.0f,  1.0f,
             1.0f,  1.0f
        )
        vertexBuffer = ByteBuffer.allocateDirect(vertices.size * 4)
            .order(ByteOrder.nativeOrder()).asFloatBuffer().apply {
                put(vertices)
                position(0)
            }

        val texCoords = floatArrayOf(
            0.0f, 1.0f,
            1.0f, 1.0f,
            0.0f, 0.0f,
            1.0f, 0.0f
        )
        texCoordBuffer = ByteBuffer.allocateDirect(texCoords.size * 4)
            .order(ByteOrder.nativeOrder()).asFloatBuffer().apply {
                put(texCoords)
                position(0)
            }
    }

    private fun initTexture() {
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        textureId = textures[0]

        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA,
            frameWidth, frameHeight, 0,
            GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null
        )
    }

    private fun generatePlaceholderFrame() {
        // Khung hình mẫu mô phỏng màn hình game Half-Life / Black Mesa Training Facility tông màu xám kiến trúc
        frameBuffer.position(0)
        for (y in 0 until frameHeight) {
            for (x in 0 until frameWidth) {
                // Tạo họa tiết sàn gạch và tường phòng tập
                val isWall = y < frameHeight * 0.65f
                val r: Byte
                val g: Byte
                val b: Byte
                if (isWall) {
                    val tile = ((x / 32) + (y / 32)) % 2 == 0
                    r = if (tile) 0x68.toByte() else 0x5C.toByte()
                    g = if (tile) 0x6A.toByte() else 0x5E.toByte()
                    b = if (tile) 0x64.toByte() else 0x58.toByte()
                } else {
                    val floorTile = ((x / 24) + (y / 24)) % 2 == 0
                    r = if (floorTile) 0x48.toByte() else 0x3E.toByte()
                    g = if (floorTile) 0x46.toByte() else 0x3C.toByte()
                    b = if (floorTile) 0x42.toByte() else 0x38.toByte()
                }
                frameBuffer.put(r)
                frameBuffer.put(g)
                frameBuffer.put(b)
                frameBuffer.put(0xFF.toByte())
            }
        }
        frameReady = true
    }

    private fun loadShader(type: Int, shaderCode: String): Int {
        return GLES30.glCreateShader(type).also { shader ->
            GLES30.glShaderSource(shader, shaderCode)
            GLES30.glCompileShader(shader)
        }
    }
}
