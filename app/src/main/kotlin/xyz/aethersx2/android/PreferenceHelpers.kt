package xyz.aethersx2.android

import android.content.SharedPreferences

object PreferenceHelpers {
    @JvmStatic
    fun getStringSet(prefs: SharedPreferences, key: String): Set<String>? {
        return prefs.getStringSet(key, null)
    }

    @JvmStatic
    fun addToStringList(prefs: SharedPreferences, key: String, value: String): Boolean {
        val set = prefs.getStringSet(key, null)?.toMutableSet() ?: mutableSetOf()
        val added = set.add(value)
        prefs.edit().putStringSet(key, set).apply()
        return added
    }

    @JvmStatic
    fun removeFromStringList(prefs: SharedPreferences, key: String, value: String): Boolean {
        val set = prefs.getStringSet(key, null)?.toMutableSet() ?: return false
        val removed = set.remove(value)
        prefs.edit().putStringSet(key, set).apply()
        return removed
    }

    @JvmStatic
    fun setStringList(prefs: SharedPreferences, key: String, values: Array<String>) {
        prefs.edit().putStringSet(key, values.toSet()).apply()
    }

    @JvmStatic
    fun clearSection(prefs: SharedPreferences, prefix: String) {
        val editor = prefs.edit()
        for (k in prefs.all.keys) {
            if (k.startsWith(prefix)) {
                editor.remove(k)
            }
        }
        editor.apply()
    }
}
