package xyz.aethersx2.android

class SettingInfo(
    @JvmField var a: Int,
    @JvmField var b: String?,
    @JvmField var c: String?,
    @JvmField var d: String?,
    @JvmField var e: String?,
    @JvmField var f: String?,
    @JvmField var g: String?,
    @JvmField var h: String?,
    @JvmField var i: String?,
    @JvmField var j: Array<String>?,
    @JvmField var k: Float
) {
    companion object {
        const val TYPE_BOOLEAN = 0
        const val TYPE_INTEGER = 1
        const val TYPE_INTEGER_LIST = 2
        const val TYPE_FLOAT = 3
        const val TYPE_STRING = 4
        const val TYPE_STRING_LIST = 5
        const val TYPE_PATH = 6
    }
}
