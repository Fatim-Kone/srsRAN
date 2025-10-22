if(EXISTS "/home/netsys/srsRAN_Project/build/tests/unittests/e1ap/cu_cp/e1ap_cu_cp_test")
  if(NOT EXISTS "/home/netsys/srsRAN_Project/build/tests/unittests/e1ap/cu_cp/e1ap_cu_cp_test[1]_tests.cmake" OR
     NOT "/home/netsys/srsRAN_Project/build/tests/unittests/e1ap/cu_cp/e1ap_cu_cp_test[1]_tests.cmake" IS_NEWER_THAN "/home/netsys/srsRAN_Project/build/tests/unittests/e1ap/cu_cp/e1ap_cu_cp_test" OR
     NOT "/home/netsys/srsRAN_Project/build/tests/unittests/e1ap/cu_cp/e1ap_cu_cp_test[1]_tests.cmake" IS_NEWER_THAN "${CMAKE_CURRENT_LIST_FILE}")
    include("/usr/share/cmake-3.22/Modules/GoogleTestAddTests.cmake")
    gtest_discover_tests_impl(
      TEST_EXECUTABLE [==[/home/netsys/srsRAN_Project/build/tests/unittests/e1ap/cu_cp/e1ap_cu_cp_test]==]
      TEST_EXECUTOR [==[]==]
      TEST_WORKING_DIR [==[/home/netsys/srsRAN_Project/build/tests/unittests/e1ap/cu_cp]==]
      TEST_EXTRA_ARGS [==[]==]
      TEST_PROPERTIES [==[LABELS;e1ap;e1ap_cu_cp]==]
      TEST_PREFIX [==[]==]
      TEST_SUFFIX [==[]==]
      TEST_FILTER [==[]==]
      NO_PRETTY_TYPES [==[FALSE]==]
      NO_PRETTY_VALUES [==[FALSE]==]
      TEST_LIST [==[e1ap_cu_cp_test_TESTS]==]
      CTEST_FILE [==[/home/netsys/srsRAN_Project/build/tests/unittests/e1ap/cu_cp/e1ap_cu_cp_test[1]_tests.cmake]==]
      TEST_DISCOVERY_TIMEOUT [==[15]==]
      TEST_XML_OUTPUT_DIR [==[]==]
    )
  endif()
  include("/home/netsys/srsRAN_Project/build/tests/unittests/e1ap/cu_cp/e1ap_cu_cp_test[1]_tests.cmake")
else()
  add_test(e1ap_cu_cp_test_NOT_BUILT e1ap_cu_cp_test_NOT_BUILT)
endif()
