cmake_minimum_required (VERSION 2.6)
project (lab1)
add_executable(laborka main.cpp)

include_directories("${PROJECT_SOURCE_DIR}/trygonometria")
add_subdirectory(trygonometria)
target_link_libraries(laborka trygonometria)