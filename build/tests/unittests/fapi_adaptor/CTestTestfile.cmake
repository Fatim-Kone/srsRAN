# CMake generated Testfile for 
# Source directory: /home/netsys/srsRAN_Project/tests/unittests/fapi_adaptor
# Build directory: /home/netsys/srsRAN_Project/build/tests/unittests/fapi_adaptor
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
include("/home/netsys/srsRAN_Project/build/tests/unittests/fapi_adaptor/precoding_matrix_table_generator_test[1]_include.cmake")
include("/home/netsys/srsRAN_Project/build/tests/unittests/fapi_adaptor/uci_part2_correspondence_test[1]_include.cmake")
subdirs("mac")
subdirs("phy")
set_directory_properties(PROPERTIES LABELS "fapi_adaptor")
