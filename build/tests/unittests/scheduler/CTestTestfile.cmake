# CMake generated Testfile for 
# Source directory: /home/netsys/srsRAN_Project/tests/unittests/scheduler
# Build directory: /home/netsys/srsRAN_Project/build/tests/unittests/scheduler
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
include("/home/netsys/srsRAN_Project/build/tests/unittests/scheduler/scheduler_test_doubles_test[1]_include.cmake")
include("/home/netsys/srsRAN_Project/build/tests/unittests/scheduler/multiple_ue_sched_test[1]_include.cmake")
add_test(sched_no_ue_test "sched_no_ue_test")
set_tests_properties(sched_no_ue_test PROPERTIES  _BACKTRACE_TRIPLES "/home/netsys/srsRAN_Project/tests/unittests/scheduler/CMakeLists.txt;47;add_test;/home/netsys/srsRAN_Project/tests/unittests/scheduler/CMakeLists.txt;0;")
add_test(pdcch_resource_allocator_test "pdcch_resource_allocator_test")
set_tests_properties(pdcch_resource_allocator_test PROPERTIES  _BACKTRACE_TRIPLES "/home/netsys/srsRAN_Project/tests/unittests/scheduler/CMakeLists.txt;58;add_test;/home/netsys/srsRAN_Project/tests/unittests/scheduler/CMakeLists.txt;0;")
add_test(scheduler_test "scheduler_test")
set_tests_properties(scheduler_test PROPERTIES  _BACKTRACE_TRIPLES "/home/netsys/srsRAN_Project/tests/unittests/scheduler/CMakeLists.txt;78;add_test;/home/netsys/srsRAN_Project/tests/unittests/scheduler/CMakeLists.txt;0;")
add_test(scheduler_metrics_handler_test "scheduler_metrics_handler_test")
set_tests_properties(scheduler_metrics_handler_test PROPERTIES  _BACKTRACE_TRIPLES "/home/netsys/srsRAN_Project/tests/unittests/scheduler/CMakeLists.txt;108;add_test;/home/netsys/srsRAN_Project/tests/unittests/scheduler/CMakeLists.txt;0;")
subdirs("test_utils")
subdirs("support")
subdirs("cell")
subdirs("common_scheduling")
subdirs("ue_context")
subdirs("ue_scheduling")
subdirs("uci_and_pucch")
subdirs("policy")
subdirs("config")
subdirs("slicing")
subdirs("srs_scheduling")
set_directory_properties(PROPERTIES LABELS "sched")
