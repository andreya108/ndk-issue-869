#### Description

Debug builds: linking c++ code fails with the following errors:

```
/home/andrey/android-sdk-linux/ndk-bundle/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/c++/v1/new:250: undefined reference to `operator new(unsigned long, std::align_val_t)'
/home/andrey/android-sdk-linux/ndk-bundle/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/c++/v1/new:250: undefined reference to `operator new(unsigned long, std::align_val_t)'
/home/andrey/android-sdk-linux/ndk-bundle/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/c++/v1/new:250: undefined reference to `operator new(unsigned long, std::align_val_t)'
```
c++17. Everything was fine with previous versions of ndk.

#### Environment Details

* NDK Version: r19 beta1, beta2
* Build system: cmake, standalone toolchain
* Host OS: Ubuntu 18.04.1 x86_64
* Compiler: clang
* ABI: arm64-v8a
* STL: libc++
* NDK API level: 21
