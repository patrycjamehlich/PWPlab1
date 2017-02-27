cmake_minimum_required (VERSION 2.6)
project (lab1)
add_executable(laborka main.cpp)

option (USE_TRIGONOMETRY_DEGREE
"Czy argumentami funkcji trygonometrycznych maja byc stopnie" ON)
if (USE_TRIGONOMETRY_DEGREE)
include_directories ("${PROJECT_SOURCE_DIR}/trygonometria")
add_subdirectory(Trygonometria)
target_link_libraries (laborka trygonometria)
endif (USE_TRIGONOMETRY_DEGREE)
configure_file (
"${PROJECT_SOURCE_DIR}/laborkaConfig.h.in"
"${PROJECT_BINARY_DIR}/laborkaConfig.h"
)
include_directories("${PROJECT_BINARY_DIR}")