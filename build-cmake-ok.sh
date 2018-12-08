export PATH=${ANDROID_HOME}/cmake/3.10.2.4988404/bin:$PATH

cmake . -G Ninja \
			  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
			  -DCMAKE_TOOLCHAIN_FILE=${ANDROID_NDK_HOME}/build/cmake/android.toolchain.cmake \
			  -DANDROID_ABI=arm64-v8a \
			  -DANDROID_NATIVE_API_LEVEL=21 \
			  -DANDROID_NDK=${ANDROID_NDK_HOME} \
			  -DCMAKE_BUILD_TYPE=Release

ninja -v


