cmake_minimum_required(VERSION 3.0)

project(glad VERSION 0.1.35 LANGUAGES C)

set(CMAKE_C_STANDARD 90)
set(CMAKE_C_STANDARD_REQUIRED 90)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -O3")
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -O0")

add_library(glad STATIC src/gl.c)
add_library(${PROJECT_NAME}::glad ALIAS glad)

target_include_directories(glad PUBLIC ${PROJECT_SOURCE_DIR}/include)
