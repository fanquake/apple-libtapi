# TAPI base settings.

set(LLVM_ENABLE_PROJECTS "clang;tapi" CACHE STRING "")

set(LLVM_TARGETS_TO_BUILD CACHE STRING "")
set(LLVM_ENABLE_TIMESTAMPS OFF CACHE BOOL "Don't time-stamp shipping builds - this makes builds reproducible")
set(LLVM_EXTERNALIZE_DEBUGINFO OFF CACHE BOOL "")
set(LLVM_EXTERNALIZE_DEBUGINFO_SKIP_STRIP ON CACHE BOOL "")

set(LLVM_ENABLE_ZLIB ON CACHE BOOL "")
set(LLVM_ENABLE_TERMINFO OFF CACHE BOOL "")
set(LLVM_REQUIRES_RTTI OFF CACHE BOOL "")
set(LLVM_ENABLE_CRASH_OVERRIDES OFF CACHE BOOL "")
set(LLVM_ENABLE_LIBCXX ON CACHE BOOL "")

set(LLVM_INCLUDE_DOCS OFF CACHE BOOL "")
set(LLVM_INCLUDE_EXAMPLES OFF CACHE BOOL "")
set(LLVM_INCLUDE_TESTS ON CACHE BOOL "")
set(TAPI_INCLUDE_DOCS ON CACHE BOOL "")

set(LLVM_BUILD_TOOLS OFF CACHE BOOL "")
set(LLVM_BUILD_RUNTIME OFF CACHE BOOL "")

set(CLANG_ENABLE_ARCMT OFF CACHE BOOL "")
set(CLANG_ENABLE_STATIC_ANALYZER OFF CACHE BOOL "")

set(LLVM_ENABLE_LTO OFF CACHE BOOL "")
set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING "")
set(CMAKE_C_FLAGS   "-Wno-unknown-warning-option -Werror=unguarded-availability-new" CACHE STRING "")
set(CMAKE_CXX_FLAGS "-Wno-unknown-warning-option -Werror=unguarded-availability-new" CACHE STRING "")
set(CMAKE_C_FLAGS_DEBUG            "-O0 -g"              CACHE STRING "")
set(CMAKE_CXX_FLAGS_DEBUG          "-O0 -g"              CACHE STRING "")
set(CMAKE_C_FLAGS_RELEASE          "-Os    -DNDEBUG"     CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELEASE        "-Os    -DNDEBUG"     CACHE STRING "")
set(CMAKE_C_FLAGS_RELWITHDEBINFO   "-Os -g -DNDEBUG"     CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-Os -g -DNDEBUG"     CACHE STRING "")

set(LLVM_DISTRIBUTION_COMPONENTS
  tapi-headers
  libtapi
  tapi-clang-resource-headers
  tapi
  tapi-docs
  tapi-sdkdb
  CACHE STRING "")


# test args
set(LLVM_LIT_ARGS "--xunit-xml-output=testresults.xunit.xml -v" CACHE STRING "")