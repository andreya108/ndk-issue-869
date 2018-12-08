cmake_minimum_required(VERSION 3.4.1)

project(native)

set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -O2 \
		-fpic -ffunction-sections -fdata-sections -funwind-tables -fstack-protector-strong \
		-frtti -fexceptions \
		-fcolor-diagnostics -no-canonical-prefixes -femulated-tls -fvisibility=hidden -fvisibility-inlines-hidden \
		-Werror=return-type -Werror=format-security \
		-Wa,--noexecstack -Wformat \
		-std=c++17 " )

set( CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} \
		-no-canonical-prefixes -Wl,--build-id -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now \
		-Wl,--warn-shared-textrel -Wl,--fatal-warnings -Wl,--gc-sections -fno-limit-debug-info")

add_library( native-lib SHARED native-lib.cpp)

target_link_libraries( native-lib log )
