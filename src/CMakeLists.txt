cmake_minimum_required (VERSION 2.6)
project (lab1)
add_executable(laborka main.cpp)

include_directories ("${PROJECT_SOURCE_DIR}/Trygonometria")
add_subdirectory (Trygonometria)
target_link_libraries (laborka Trygonometria)