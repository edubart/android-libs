mkdir -p /opt/android-ndk/external/include || exit
mkdir -p /opt/android-ndk/external/libs || exit

cd boost-1.55.0
rm -rf buildi-armeabi build-armeabi-v7a build-armeabi libs
./build-android.sh --abi=x86
./build-android.sh --abi=armeabi
./build-android.sh --abi=armeabi-v7a
cp -R build-armeabi/lib/* /opt/android-ndk/external/armeabi/libs/
cp -R build-armeabi-v7a/lib/* /opt/android-ndk/external/armeabi/libs/
cp -R build-x86/lib/* /opt/android-ndk/external/armeabi/libs/
cp -R build-x86/include/boost-1_55/* /opt/android-ndk/external/armeabi/include/
cd ..

cd LuaJIT-2.0.2
./build_luajit.sh
rm -rf libs
cp -r libs /opt/android-ndk/external/
cp -r include /opt/android-ndk/external/


