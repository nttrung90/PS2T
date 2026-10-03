package com.ps2t.emulator.ui

import android.content.Context
import android.graphics.*
import android.os.Build
import android.os.VibrationEffect
import android.os.Vibrator
import android.os.VibratorManager
import android.util.AttributeSet
import android.view.MotionEvent
import android.view.View
import com.ps2t.emulator.core.PS2PadConstants
import kotlin.math.*

/**
 * Custom View vẽ và xử lý toàn bộ hệ thống nút điều khiển ảo PS2 DualShock 2
 * sao chép chính xác 100% bố cục, vị trí, kích thước tỉ lệ và màu sắc từ giao diện DamonPS2 PRO.
 */
class PS2TouchControllerView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0
) : View(context, attrs, defStyleAttr) {

    // Callback thông báo trạng thái nút bấm và cần Analog
    var onPadStateChanged: ((buttonMask: Int, lx: Int, ly: Int, rx: Int, ry: Int) -> Unit)? = null

    // Trạng thái hiện tại
    private var currentButtonMask: Int = 0
    private var currentLX: Int = PS2PadConstants.ANALOG_NEUTRAL
    private var currentLY: Int = PS2PadConstants.ANALOG_NEUTRAL
    private var currentRX: Int = PS2PadConstants.ANALOG_NEUTRAL
    private var currentRY: Int = PS2PadConstants.ANALOG_NEUTRAL

    // Dịch vụ rung (Haptic Feedback)
    var enableHaptic: Boolean = true

    // Độ mờ tổng thể (Opacity Factor 0.1f .. 1.0f)
    var opacityFactor: Float = 0.8f
        set(value) {
            val clamped = value.coerceIn(0.1f, 1.0f)
            if (field != clamped) {
                field = clamped
                updatePaintsOpacity(clamped)
                invalidate()
            }
        }

    private val vibrator: Vibrator? by lazy {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            val vm = context.getSystemService(Context.VIBRATOR_MANAGER_SERVICE) as? VibratorManager
            vm?.defaultVibrator
        } else {
            @Suppress("DEPRECATION")
            context.getSystemService(Context.VIBRATOR_SERVICE) as? Vibrator
        }
    }

    private fun updatePaintsOpacity(alpha: Float) {
        strokePaint.color = Color.argb((120 * alpha).toInt(), 220, 225, 235)
        fillPaint.color = Color.argb((35 * alpha).toInt(), 10, 15, 25)
        textPaint.color = Color.argb((190 * alpha).toInt(), 220, 225, 235)
        watermarkPaint.color = Color.argb((220 * alpha).toInt(), 255, 255, 255)
        trianglePaint.color = Color.argb((240 * alpha).toInt(), 0, 230, 118)
        squarePaint.color = Color.argb((240 * alpha).toInt(), 255, 64, 129)
        circlePaint.color = Color.argb((240 * alpha).toInt(), 255, 23, 68)
        crossPaint.color = Color.argb((240 * alpha).toInt(), 0, 229, 255)
        stickBasePaint.color = Color.argb((90 * alpha).toInt(), 180, 190, 205)
        stickKnobPaint.color = Color.argb((130 * alpha).toInt(), 180, 190, 205)
    }

    // -------------------------------------------------------------
    // Cọ vẽ (Paints)
    // -------------------------------------------------------------

    // Viền nút tiêu chuẩn (Màu trắng đục bán trong suốt như trong ảnh mẫu)
    private val strokePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.argb(120, 220, 225, 235)
        style = Paint.Style.STROKE
        strokeWidth = 3.5f
        strokeCap = Paint.Cap.ROUND
        strokeJoin = Paint.Join.ROUND
    }

    // Nền nút tiêu chuẩn
    private val fillPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.argb(35, 10, 15, 25)
        style = Paint.Style.FILL
    }

    // Nền khi được nhấn
    private val pressedFillPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.argb(90, 255, 255, 255)
        style = Paint.Style.FILL
    }

    // Viền khi được nhấn
    private val pressedStrokePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.argb(230, 255, 255, 255)
        style = Paint.Style.STROKE
        strokeWidth = 4.5f
    }

    // Nhãn văn bản (L1, L2, R1, R2, L3, R3, v.v.)
    private val textPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.argb(190, 220, 225, 235)
        textSize = 28f
        textAlign = Paint.Align.CENTER
        typeface = Typeface.create(Typeface.SANS_SERIF, Typeface.NORMAL)
    }

    // Watermark ở góc trên bên trái
    private val watermarkPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.argb(100, 220, 230, 245)
        textSize = 16f
        typeface = Typeface.create(Typeface.SANS_SERIF, Typeface.NORMAL)
    }

    // Cọ màu 4 nút biểu tượng PlayStation:
    // Tam giác - Xanh lá cây (#00E676)
    private val trianglePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.argb(240, 0, 230, 118)
        style = Paint.Style.STROKE
        strokeWidth = 4.0f
        strokeJoin = Paint.Join.ROUND
    }

    // Vuông - Hồng tím (#FF4081)
    private val squarePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.argb(240, 255, 64, 129)
        style = Paint.Style.STROKE
        strokeWidth = 4.0f
        strokeJoin = Paint.Join.ROUND
    }

    // Tròn - Đỏ tươi (#FF1744)
    private val circlePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.argb(240, 255, 23, 68)
        style = Paint.Style.STROKE
        strokeWidth = 4.0f
    }

    // X - Xanh Cyan / Lam sáng (#00E5FF)
    private val crossPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.argb(240, 0, 229, 255)
        style = Paint.Style.STROKE
        strokeWidth = 4.0f
        strokeCap = Paint.Cap.ROUND
    }

    // Cọ viền mỏng cần Analog
    private val stickBasePaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.argb(90, 180, 190, 205)
        style = Paint.Style.STROKE
        strokeWidth = 3.0f
    }
    private val stickKnobPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.argb(130, 180, 190, 205)
        style = Paint.Style.STROKE
        strokeWidth = 3.0f
    }

    // -------------------------------------------------------------
    // Mô hình nút bấm và cần gạt
    // -------------------------------------------------------------

    private enum class ButtonType {
        DPAD_UP, DPAD_DOWN, DPAD_LEFT, DPAD_RIGHT,
        FACE_TRIANGLE, FACE_SQUARE, FACE_CIRCLE, FACE_CROSS,
        RECT_LABEL,
        SELECT, START
    }

    private data class TouchButton(
        val mask: Int,
        val type: ButtonType,
        val label: String = "",
        val bounds: RectF = RectF(),
        val center: PointF = PointF(),
        val radius: Float = 0f,
        val path: Path? = null
    )

    private class AnalogStick {
        val center = PointF()
        var baseRadius = 0f
        var knobRadius = 0f
        var maxDistance = 0f

        val knobPos = PointF()
        var activePointerId = -1
        var isDragging = false
    }

    private val buttons = mutableListOf<TouchButton>()
    private val leftStick = AnalogStick()
    private val rightStick = AnalogStick()

    // Multi-touch tracking: pointerId -> Set các bitmask đang chạm
    private val pointerButtonsMap = mutableMapOf<Int, Int>()

    override fun onSizeChanged(w: Int, h: Int, oldw: Int, oldh: Int) {
        super.onSizeChanged(w, h, oldw, oldh)
        recalculateLayout(w.toFloat(), h.toFloat())
    }

    /**
     * Tính toán vị trí tất cả các phím điều khiển theo tỉ lệ chuẩn xác từ ảnh chụp DamonPS2 PRO.
     */
    private fun recalculateLayout(w: Float, h: Float) {
        buttons.clear()

        // Tỉ lệ chuẩn theo chiều cao màn hình (Responsive landscape)
        val unit = h

        // -------------------------------------------------------------
        // 1. CỤM D-PAD (Bên trái, tâm X ≈ 10.2%, Y ≈ 44.8%)
        // -------------------------------------------------------------
        val dpadCenterX = w * 0.102f
        val dpadCenterY = h * 0.448f
        val dpadSpread = unit * 0.088f
        val dpadBtnW = unit * 0.080f
        val dpadBtnH = unit * 0.095f

        // D-Pad Up
        val upBounds = RectF(
            dpadCenterX - dpadBtnW * 0.5f,
            dpadCenterY - dpadSpread - dpadBtnH * 0.5f,
            dpadCenterX + dpadBtnW * 0.5f,
            dpadCenterY - dpadSpread + dpadBtnH * 0.5f
        )
        val upPath = createDpadArrowPath(upBounds, Direction.UP)
        buttons.add(TouchButton(PS2PadConstants.BTN_UP, ButtonType.DPAD_UP, "UP", upBounds, PointF(dpadCenterX, dpadCenterY - dpadSpread), dpadBtnW, upPath))

        // D-Pad Down
        val downBounds = RectF(
            dpadCenterX - dpadBtnW * 0.5f,
            dpadCenterY + dpadSpread - dpadBtnH * 0.5f,
            dpadCenterX + dpadBtnW * 0.5f,
            dpadCenterY + dpadSpread + dpadBtnH * 0.5f
        )
        val downPath = createDpadArrowPath(downBounds, Direction.DOWN)
        buttons.add(TouchButton(PS2PadConstants.BTN_DOWN, ButtonType.DPAD_DOWN, "DOWN", downBounds, PointF(dpadCenterX, dpadCenterY + dpadSpread), dpadBtnW, downPath))

        // D-Pad Left
        val leftBounds = RectF(
            dpadCenterX - dpadSpread - dpadBtnH * 0.5f,
            dpadCenterY - dpadBtnW * 0.5f,
            dpadCenterX - dpadSpread + dpadBtnH * 0.5f,
            dpadCenterY + dpadBtnW * 0.5f
        )
        val leftPath = createDpadArrowPath(leftBounds, Direction.LEFT)
        buttons.add(TouchButton(PS2PadConstants.BTN_LEFT, ButtonType.DPAD_LEFT, "LEFT", leftBounds, PointF(dpadCenterX - dpadSpread, dpadCenterY), dpadBtnW, leftPath))

        // D-Pad Right
        val rightBounds = RectF(
            dpadCenterX + dpadSpread - dpadBtnH * 0.5f,
            dpadCenterY - dpadBtnW * 0.5f,
            dpadCenterX + dpadSpread + dpadBtnH * 0.5f,
            dpadCenterY + dpadBtnW * 0.5f
        )
        val rightPath = createDpadArrowPath(rightBounds, Direction.RIGHT)
        buttons.add(TouchButton(PS2PadConstants.BTN_RIGHT, ButtonType.DPAD_RIGHT, "RIGHT", rightBounds, PointF(dpadCenterX + dpadSpread, dpadCenterY), dpadBtnW, rightPath))

        // -------------------------------------------------------------
        // 2. CẦN ANALOG TRÁI (Nằm dưới D-Pad: X ≈ 10.2%, Y ≈ 79.0%)
        // -------------------------------------------------------------
        leftStick.center.set(w * 0.102f, h * 0.790f)
        leftStick.baseRadius = unit * 0.145f
        leftStick.knobRadius = unit * 0.082f
        leftStick.maxDistance = leftStick.baseRadius - leftStick.knobRadius * 0.25f
        leftStick.knobPos.set(leftStick.center.x, leftStick.center.y)

        // -------------------------------------------------------------
        // 3. NÚT L3 (Góc dưới cùng bên trái: X ≈ 3.0%, Y ≈ 96.3%)
        // -------------------------------------------------------------
        val l3W = unit * 0.095f
        val l3H = unit * 0.062f
        val l3CenterX = w * 0.032f
        val l3CenterY = h * 0.963f
        val l3Bounds = RectF(l3CenterX - l3W * 0.5f, l3CenterY - l3H * 0.5f, l3CenterX + l3W * 0.5f, l3CenterY + l3H * 0.5f)
        buttons.add(TouchButton(PS2PadConstants.BTN_L3, ButtonType.RECT_LABEL, "L3", l3Bounds, PointF(l3CenterX, l3CenterY)))

        // -------------------------------------------------------------
        // 4. CỤM NÚT VAI TRÁI L2 & L1 (Xếp dọc: L2 ở trên, L1 ở dưới)
        // -------------------------------------------------------------
        val shoulderW = unit * 0.135f
        val shoulderH = unit * 0.062f

        // L2 (Trên: X ≈ 25.0%, Y ≈ 83.1%)
        val l2CenterX = w * 0.250f
        val l2CenterY = h * 0.831f
        val l2Bounds = RectF(l2CenterX - shoulderW * 0.5f, l2CenterY - shoulderH * 0.5f, l2CenterX + shoulderW * 0.5f, l2CenterY + shoulderH * 0.5f)
        buttons.add(TouchButton(PS2PadConstants.BTN_L2, ButtonType.RECT_LABEL, "L2", l2Bounds, PointF(l2CenterX, l2CenterY)))

        // L1 (Dưới: X ≈ 26.5%, Y ≈ 94.0%)
        val l1CenterX = w * 0.265f
        val l1CenterY = h * 0.940f
        val l1Bounds = RectF(l1CenterX - shoulderW * 0.5f, l1CenterY - shoulderH * 0.5f, l1CenterX + shoulderW * 0.5f, l1CenterY + shoulderH * 0.5f)
        buttons.add(TouchButton(PS2PadConstants.BTN_L1, ButtonType.RECT_LABEL, "L1", l1Bounds, PointF(l1CenterX, l1CenterY)))

        // -------------------------------------------------------------
        // 5. CỤM NÚT SELECT & START (Ở giữa dưới màn hình)
        // -------------------------------------------------------------
        val selectW = unit * 0.085f
        val selectH = unit * 0.055f
        val selectCenterX = w * 0.436f
        val selectCenterY = h * 0.940f
        val selectBounds = RectF(selectCenterX - selectW * 0.5f, selectCenterY - selectH * 0.5f, selectCenterX + selectW * 0.5f, selectCenterY + selectH * 0.5f)
        buttons.add(TouchButton(PS2PadConstants.BTN_SELECT, ButtonType.SELECT, "SELECT", selectBounds, PointF(selectCenterX, selectCenterY)))

        val startW = unit * 0.090f
        val startH = unit * 0.060f
        val startCenterX = w * 0.535f
        val startCenterY = h * 0.935f
        val startBounds = RectF(startCenterX - startW * 0.5f, startCenterY - startH * 0.5f, startCenterX + startW * 0.5f, startCenterY + startH * 0.5f)
        buttons.add(TouchButton(PS2PadConstants.BTN_START, ButtonType.START, "START", startBounds, PointF(startCenterX, startCenterY)))

        // -------------------------------------------------------------
        // 6. CỤM NÚT VAI PHẢI R2 & R1 (Xếp dọc đối xứng: R2 ở trên, R1 ở dưới)
        // -------------------------------------------------------------
        // R2 (Trên: X ≈ 73.0%, Y ≈ 82.7%)
        val r2CenterX = w * 0.730f
        val r2CenterY = h * 0.827f
        val r2Bounds = RectF(r2CenterX - shoulderW * 0.5f, r2CenterY - shoulderH * 0.5f, r2CenterX + shoulderW * 0.5f, r2CenterY + shoulderH * 0.5f)
        buttons.add(TouchButton(PS2PadConstants.BTN_R2, ButtonType.RECT_LABEL, "R2", r2Bounds, PointF(r2CenterX, r2CenterY)))

        // R1 (Dưới: X ≈ 73.3%, Y ≈ 95.0%)
        val r1CenterX = w * 0.733f
        val r1CenterY = h * 0.950f
        val r1Bounds = RectF(r1CenterX - shoulderW * 0.5f, r1CenterY - shoulderH * 0.5f, r1CenterX + shoulderW * 0.5f, r1CenterY + shoulderH * 0.5f)
        buttons.add(TouchButton(PS2PadConstants.BTN_R1, ButtonType.RECT_LABEL, "R1", r1Bounds, PointF(r1CenterX, r1CenterY)))

        // -------------------------------------------------------------
        // 7. CỤM 4 NÚT HÌNH BIỂU TƯỢNG PLAYSTATION (Tâm X ≈ 93.2%, Y ≈ 46.5%)
        // -------------------------------------------------------------
        val faceCenterX = w * 0.932f
        val faceCenterY = h * 0.465f
        val faceSpread = unit * 0.105f
        val faceBtnRadius = unit * 0.070f

        // △ Tam giác (Top: X ≈ 93.2%, Y ≈ 36.0%)
        val trianglePt = PointF(faceCenterX, faceCenterY - faceSpread)
        buttons.add(TouchButton(
            PS2PadConstants.BTN_TRIANGLE, ButtonType.FACE_TRIANGLE, "△",
            RectF(trianglePt.x - faceBtnRadius, trianglePt.y - faceBtnRadius, trianglePt.x + faceBtnRadius, trianglePt.y + faceBtnRadius),
            trianglePt, faceBtnRadius
        ))

        // ▢ Vuông (Left: X ≈ 82.7%, Y ≈ 46.5%)
        val squarePt = PointF(faceCenterX - faceSpread, faceCenterY)
        buttons.add(TouchButton(
            PS2PadConstants.BTN_SQUARE, ButtonType.FACE_SQUARE, "▢",
            RectF(squarePt.x - faceBtnRadius, squarePt.y - faceBtnRadius, squarePt.x + faceBtnRadius, squarePt.y + faceBtnRadius),
            squarePt, faceBtnRadius
        ))

        // ◯ Tròn (Right: X ≈ 103.7%, Y ≈ 46.5%)
        val circlePt = PointF(faceCenterX + faceSpread, faceCenterY)
        buttons.add(TouchButton(
            PS2PadConstants.BTN_CIRCLE, ButtonType.FACE_CIRCLE, "◯",
            RectF(circlePt.x - faceBtnRadius, circlePt.y - faceBtnRadius, circlePt.x + faceBtnRadius, circlePt.y + faceBtnRadius),
            circlePt, faceBtnRadius
        ))

        // ✕ Cross (Bottom: X ≈ 93.2%, Y ≈ 57.0%)
        val crossPt = PointF(faceCenterX, faceCenterY + faceSpread)
        buttons.add(TouchButton(
            PS2PadConstants.BTN_CROSS, ButtonType.FACE_CROSS, "✕",
            RectF(crossPt.x - faceBtnRadius, crossPt.y - faceBtnRadius, crossPt.x + faceBtnRadius, crossPt.y + faceBtnRadius),
            crossPt, faceBtnRadius
        ))

        // -------------------------------------------------------------
        // 8. CẦN ANALOG PHẢI (Nằm dưới cụm Face Buttons: X ≈ 93.2%, Y ≈ 79.0%)
        // -------------------------------------------------------------
        rightStick.center.set(w * 0.932f, h * 0.790f)
        rightStick.baseRadius = unit * 0.145f
        rightStick.knobRadius = unit * 0.082f
        rightStick.maxDistance = rightStick.baseRadius - rightStick.knobRadius * 0.25f
        rightStick.knobPos.set(rightStick.center.x, rightStick.center.y)

        // -------------------------------------------------------------
        // 9. NÚT R3 (Góc dưới cùng bên phải: X ≈ 96.8%, Y ≈ 96.3%)
        // -------------------------------------------------------------
        val r3W = unit * 0.095f
        val r3H = unit * 0.062f
        val r3CenterX = w * 0.968f
        val r3CenterY = h * 0.963f
        val r3Bounds = RectF(r3CenterX - r3W * 0.5f, r3CenterY - r3H * 0.5f, r3CenterX + r3W * 0.5f, r3CenterY + r3H * 0.5f)
        buttons.add(TouchButton(PS2PadConstants.BTN_R3, ButtonType.RECT_LABEL, "R3", r3Bounds, PointF(r3CenterX, r3CenterY)))
    }

    private enum class Direction { UP, DOWN, LEFT, RIGHT }

    /**
     * Tạo Path hình mũi tên D-Pad PlayStation đặc trưng (hình ngũ giác viền ngoài bo cong nhẹ).
     */
    private fun createDpadArrowPath(r: RectF, dir: Direction): Path {
        val p = Path()
        val w = r.width()
        val h = r.height()
        val corner = 8f

        when (dir) {
            Direction.UP -> {
                p.moveTo(r.left + corner, r.bottom)
                p.lineTo(r.left, r.top + h * 0.45f)
                p.lineTo(r.centerX(), r.top)
                p.lineTo(r.right, r.top + h * 0.45f)
                p.lineTo(r.right - corner, r.bottom)
                p.close()
            }
            Direction.DOWN -> {
                p.moveTo(r.left + corner, r.top)
                p.lineTo(r.left, r.bottom - h * 0.45f)
                p.lineTo(r.centerX(), r.bottom)
                p.lineTo(r.right, r.bottom - h * 0.45f)
                p.lineTo(r.right - corner, r.top)
                p.close()
            }
            Direction.LEFT -> {
                p.moveTo(r.right, r.top + corner)
                p.lineTo(r.left + w * 0.45f, r.top)
                p.lineTo(r.left, r.centerY())
                p.lineTo(r.left + w * 0.45f, r.bottom)
                p.lineTo(r.right, r.bottom - corner)
                p.close()
            }
            Direction.RIGHT -> {
                p.moveTo(r.left, r.top + corner)
                p.lineTo(r.right - w * 0.45f, r.top)
                p.lineTo(r.right, r.centerY())
                p.lineTo(r.right - w * 0.45f, r.bottom)
                p.lineTo(r.left, r.bottom - corner)
                p.close()
            }
        }
        return p
    }

    // -------------------------------------------------------------
    // Vẽ giao diện (onDraw)
    // -------------------------------------------------------------

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)

        // 1. Vẽ Watermark nhỏ gọn ở góc trên bên trái
        canvas.drawText("PS2T EMULATOR", 20f, 26f, watermarkPaint)

        // 2. Vẽ hai cần Analog (Left & Right)
        drawAnalogStick(canvas, leftStick)
        drawAnalogStick(canvas, rightStick)

        // 3. Vẽ tất cả các nút bấm
        for (btn in buttons) {
            val isPressed = (currentButtonMask and btn.mask) != 0
            when (btn.type) {
                ButtonType.DPAD_UP, ButtonType.DPAD_DOWN, ButtonType.DPAD_LEFT, ButtonType.DPAD_RIGHT -> {
                    drawDpadButton(canvas, btn, isPressed)
                }
                ButtonType.FACE_TRIANGLE -> {
                    drawFaceButton(canvas, btn, isPressed, trianglePaint) { cx, cy, sz ->
                        drawTriangleIcon(canvas, cx, cy, sz, if (isPressed) pressedStrokePaint else trianglePaint)
                    }
                }
                ButtonType.FACE_SQUARE -> {
                    drawFaceButton(canvas, btn, isPressed, squarePaint) { cx, cy, sz ->
                        drawSquareIcon(canvas, cx, cy, sz, if (isPressed) pressedStrokePaint else squarePaint)
                    }
                }
                ButtonType.FACE_CIRCLE -> {
                    drawFaceButton(canvas, btn, isPressed, circlePaint) { cx, cy, sz ->
                        val r = sz * 0.72f
                        canvas.drawCircle(cx, cy, r, if (isPressed) pressedStrokePaint else circlePaint)
                    }
                }
                ButtonType.FACE_CROSS -> {
                    drawFaceButton(canvas, btn, isPressed, crossPaint) { cx, cy, sz ->
                        drawCrossIcon(canvas, cx, cy, sz, if (isPressed) pressedStrokePaint else crossPaint)
                    }
                }
                ButtonType.RECT_LABEL -> {
                    drawRectLabelButton(canvas, btn, isPressed)
                }
                ButtonType.SELECT -> {
                    drawSelectButton(canvas, btn, isPressed)
                }
                ButtonType.START -> {
                    drawStartButton(canvas, btn, isPressed)
                }
            }
        }
    }

    private fun drawDpadButton(canvas: Canvas, btn: TouchButton, isPressed: Boolean) {
        btn.path?.let { p ->
            val fill = if (isPressed) pressedFillPaint else fillPaint
            val stroke = if (isPressed) pressedStrokePaint else strokePaint
            canvas.drawPath(p, fill)
            canvas.drawPath(p, stroke)
        }
    }

    private fun drawFaceButton(
        canvas: Canvas,
        btn: TouchButton,
        isPressed: Boolean,
        tintPaint: Paint,
        drawIcon: (cx: Float, cy: Float, sz: Float) -> Unit
    ) {
        val cx = btn.center.x
        val cy = btn.center.y
        val r = btn.radius

        // Nền tròn
        if (isPressed) {
            val pressedColor = Color.argb(120, Color.red(tintPaint.color), Color.green(tintPaint.color), Color.blue(tintPaint.color))
            val p = Paint(fillPaint).apply { color = pressedColor }
            canvas.drawCircle(cx, cy, r, p)
            canvas.drawCircle(cx, cy, r, pressedStrokePaint)
        } else {
            canvas.drawCircle(cx, cy, r, fillPaint)
            canvas.drawCircle(cx, cy, r, strokePaint)
        }

        // Vẽ biểu tượng hình học bên trong
        drawIcon(cx, cy, r * 0.55f)
    }

    private fun drawTriangleIcon(canvas: Canvas, cx: Float, cy: Float, sz: Float, paint: Paint) {
        val p = Path().apply {
            moveTo(cx, cy - sz)
            lineTo(cx - sz * 0.95f, cy + sz * 0.75f)
            lineTo(cx + sz * 0.95f, cy + sz * 0.75f)
            close()
        }
        canvas.drawPath(p, paint)
    }

    private fun drawSquareIcon(canvas: Canvas, cx: Float, cy: Float, sz: Float, paint: Paint) {
        val half = sz * 0.75f
        val rect = RectF(cx - half, cy - half, cx + half, cy + half)
        canvas.drawRoundRect(rect, 4f, 4f, paint)
    }

    private fun drawCrossIcon(canvas: Canvas, cx: Float, cy: Float, sz: Float, paint: Paint) {
        val s = sz * 0.75f
        canvas.drawLine(cx - s, cy - s, cx + s, cy + s, paint)
        canvas.drawLine(cx + s, cy - s, cx - s, cy + s, paint)
    }

    private fun drawRectLabelButton(canvas: Canvas, btn: TouchButton, isPressed: Boolean) {
        val fill = if (isPressed) pressedFillPaint else fillPaint
        val stroke = if (isPressed) pressedStrokePaint else strokePaint
        val corner = 8f

        canvas.drawRoundRect(btn.bounds, corner, corner, fill)
        canvas.drawRoundRect(btn.bounds, corner, corner, stroke)

        val textY = btn.bounds.centerY() - (textPaint.descent() + textPaint.ascent()) / 2f
        canvas.drawText(btn.label, btn.bounds.centerX(), textY, textPaint)
    }

    private fun drawSelectButton(canvas: Canvas, btn: TouchButton, isPressed: Boolean) {
        val fill = if (isPressed) pressedFillPaint else fillPaint
        val stroke = if (isPressed) pressedStrokePaint else strokePaint
        val corner = 6f

        canvas.drawRoundRect(btn.bounds, corner, corner, fill)
        canvas.drawRoundRect(btn.bounds, corner, corner, stroke)
    }

    private fun drawStartButton(canvas: Canvas, btn: TouchButton, isPressed: Boolean) {
        val stroke = if (isPressed) pressedStrokePaint else strokePaint
        val fill = if (isPressed) pressedFillPaint else fillPaint

        // Nút Start là hình tam giác Play ▷ bo góc nhẹ
        val p = Path().apply {
            val left = btn.bounds.left + btn.bounds.width() * 0.15f
            val right = btn.bounds.right - btn.bounds.width() * 0.15f
            val top = btn.bounds.top + btn.bounds.height() * 0.10f
            val bottom = btn.bounds.bottom - btn.bounds.height() * 0.10f
            moveTo(left, top)
            lineTo(right, btn.bounds.centerY())
            lineTo(left, bottom)
            close()
        }
        canvas.drawPath(p, fill)
        canvas.drawPath(p, stroke)
    }

    private fun drawAnalogStick(canvas: Canvas, stick: AnalogStick) {
        // Vòng tròn đế ngoài
        canvas.drawCircle(stick.center.x, stick.center.y, stick.baseRadius, stickBasePaint)

        // Núm gạt tròn ở giữa
        val kx = stick.knobPos.x
        val ky = stick.knobPos.y
        val kr = stick.knobRadius

        // Vòng ngoài của knob
        canvas.drawCircle(kx, ky, kr, stickKnobPaint)
        // Vòng tròn lõm tâm của knob (thiết kế DualShock)
        canvas.drawCircle(kx, ky, kr * 0.55f, stickKnobPaint)
    }

    // -------------------------------------------------------------
    // Xử lý Cảm ứng Đa điểm (Multi-Touch Handling)
    // -------------------------------------------------------------

    override fun onTouchEvent(event: MotionEvent): Boolean {
        val actionMasked = event.actionMasked
        val actionIndex = event.actionIndex
        val pointerId = event.getPointerId(actionIndex)

        when (actionMasked) {
            MotionEvent.ACTION_DOWN, MotionEvent.ACTION_POINTER_DOWN -> {
                val x = event.getX(actionIndex)
                val y = event.getY(actionIndex)
                handlePointerDown(pointerId, x, y)
                notifyPadStateChanged()
                invalidate()
                return true
            }

            MotionEvent.ACTION_MOVE -> {
                for (i in 0 until event.pointerCount) {
                    val pid = event.getPointerId(i)
                    val x = event.getX(i)
                    val y = event.getY(i)
                    handlePointerMove(pid, x, y)
                }
                notifyPadStateChanged()
                invalidate()
                return true
            }

            MotionEvent.ACTION_POINTER_UP -> {
                handlePointerUp(pointerId)
                notifyPadStateChanged()
                invalidate()
                return true
            }

            MotionEvent.ACTION_UP, MotionEvent.ACTION_CANCEL -> {
                // Nhả tất cả các ngón tay
                pointerButtonsMap.clear()
                resetAnalogStick(leftStick)
                resetAnalogStick(rightStick)
                currentButtonMask = 0
                notifyPadStateChanged()
                invalidate()
                return true
            }
        }

        return super.onTouchEvent(event)
    }

    private fun handlePointerDown(pid: Int, x: Float, y: Float) {
        // 1. Kiểm tra cần Analog Trái
        if (!leftStick.isDragging && isInsideCircle(x, y, leftStick.center.x, leftStick.center.y, leftStick.baseRadius * 1.35f)) {
            leftStick.activePointerId = pid
            leftStick.isDragging = true
            updateStickKnob(leftStick, x, y)
            triggerHaptic()
            return
        }

        // 2. Kiểm tra cần Analog Phải
        if (!rightStick.isDragging && isInsideCircle(x, y, rightStick.center.x, rightStick.center.y, rightStick.baseRadius * 1.35f)) {
            rightStick.activePointerId = pid
            rightStick.isDragging = true
            updateStickKnob(rightStick, x, y)
            triggerHaptic()
            return
        }

        // 3. Kiểm tra các nút bấm
        val mask = hitTestButtons(x, y)
        if (mask != 0) {
            pointerButtonsMap[pid] = mask
            triggerHaptic()
        }
    }

    private fun handlePointerMove(pid: Int, x: Float, y: Float) {
        if (leftStick.isDragging && leftStick.activePointerId == pid) {
            updateStickKnob(leftStick, x, y)
            return
        }

        if (rightStick.isDragging && rightStick.activePointerId == pid) {
            updateStickKnob(rightStick, x, y)
            return
        }

        // Cập nhật vị trí nút bấm nếu ngón tay trượt qua lại
        val mask = hitTestButtons(x, y)
        if (mask != 0) {
            val oldMask = pointerButtonsMap[pid] ?: 0
            if (oldMask != mask) {
                pointerButtonsMap[pid] = mask
                triggerHaptic()
            }
        } else {
            pointerButtonsMap.remove(pid)
        }
    }

    private fun handlePointerUp(pid: Int) {
        if (leftStick.activePointerId == pid) {
            resetAnalogStick(leftStick)
        }
        if (rightStick.activePointerId == pid) {
            resetAnalogStick(rightStick)
        }
        pointerButtonsMap.remove(pid)
    }

    private fun resetAnalogStick(stick: AnalogStick) {
        stick.activePointerId = -1
        stick.isDragging = false
        stick.knobPos.set(stick.center.x, stick.center.y)
    }

    private fun updateStickKnob(stick: AnalogStick, x: Float, y: Float) {
        val dx = x - stick.center.x
        val dy = y - stick.center.y
        val dist = hypot(dx, dy)

        if (dist <= stick.maxDistance) {
            stick.knobPos.set(x, y)
        } else {
            val angle = atan2(dy, dx)
            stick.knobPos.set(
                stick.center.x + cos(angle) * stick.maxDistance,
                stick.center.y + sin(angle) * stick.maxDistance
            )
        }
    }

    private fun hitTestButtons(x: Float, y: Float): Int {
        var mask = 0
        // Padding cảm ứng mở rộng 35% để bấm cực kỳ mượt mà, không bị hụt phím
        val touchPadding = 1.35f

        for (btn in buttons) {
            when (btn.type) {
                ButtonType.FACE_TRIANGLE, ButtonType.FACE_SQUARE, ButtonType.FACE_CIRCLE, ButtonType.FACE_CROSS -> {
                    if (isInsideCircle(x, y, btn.center.x, btn.center.y, btn.radius * touchPadding)) {
                        mask = mask or btn.mask
                    }
                }
                else -> {
                    val expanded = RectF(btn.bounds).apply {
                        inset(-btn.bounds.width() * 0.20f, -btn.bounds.height() * 0.20f)
                    }
                    if (expanded.contains(x, y)) {
                        mask = mask or btn.mask
                    }
                }
            }
        }
        return mask
    }

    private fun isInsideCircle(px: Float, py: Float, cx: Float, cy: Float, radius: Float): Boolean {
        return hypot(px - cx, py - cy) <= radius
    }

    private fun triggerHaptic() {
        if (!enableHaptic) return
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                vibrator?.vibrate(VibrationEffect.createOneShot(12, VibrationEffect.DEFAULT_AMPLITUDE))
            } else {
                @Suppress("DEPRECATION")
                vibrator?.vibrate(12)
            }
        } catch (_: Exception) {}
    }

    private fun notifyPadStateChanged() {
        // Tổng hợp bitmask từ tất cả các ngón tay đang chạm
        var totalMask = 0
        for (m in pointerButtonsMap.values) {
            totalMask = totalMask or m
        }
        currentButtonMask = totalMask

        // Tính toán tọa độ LX, LY của cần gạt trái (0..255, 128 ở giữa)
        if (leftStick.isDragging) {
            val normX = (leftStick.knobPos.x - leftStick.center.x) / leftStick.maxDistance
            val normY = (leftStick.knobPos.y - leftStick.center.y) / leftStick.maxDistance
            currentLX = (128 + normX * 127).toInt().coerceIn(0, 255)
            currentLY = (128 + normY * 127).toInt().coerceIn(0, 255)
        } else {
            currentLX = PS2PadConstants.ANALOG_NEUTRAL
            currentLY = PS2PadConstants.ANALOG_NEUTRAL
        }

        // Tính toán tọa độ RX, RY của cần gạt phải (0..255, 128 ở giữa)
        if (rightStick.isDragging) {
            val normX = (rightStick.knobPos.x - rightStick.center.x) / rightStick.maxDistance
            val normY = (rightStick.knobPos.y - rightStick.center.y) / rightStick.maxDistance
            currentRX = (128 + normX * 127).toInt().coerceIn(0, 255)
            currentRY = (128 + normY * 127).toInt().coerceIn(0, 255)
        } else {
            currentRX = PS2PadConstants.ANALOG_NEUTRAL
            currentRY = PS2PadConstants.ANALOG_NEUTRAL
        }

        onPadStateChanged?.invoke(currentButtonMask, currentLX, currentLY, currentRX, currentRY)
    }
}
