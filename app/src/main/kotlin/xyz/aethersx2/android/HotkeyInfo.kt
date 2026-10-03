package xyz.aethersx2.android

class HotkeyInfo(
    @JvmField var a: String?,
    @JvmField var b: String?,
    @JvmField var c: String?
) {
    val name: String get() = a ?: ""
    val title: String get() = b ?: ""
    val description: String get() = c ?: ""
}
