cmake_minimum_required (VERSION 2.6)
project (lab1)
add_executable(laborka main.cpp)

option (USE_TRIGONOMETRY_DEGREE
"Czy argumentami funkcji trygonometrycznych maja byc stopnie" ON)
if (USE_TRIGONOMETRY_DEGREE)
include_directories ("${PROJECT_SOURCE_DIR}/Trygonometria")
add_subdirectory(Trygonometria)
target_link_libraries (laborka Trygonometria)
endif (USE_TRIGONOMETRY_DEGREE)
configure_file (
"${PROJECT_SOURCE_DIR}/LaborkaConfig.h.in"
"${PROJECT_BINARY_DIR}/LaborkaConfig.h"
)
include_directories("${PROJECT_BINARY_DIR}")