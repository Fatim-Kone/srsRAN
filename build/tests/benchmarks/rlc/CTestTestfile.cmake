# CMake generated Testfile for 
# Source directory: /home/netsys/srsRAN_Project/tests/benchmarks/rlc
# Build directory: /home/netsys/srsRAN_Project/build/tests/benchmarks/rlc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(rlc_handle_status_report "rlc_handle_status_report")
set_tests_properties(rlc_handle_status_report PROPERTIES  LABELS "rlc" _BACKTRACE_TRIPLES "/home/netsys/srsRAN_Project/tests/benchmarks/rlc/CMakeLists.txt;25;add_test;/home/netsys/srsRAN_Project/tests/benchmarks/rlc/CMakeLists.txt;0;")
add_test(rlc_am_rx_benchmark "rlc_am_rx_benchmark")
set_tests_properties(rlc_am_rx_benchmark PROPERTIES  LABELS "rlc|rtsan" _BACKTRACE_TRIPLES "/home/netsys/srsRAN_Project/tests/benchmarks/rlc/CMakeLists.txt;29;add_test;/home/netsys/srsRAN_Project/tests/benchmarks/rlc/CMakeLists.txt;0;")
add_test(rlc_am_tx_benchmark "rlc_am_tx_benchmark")
set_tests_properties(rlc_am_tx_benchmark PROPERTIES  LABELS "rlc|rtsan" _BACKTRACE_TRIPLES "/home/netsys/srsRAN_Project/tests/benchmarks/rlc/CMakeLists.txt;33;add_test;/home/netsys/srsRAN_Project/tests/benchmarks/rlc/CMakeLists.txt;0;")
