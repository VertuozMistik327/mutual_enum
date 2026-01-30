cmake_minimum_required(VERSION 3.16)
project(mutual_enum VERSION 1.0 LANGUAGES CXX)

# C++ Standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Options
option(MUTUAL_ENUM_BUILD_TESTS "Build Tests" ON)
option(MUTUAL_WARNINGS_AS_ERRORS "Treat warnings as errors" ON)

# Include compiler warnings
include(cmake/CompilerWarnings.cmake)

# Lib Target
add_library(mutual_enum
	src/mutual_enum.cpp
)

target_include_directories(mutual_enum
	PUBLIC
		$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
		$<INSTALL_INTERFACE:include>
)

# Apply warnings
set_project_warnings(mutual_enum)

# Tests
if (MUTUAL_ENUM_BUILD_TESTS)
	enable_testing()
	add_subdirectory(tests)
endif()

