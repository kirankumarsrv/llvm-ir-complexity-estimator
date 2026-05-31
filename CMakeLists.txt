cmake_minimum_required(VERSION 3.20)
project(LLVMComplexityEstimator CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# ---- Find LLVM 18 via explicit LLVM_DIR --------------------------------
set(LLVM_DIR /usr/lib/llvm-18/lib/cmake/llvm
    CACHE PATH "Path to LLVMConfig.cmake")
find_package(LLVM REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "  Includes : ${LLVM_INCLUDE_DIRS}")

include_directories(${LLVM_INCLUDE_DIRS})
separate_arguments(LLVM_DEFINITIONS_LIST NATIVE_COMMAND ${LLVM_DEFINITIONS})
add_definitions(${LLVM_DEFINITIONS_LIST})

# Include project headers
include_directories(${CMAKE_SOURCE_DIR}/include)

# ---- Map LLVM components to libraries ----------------------------------
llvm_map_components_to_libnames(LLVM_LIBS
  Core
  IRReader
  Analysis
  Support
  BitReader
  MC
  MCParser
  Object
  Target
)

# ---- Feature extractor static library ----------------------------------
add_library(IRComplexityLib STATIC
  src/FeatureExtractor.cpp
)
target_link_libraries(IRComplexityLib PUBLIC ${LLVM_LIBS})
if(NOT LLVM_ENABLE_RTTI)
  target_compile_options(IRComplexityLib PUBLIC -fno-rtti)
endif()

# ---- CLI executable ----------------------------------------------------
add_executable(IRComplexityExtractor
  src/main.cpp
)
target_link_libraries(IRComplexityExtractor PRIVATE IRComplexityLib)

# ---- opt-loadable shared plugin ----------------------------------------
# The plugin MUST NOT statically pull in any LLVM symbols that are already
# present in the host opt/libLLVM.so.  If it does, global cl::opt objects
# (e.g. 'disable-i2p-p2i-opt') get registered twice and opt aborts.
#
# Fix: link only LLVMCore (header / type info) and tell the linker to
# exclude ALL archive members from the final .so.
add_library(IRComplexityPlugin MODULE
  src/FeatureExtractor.cpp
  src/Plugin.cpp
)
target_link_libraries(IRComplexityPlugin PRIVATE LLVMCore)
set_target_properties(IRComplexityPlugin PROPERTIES
  PREFIX ""
  LINK_FLAGS "-Wl,--exclude-libs,ALL"
)
if(NOT LLVM_ENABLE_RTTI)
  target_compile_options(IRComplexityPlugin PRIVATE -fno-rtti)
endif()

# ---- Tests -------------------------------------------------------------
add_subdirectory(test)

# ---- Install -----------------------------------------------------------
install(TARGETS IRComplexityExtractor DESTINATION bin)
install(TARGETS IRComplexityPlugin    DESTINATION lib)
install(FILES include/FeatureExtractor.h DESTINATION include)
