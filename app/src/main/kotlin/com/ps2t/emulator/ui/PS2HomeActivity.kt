package com.ps2t.emulator.ui

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.provider.OpenableColumns
import android.view.View
import android.widget.*
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat
import com.google.android.material.switchmaterial.SwitchMaterial
import com.ps2t.emulator.R
import com.ps2t.emulator.core.BiosManager
import com.ps2t.emulator.core.MemcardManager
import com.ps2t.emulator.core.PreferencesManager

/**
 * Màn hình chính (Home & Setup Wizard) trước khi vào chơi game PS2.
 * Cho phép thiết lập BIOS, chọn tệp game, cấu hình đồ họa và khởi chạy giả lập.
 */
class PS2HomeActivity : AppCompatActivity() {

    private lateinit var prefs: PreferencesManager
    private lateinit var biosManager: BiosManager
    private lateinit var memcardManager: MemcardManager

    private lateinit var tvBiosStatus: TextView
    private lateinit var layoutBiosInfo: View
    private lateinit var tvBiosName: TextView
    private lateinit var tvBiosDetails: TextView
    private lateinit var btnSelectBios: Button

    private lateinit var tvGameStatus: TextView
    private lateinit var layoutGameInfo: View
    private lateinit var tvGameTitle: TextView
    private lateinit var tvGameDetails: TextView
    private lateinit var btnSelectGame: Button

    private lateinit var tvCoreSettingsSummary: TextView
    private lateinit var btnOpenCoreSettings: Button

    private lateinit var tvMemcard1Status: TextView
    private lateinit var tvMemcard2Status: TextView
    private lateinit var btnCheckMemcards: Button

    private lateinit var rgAspectRatio: RadioGroup
    private lateinit var rbAspect43: RadioButton
    private lateinit var rbAspect169: RadioButton
    private lateinit var rgRenderer: RadioGroup
    private lateinit var rbRendererGLES: RadioButton
    private lateinit var rbRendererVulkan: RadioButton
    private lateinit var switchFastBoot: SwitchMaterial
    private lateinit var btnLaunchGame: Button

    // SAF File Pickers
    private val biosPickerLauncher = registerForActivityResult(
        ActivityResultContracts.OpenDocument()
    ) { uri: Uri? ->
        if (uri != null) {
            val imported = biosManager.importBiosFromUri(uri)
            if (imported != null) {
                Toast.makeText(this, getString(R.string.toast_bios_imported, imported.displayName), Toast.LENGTH_SHORT).show()
                updateBiosUI()
            } else {
                Toast.makeText(this, "Không thể đọc tệp BIOS đã chọn", Toast.LENGTH_SHORT).show()
            }
        }
    }

    private val gamePickerLauncher = registerForActivityResult(
        ActivityResultContracts.OpenDocument()
    ) { uri: Uri? ->
        if (uri != null) {
            val title = getFileNameFromUri(uri) ?: "game.iso"
            prefs.lastGameUri = uri.toString()
            prefs.lastGameTitle = title
            updateGameUI()
            Toast.makeText(this, "Đã chọn game: $title", Toast.LENGTH_SHORT).show()
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_ps2_home)

        prefs = PreferencesManager(this)
        biosManager = BiosManager(this)
        memcardManager = MemcardManager(this)

        initViews()
        setupListeners()
        updateBiosUI()
        updateGameUI()
        updateMemcardsUI()
        updateCoreSettingsSummary()
        loadSavedSettings()
    }

    override fun onResume() {
        super.onResume()
        updateBiosUI()
        updateGameUI()
        updateMemcardsUI()
        updateCoreSettingsSummary()
    }

    private fun initViews() {
        tvBiosStatus = findViewById(R.id.tvBiosStatus)
        layoutBiosInfo = findViewById(R.id.layoutBiosInfo)
        tvBiosName = findViewById(R.id.tvBiosName)
        tvBiosDetails = findViewById(R.id.tvBiosDetails)
        btnSelectBios = findViewById(R.id.btnSelectBios)

        tvGameStatus = findViewById(R.id.tvGameStatus)
        layoutGameInfo = findViewById(R.id.layoutGameInfo)
        tvGameTitle = findViewById(R.id.tvGameTitle)
        tvGameDetails = findViewById(R.id.tvGameDetails)
        btnSelectGame = findViewById(R.id.btnSelectGame)

        tvCoreSettingsSummary = findViewById(R.id.tvCoreSettingsSummary)
        btnOpenCoreSettings = findViewById(R.id.btnOpenCoreSettings)

        tvMemcard1Status = findViewById(R.id.tvMemcard1Status)
        tvMemcard2Status = findViewById(R.id.tvMemcard2Status)
        btnCheckMemcards = findViewById(R.id.btnCheckMemcards)

        rgAspectRatio = findViewById(R.id.rgAspectRatio)
        rbAspect43 = findViewById(R.id.rbAspect43)
        rbAspect169 = findViewById(R.id.rbAspect169)
        rgRenderer = findViewById(R.id.rgRenderer)
        rbRendererGLES = findViewById(R.id.rbRendererGLES)
        rbRendererVulkan = findViewById(R.id.rbRendererVulkan)
        switchFastBoot = findViewById(R.id.switchFastBoot)
        btnLaunchGame = findViewById(R.id.btnLaunchGame)
    }

    private fun setupListeners() {
        btnSelectBios.setOnClickListener {
            biosPickerLauncher.launch(arrayOf(
                "application/octet-stream",
                "application/x-bin",
                "*/*"
            ))
        }

        btnSelectGame.setOnClickListener {
            gamePickerLauncher.launch(arrayOf(
                "application/octet-stream",
                "application/x-iso9660-image",
                "*/*"
            ))
        }

        btnOpenCoreSettings.setOnClickListener {
            PS2SettingsDialog(this) {
                updateCoreSettingsSummary()
            }.show()
        }

        btnCheckMemcards.setOnClickListener {
            memcardManager.ensureMemcardsExist()
            updateMemcardsUI()
            Toast.makeText(this, "Đã kiểm tra và định dạng thẻ nhớ 8MB thành công!", Toast.LENGTH_SHORT).show()
        }

        rgAspectRatio.setOnCheckedChangeListener { _, checkedId ->
            prefs.aspectRatio = if (checkedId == R.id.rbAspect169) "16:9" else "4:3"
        }

        rgRenderer.setOnCheckedChangeListener { _, checkedId ->
            prefs.renderer = if (checkedId == R.id.rbRendererVulkan) "vulkan" else "opengl"
        }

        switchFastBoot.setOnCheckedChangeListener { _, isChecked ->
            prefs.isFastBoot = isChecked
        }

        btnLaunchGame.setOnClickListener {
            launchGame()
        }
    }

    private fun updateCoreSettingsSummary() {
        val resStr = when (prefs.resolutionScale) {
            2 -> "2x (720p HD)"
            3 -> "3x (1080p FHD)"
            4 -> "4x (1440p 2K)"
            else -> "1x Native"
        }
        val mtvuStr = if (prefs.isMtvuEnabled) "MTVU: Bật" else "MTVU: Tắt"
        val wsStr = if (prefs.isWidescreenPatchEnabled) "Widescreen 16:9" else "4:3 Gốc"
        val cheatStr = if (prefs.isCheatsEnabled) "Cheats: Bật" else "Cheats: Tắt"
        val afStr = if (prefs.anisotropicFiltering > 0) "${prefs.anisotropicFiltering}x AF" else "AF Tắt"

        tvCoreSettingsSummary.text = "GS: $resStr • $afStr • $mtvuStr • $wsStr • $cheatStr"
    }

    private fun updateMemcardsUI() {
        memcardManager.ensureMemcardsExist()
        if (memcardManager.isCard1Ready()) {
            tvMemcard1Status.text = "Slot 1: Mcd001.ps2 (8MB) - Sẵn sàng"
            tvMemcard1Status.setTextColor(ContextCompat.getColor(this, R.color.status_green))
        } else {
            tvMemcard1Status.text = "Slot 1: Chưa tạo thẻ nhớ"
            tvMemcard1Status.setTextColor(ContextCompat.getColor(this, R.color.status_red))
        }

        if (memcardManager.isCard2Ready()) {
            tvMemcard2Status.text = "Slot 2: Mcd002.ps2 (8MB) - Sẵn sàng"
            tvMemcard2Status.setTextColor(ContextCompat.getColor(this, R.color.status_green))
        } else {
            tvMemcard2Status.text = "Slot 2: Chưa tạo thẻ nhớ"
            tvMemcard2Status.setTextColor(ContextCompat.getColor(this, R.color.status_red))
        }
    }

    private fun updateBiosUI() {
        val bios = biosManager.getSelectedBios()
        if (bios != null) {
            tvBiosStatus.text = getString(R.string.bios_status_ready)
            tvBiosStatus.setTextColor(ContextCompat.getColor(this, R.color.status_green))
            layoutBiosInfo.visibility = View.VISIBLE
            tvBiosName.text = bios.displayName
            tvBiosDetails.text = "Kích thước: ${bios.sizeFormatted} • Vùng: ${bios.region}"
            btnSelectBios.text = "Đổi tệp BIOS khác"
        } else {
            tvBiosStatus.text = getString(R.string.bios_status_missing)
            tvBiosStatus.setTextColor(ContextCompat.getColor(this, R.color.status_red))
            layoutBiosInfo.visibility = View.GONE
            btnSelectBios.text = getString(R.string.btn_select_bios)
        }
    }

    private fun updateGameUI() {
        val gameUri = prefs.lastGameUri
        val gameTitle = prefs.lastGameTitle

        if (gameUri != null && gameTitle != null) {
            tvGameStatus.text = getString(R.string.game_status_selected)
            tvGameStatus.setTextColor(ContextCompat.getColor(this, R.color.ps_cross))
            layoutGameInfo.visibility = View.VISIBLE
            tvGameTitle.text = gameTitle
            tvGameDetails.text = "Tệp ảnh đĩa sẵn sàng nạp vào Virtual Machine"
            btnSelectGame.text = "Đổi tệp Game khác"
        } else {
            tvGameStatus.text = getString(R.string.game_status_none)
            tvGameStatus.setTextColor(ContextCompat.getColor(this, R.color.text_secondary))
            layoutGameInfo.visibility = View.GONE
            btnSelectGame.text = getString(R.string.btn_select_game)
        }
    }

    private fun loadSavedSettings() {
        if (prefs.aspectRatio == "16:9") {
            rbAspect169.isChecked = true
        } else {
            rbAspect43.isChecked = true
        }

        if (prefs.renderer == "vulkan") {
            rbRendererVulkan.isChecked = true
        } else {
            rbRendererGLES.isChecked = true
        }

        switchFastBoot.isChecked = prefs.isFastBoot
    }

    private fun launchGame() {
        val bios = biosManager.getSelectedBios()
        if (bios == null) {
            Toast.makeText(this, getString(R.string.toast_need_bios), Toast.LENGTH_LONG).show()
            return
        }

        val gameUri = prefs.lastGameUri
        if (gameUri == null) {
            Toast.makeText(this, getString(R.string.toast_need_game), Toast.LENGTH_LONG).show()
            return
        }

        val intent = Intent(this, PS2EmulatorActivity::class.java).apply {
            putExtra(PS2EmulatorActivity.EXTRA_GAME_URI, gameUri)
            putExtra(PS2EmulatorActivity.EXTRA_BIOS_PATH, bios.file.absolutePath)
            putExtra(PS2EmulatorActivity.EXTRA_ASPECT_RATIO, prefs.aspectRatio)
            putExtra(PS2EmulatorActivity.EXTRA_FAST_BOOT, prefs.isFastBoot)
        }
        startActivity(intent)
    }

    private fun getFileNameFromUri(uri: Uri): String? {
        var name: String? = null
        try {
            val cursor = contentResolver.query(uri, null, null, null, null)
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
}
