cmake_minimum_required(VERSION 3.24)

include(GNUInstallDirs)
include(CheckCXXCompilerFlag)

set(CMAKE_CXX_STANDARD 17)

project(demo)

set(TARGET_NAME demo)

add_subdirectory("Demo")
