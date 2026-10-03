package xyz.aethersx2.android

class Achievement(
    @JvmField val a: Int,
    @JvmField val b: String?,
    @JvmField val c: String?,
    @JvmField val d: String?,
    @JvmField val e: Int,
    @JvmField val f: Boolean
) {
    companion object {
        const val CATEGORY_LOCAL = 0
        const val CATEGORY_CORE = 3
        const val CATEGORY_UNOFFICIAL = 5
    }

    val id: Int get() = a
    val title: String get() = b ?: ""
    val description: String get() = c ?: ""
    val badge: String get() = d ?: ""
    val points: Int get() = e
    val unlocked: Boolean get() = f
}
