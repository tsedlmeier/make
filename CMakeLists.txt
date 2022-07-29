cmake_minimum_required(VERSION 3.5)
project(Sample)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++17
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# Allow adding Debug and Release symbols
set(CMAKE_CXX_FLAGS_DEBUG ${C_CXX_DEBUG_FLAGS})
set(CMAKE_CXX_FLAGS_RELEASE ${C_CXX_RELEASE_FLAGS})

file(GLOB_RECURSE SOURCES 
	src/sample.cpp
)

set(TARGET_NAME Sample)

# Find external packages (alternative machanism: see pkg_config and cmake)
#find_package(Eigen3 REQUIRED)
#find_package(OpenCV REQUIRED)
#find_package(PkgConfig REQUIRED)
#find_package(Threads REQUIRED)
#find_package(Gstreamer REQUIRED)

# Include some special directories
#INCLUDE_DIRECTORIES("${EIGEN3_INCLUDE_DIR}")

add_executable(${TARGET_NAME} ${SOURCES})
#target_include_directories(${TARGET_NAME} PRIVATE ${GST_INCLUDE_DIRS} ${JPEG_INCLUDE_DIR} src/util)
#target_link_libraries(${TARGET_NAME} ${OpenCV_LIBS} ${JPEG_LIBRARIES} Threads::Threads Poco::Foundation Poco::Util)

install(TARGETS ${TARGET_NAME}
	DESTINATION lib/${PROJECT_NAME}
)

