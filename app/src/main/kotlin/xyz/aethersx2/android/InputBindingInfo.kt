package xyz.aethersx2.android

class InputBindingInfo(
    @JvmField var a: String?,
    @JvmField var b: String?,
    @JvmField var c: Int,
    @JvmField var d: Int,
    @JvmField var e: Int
) {
    companion object {
        const val TYPE_UNKNOWN = 0
        const val TYPE_BUTTON = 1
        const val TYPE_AXIS = 2
        const val TYPE_HALF_AXIS = 3
        const val TYPE_MOTOR = 4
        const val TYPE_POINTER = 5
        const val TYPE_KEYBOARD = 6
        const val TYPE_DEVICE = 7
        const val TYPE_MACRO = 8
    }
}
