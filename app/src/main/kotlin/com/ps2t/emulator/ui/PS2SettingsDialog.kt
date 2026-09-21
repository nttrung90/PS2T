package com.ps2t.emulator.ui

import android.app.Dialog
import android.content.Context
import android.os.Bundle
import android.view.ViewGroup
import android.widget.*
import com.google.android.material.switchmaterial.SwitchMaterial
import com.ps2t.emulator.R
import com.ps2t.emulator.core.PreferencesManager

/**
 * Hộp thoại cài đặt toàn diện tất cả các tính năng của PCSX2:
 * - Đồ họa GS: Upscaling, FXAA, CAS Sharpness, Anisotropic, OSD FPS
 * - Hiệu năng Speedhacks: MTVU, Fast CDVD, EE Cycle Rate & Skip
 * - Bản vá & Cheats: Widescreen 16:9, No-Interlacing, Cheats, GameFixes
 * - Âm thanh SPU2: Volume, TimeStretch, Mute
 * - Phím ảo cảm ứng: Độ mờ Opacity, Rung Haptic
 */
class PS2SettingsDialog(
    context: Context,
    private val onSettingsApplied: (() -> Unit)? = null
) : Dialog(context, R.style.Theme_PS2TEmulator) {

    private val prefs = PreferencesManager(context)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.dialog_ps2_settings)
        window?.setLayout(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)

        setupViews()
    }

    private fun setupViews() {
        // Đồ họa
        val spinnerResolution = findViewById<Spinner>(R.id.spinnerResolution)
        val spinnerAnisotropic = findViewById<Spinner>(R.id.spinnerAnisotropic)
        val switchFxaa = findViewById<SwitchMaterial>(R.id.switchFxaa)
        val switchOsdFps = findViewById<SwitchMaterial>(R.id.switchOsdFps)
        val tvCasSharpnessLabel = findViewById<TextView>(R.id.tvCasSharpnessLabel)
        val seekCasSharpness = findViewById<SeekBar>(R.id.seekCasSharpness)

        // Speedhacks
        val switchMtvu = findViewById<SwitchMaterial>(R.id.switchMtvu)
        val switchFastCdvd = findViewById<SwitchMaterial>(R.id.switchFastCdvd)
        val spinnerEeCycleRate = findViewById<Spinner>(R.id.spinnerEeCycleRate)
        val spinnerEeCycleSkip = findViewById<Spinner>(R.id.spinnerEeCycleSkip)

        // Patches & Cheats
        val switchWidescreenPatch = findViewById<SwitchMaterial>(R.id.switchWidescreenPatch)
        val switchNoInterlace = findViewById<SwitchMaterial>(R.id.switchNoInterlace)
        val switchCheats = findViewById<SwitchMaterial>(R.id.switchCheats)
        val switchGameFixes = findViewById<SwitchMaterial>(R.id.switchGameFixes)

        // Âm thanh
        val switchTimeStretch = findViewById<SwitchMaterial>(R.id.switchTimeStretch)
        val switchMute = findViewById<SwitchMaterial>(R.id.switchMute)
        val tvVolumeLabel = findViewById<TextView>(R.id.tvVolumeLabel)
        val seekVolume = findViewById<SeekBar>(R.id.seekVolume)

        // Nút ảo
        val tvOpacityLabel = findViewById<TextView>(R.id.tvOpacityLabel)
        val seekOpacity = findViewById<SeekBar>(R.id.seekOpacity)
        val switchHaptic = findViewById<SwitchMaterial>(R.id.switchHaptic)

        val btnCloseSettings = findViewById<Button>(R.id.btnCloseSettings)

        // 1. Adapter Độ phân giải (1x Native .. 4x 2K)
        val resOptions = listOf(
            "1x Native (480p - Chuẩn gốc PS2)",
            "1.5x (540p)",
            "2x HD (720p - Khuyên dùng di động)",
            "2.5x (900p)",
            "3x Full HD (1080p)",
            "4x 2K Quad HD (1440p)"
        )
        val resAdapter = ArrayAdapter(context, android.R.layout.simple_spinner_dropdown_item, resOptions)
        spinnerResolution.adapter = resAdapter
        val currentScaleIdx = when (prefs.resolutionScale) {
            2 -> 2
            3 -> 4
            4 -> 5
            else -> 0
        }
        spinnerResolution.setSelection(currentScaleIdx)

        // 2. Adapter Lọc đẳng hướng (Anisotropic Filtering)
        val afOptions = listOf("Tắt (Bilinear chuẩn)", "2x", "4x", "8x", "16x")
        val afAdapter = ArrayAdapter(context, android.R.layout.simple_spinner_dropdown_item, afOptions)
        spinnerAnisotropic.adapter = afAdapter
        val currentAfIdx = when (prefs.anisotropicFiltering) {
            2 -> 1
            4 -> 2
            8 -> 3
            16 -> 4
            else -> 0
        }
        spinnerAnisotropic.setSelection(currentAfIdx)

        // 3. Adapter EE Cycle Rate (-2 .. +2)
        val eeRateOptions = listOf(
            "-2 (Hạ xung sâu 50% - cho máy rất yếu)",
            "-1 (Hạ xung nhẹ 75%)",
            "0 (Chuẩn gốc 100% 294MHz)",
            "+1 (Ép xung nhẹ 130%)",
            "+2 (Ép xung tối đa 180% - cho game nặng)"
        )
        val eeRateAdapter = ArrayAdapter(context, android.R.layout.simple_spinner_dropdown_item, eeRateOptions)
        spinnerEeCycleRate.adapter = eeRateAdapter
        spinnerEeCycleRate.setSelection((prefs.eeCycleRate + 2).coerceIn(0, 4))

        // 4. Adapter EE Cycle Skip (0..3)
        val eeSkipOptions = listOf(
            "0 (Tắt nhảy khung hình)",
            "1 (Nhảy nhẹ khi lag)",
            "2 (Nhảy trung bình)",
            "3 (Nhảy tối đa)"
        )
        val eeSkipAdapter = ArrayAdapter(context, android.R.layout.simple_spinner_dropdown_item, eeSkipOptions)
        spinnerEeCycleSkip.adapter = eeSkipAdapter
        spinnerEeCycleSkip.setSelection(prefs.eeCycleSkip.coerceIn(0, 3))

        // Gán trạng thái hiện tại
        switchFxaa.isChecked = prefs.isFxaaEnabled
        switchOsdFps.isChecked = prefs.isOsdFpsEnabled
        seekCasSharpness.progress = prefs.casSharpness
        tvCasSharpnessLabel.text = "Độ nét AMD FidelityFX CAS: ${prefs.casSharpness}%"

        switchMtvu.isChecked = prefs.isMtvuEnabled
        switchFastCdvd.isChecked = prefs.isFastCdvdEnabled

        switchWidescreenPatch.isChecked = prefs.isWidescreenPatchEnabled
        switchNoInterlace.isChecked = prefs.isNoInterlaceEnabled
        switchCheats.isChecked = prefs.isCheatsEnabled
        switchGameFixes.isChecked = prefs.isGameFixesEnabled

        switchTimeStretch.isChecked = prefs.isTimeStretchEnabled
        switchMute.isChecked = prefs.isAudioMuted
        seekVolume.progress = prefs.audioVolume
        tvVolumeLabel.text = "Âm lượng: ${prefs.audioVolume}%"

        seekOpacity.progress = prefs.controllerOpacity
        tvOpacityLabel.text = "Độ mờ phím ảo (Opacity): ${prefs.controllerOpacity}%"
        switchHaptic.isChecked = prefs.isHapticEnabled

        // Lắng nghe thay đổi Slider
        seekCasSharpness.setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
            override fun onProgressChanged(seekBar: SeekBar?, progress: Int, fromUser: Boolean) {
                tvCasSharpnessLabel.text = "Độ nét AMD FidelityFX CAS: $progress%"
            }
            override fun onStartTrackingTouch(seekBar: SeekBar?) {}
            override fun onStopTrackingTouch(seekBar: SeekBar?) {}
        })

        seekVolume.setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
            override fun onProgressChanged(seekBar: SeekBar?, progress: Int, fromUser: Boolean) {
                tvVolumeLabel.text = "Âm lượng: $progress%"
            }
            override fun onStartTrackingTouch(seekBar: SeekBar?) {}
            override fun onStopTrackingTouch(seekBar: SeekBar?) {}
        })

        seekOpacity.setOnSeekBarChangeListener(object : SeekBar.OnSeekBarChangeListener {
            override fun onProgressChanged(seekBar: SeekBar?, progress: Int, fromUser: Boolean) {
                tvOpacityLabel.text = "Độ mờ phím ảo (Opacity): $progress%"
            }
            override fun onStartTrackingTouch(seekBar: SeekBar?) {}
            override fun onStopTrackingTouch(seekBar: SeekBar?) {}
        })

        // Lưu cài đặt khi nhấn Đóng
        btnCloseSettings.setOnClickListener {
            // Lưu Đồ họa
            prefs.resolutionScale = when (spinnerResolution.selectedItemPosition) {
                2 -> 2
                4 -> 3
                5 -> 4
                else -> 1
            }
            prefs.anisotropicFiltering = when (spinnerAnisotropic.selectedItemPosition) {
                1 -> 2
                2 -> 4
                3 -> 8
                4 -> 16
                else -> 0
            }
            prefs.isFxaaEnabled = switchFxaa.isChecked
            prefs.isOsdFpsEnabled = switchOsdFps.isChecked
            prefs.casSharpness = seekCasSharpness.progress

            // Lưu Speedhacks
            prefs.isMtvuEnabled = switchMtvu.isChecked
            prefs.isFastCdvdEnabled = switchFastCdvd.isChecked
            prefs.eeCycleRate = spinnerEeCycleRate.selectedItemPosition - 2
            prefs.eeCycleSkip = spinnerEeCycleSkip.selectedItemPosition

            // Lưu Patches
            prefs.isWidescreenPatchEnabled = switchWidescreenPatch.isChecked
            prefs.isNoInterlaceEnabled = switchNoInterlace.isChecked
            prefs.isCheatsEnabled = switchCheats.isChecked
            prefs.isGameFixesEnabled = switchGameFixes.isChecked

            // Lưu Âm thanh
            prefs.isTimeStretchEnabled = switchTimeStretch.isChecked
            prefs.isAudioMuted = switchMute.isChecked
            prefs.audioVolume = seekVolume.progress

            // Lưu Phím ảo
            prefs.controllerOpacity = seekOpacity.progress
            prefs.isHapticEnabled = switchHaptic.isChecked

            onSettingsApplied?.invoke()
            dismiss()
        }
    }
}
