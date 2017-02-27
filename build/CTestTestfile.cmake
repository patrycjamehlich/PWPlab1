# CMake generated Testfile for 
# Source directory: C:/MehlichPwPlab1/PWPlab1/src
# Build directory: C:/MehlichPwPlab1/PWPlab1/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(LaborkaPodstawowyTest "laborka")
add_test(LaborkaWynikSin45 "laborka" "45")
set_tests_properties(LaborkaWynikSin45 PROPERTIES  PASS_REGULAR_EXPRESSION "0[.,]7071")
add_test(laborka3sek "laborka")
set_tests_properties(laborka3sek PROPERTIES  TIMEOUT "3")
subdirs(trygonometria)
