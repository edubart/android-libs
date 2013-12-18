# gcc 4.8 needed for C++11
NDK_TOOLCHAIN_VERSION := 4.8
APP_ABI               := armeabi armeabi-v7a x86
APP_STL               := gnustl_static
APP_CFLAGS            := -D_REENTRANT
APP_CPPFLAGS          := -fexceptions -frtti -std=c++11
APP_PLATFORM          := android-10

# debug
#APP_OPTIM             := debug
#NDK_DEBUG             := 1

# release
APP_OPTIM             := release
APP_CFLAGS            += -O3 -ffast-math -funroll-loops -fomit-frame-pointer -fno-stack-protector

# hardware float only for armeabi-v7a (experimental)
#APP_CFLAGS            += -mhard-float -D_NDK_MATH_NO_SOFTFP=1
#APP_LDFLAGS           += -mhard-float -Wl,--no-warn-mismatch
