# cpp_lib_cmake_blueprint

A minimal example of a CMake-based C++ library project that builds on **Linux**, and can be consumed via `find_package()` after installation.

## Initial requirements

(Obviously can be changed in CMakeLists.txt)

- CMake 3.22+
- A C++17 compiler:
  - Linux: GCC or Clang

## Build

Out-of-source builds are recommended:

```bash
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
```

### Build a shared library

```bash
cmake -S . -B build -DBUILD_SHARED_LIBS=ON -DCMAKE_BUILD_TYPE=Release
cmake --build build
```

## Install

### Linux

```bash
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="$HOME/.local"
cmake --build build
cmake --install build
```

## Use from another CMake project

After installing, you can consume the library with:

```cmake
find_package(blank CONFIG REQUIRED)
target_link_libraries(your_app PRIVATE blank::blank)
```

If installed to a non-standard prefix, point CMake at it:

- Linux:

```bash
cmake -S . -B build -DCMAKE_PREFIX_PATH="$HOME/.local"
```

# TODO:

- Make it build on macOS and Windows too
- add test option
