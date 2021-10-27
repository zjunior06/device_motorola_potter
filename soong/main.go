package potter

import (
    "android/soong/android"
)

func init() {
    android.RegisterModuleType("motorola_potter_init_library_static", initLibraryFactory)
}
