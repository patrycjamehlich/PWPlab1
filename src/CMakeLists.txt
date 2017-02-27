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
enable_testing()
add_test (LaborkaPodstawowyTest laborka)
add_test (LaborkaWynikSin45 laborka 45)
set_tests_properties (LaborkaWynikSin45
PROPERTIES PASS_REGULAR_EXPRESSION "0[.,]7071")

option (BUILD_TESTS "Czy chcesz zbudowac testy" ON)
if (BUILD_TESTS)
add_test (laborka3sek laborka)
set_tests_properties (laborka3sek
PROPERTIES TIMEOUT 3)
endif(BUILD_TESTS)