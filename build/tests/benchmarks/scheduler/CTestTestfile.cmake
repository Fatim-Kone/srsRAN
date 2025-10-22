# CMake generated Testfile for 
# Source directory: /home/netsys/srsRAN_Project/tests/benchmarks/scheduler
# Build directory: /home/netsys/srsRAN_Project/build/tests/benchmarks/scheduler
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(scheduler_no_ues_benchmark "scheduler_no_ues_benchmark")
set_tests_properties(scheduler_no_ues_benchmark PROPERTIES  _BACKTRACE_TRIPLES "/home/netsys/srsRAN_Project/tests/benchmarks/scheduler/CMakeLists.txt;27;add_test;/home/netsys/srsRAN_Project/tests/benchmarks/scheduler/CMakeLists.txt;0;")
add_test(scheduler_multi_ue_benchmark "scheduler_multi_ue_benchmark")
set_tests_properties(scheduler_multi_ue_benchmark PROPERTIES  _BACKTRACE_TRIPLES "/home/netsys/srsRAN_Project/tests/benchmarks/scheduler/CMakeLists.txt;31;add_test;/home/netsys/srsRAN_Project/tests/benchmarks/scheduler/CMakeLists.txt;0;")
set_directory_properties(PROPERTIES LABELS "sched|rtsan")
