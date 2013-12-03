# Boost for Android

Scripts for compiling Boost for Android.

## Supports **ONLY**
  * Boost 1.55.0
  * Android NDK 9b
  * ABIs: armeabi, armeabi-v7a, x86

## Usage
    $ ./build-android.sh --abi=armeabi-v7a --ndk-root=/opt/android-ndk

This command will download and build boost against the NDK specified and output the final headers and libs and in the build folder.

For more info about usage and available commands use --help

