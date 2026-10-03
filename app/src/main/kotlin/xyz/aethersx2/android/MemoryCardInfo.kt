package xyz.aethersx2.android

class MemoryCardInfo(
    @JvmField val c: String,
    @JvmField val d: String,
    @JvmField val e: Int,
    @JvmField val f: Int,
    @JvmField val g: Int
) : Comparable<MemoryCardInfo> {

    companion object {
        const val TYPE_EMPTY = 0
        const val TYPE_FILE = 1
        const val TYPE_FOLDER = 2

        const val FILE_TYPE_UNKNOWN = 0
        const val FILE_TYPE_PS2_8MB = 1
        const val FILE_TYPE_PS2_16MB = 2
        const val FILE_TYPE_PS2_32MB = 3
        const val FILE_TYPE_PS2_64MB = 4
        const val FILE_TYPE_PS1 = 5
    }

    val path: String get() = c
    val name: String get() = d
    val type: Int get() = e
    val fileType: Int get() = f
    val size: Int get() = g

    override fun compareTo(other: MemoryCardInfo): Int = d.compareTo(other.d)
}
