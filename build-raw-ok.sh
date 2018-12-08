${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ \
		--target=aarch64-none-linux-android21 \
		--gcc-toolchain=${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/linux-x86_64  \
		-Dnative_lib_EXPORTS  \
		--sysroot ${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/linux-x86_64/sysroot \
		-g -DANDROID -fdata-sections -ffunction-sections -funwind-tables -fstack-protector-strong -no-canonical-prefixes \
		-Wa,--noexecstack -Wformat -Werror=format-security -stdlib=libc++  -g -O2                 \
		-fpic -ffunction-sections -fdata-sections -funwind-tables -fstack-protector-strong                \
		-frtti -fexceptions             \
		-fcolor-diagnostics -no-canonical-prefixes -femulated-tls -fvisibility=hidden -fvisibility-inlines-hidden               \
		-Werror=return-type -Werror=format-security               \
		-Wa,--noexecstack -Wformat              \
		-std=c++17  \
		-fPIC -MD -MT native-lib.cpp.o \
		-MF native-lib.cpp.o.d \
		-o native-lib.cpp.o \
		-c native-lib.cpp

${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ \
		--target=aarch64-none-linux-android21 \
		--gcc-toolchain=${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/linux-x86_64 \
		-fPIC --sysroot ${ANDROID_NDK_HOME}/toolchains/llvm/prebuilt/linux-x86_64/sysroot \
		-g -DANDROID -fdata-sections -ffunction-sections -funwind-tables -fstack-protector-strong -no-canonical-prefixes \
		-Wa,--noexecstack -Wformat -Werror=format-security -stdlib=libc++  -g -O2             \
		-fpic -ffunction-sections -fdata-sections -funwind-tables -fstack-protector-strong                \
		-frtti -fexceptions             \
		-fcolor-diagnostics -no-canonical-prefixes -femulated-tls -fvisibility=hidden -fvisibility-inlines-hidden               \
		-Werror=return-type -Werror=format-security               \
		-Wa,--noexecstack -Wformat              \
		-std=c++17  \
		-Wl,--exclude-libs,libgcc.a \
		-Wl,--exclude-libs,libatomic.a \
		-static-libstdc++ \
		-Wl,--build-id \
		-Wl,--warn-shared-textrel \
		-Wl,--fatal-warnings \
		-Wl,--no-undefined \
		-Qunused-arguments \
		-Wl,-z,noexecstack \
		-Wl,-z,relro \
		-Wl,-z,now           \
		-no-canonical-prefixes \
		-Wl,--build-id \
		-Wl,--no-undefined \
		-Wl,-z,noexecstack \
		-Wl,-z,relro \
		-Wl,-z,now               \
		-Wl,--warn-shared-textrel \
		-Wl,--fatal-warnings \
		-Wl,--gc-sections \
		-fno-limit-debug-info \
		-shared \
		-Wl,-soname,libnative-lib.so \
		-o libnative-lib.so \
		native-lib.cpp.o  \
		-llog -latomic -lm

