####
# Teensyduino.cmake:
#
# Toolchain file setup for building F prime for the Teensy hardware platform. This must, by definition, include the
# Arduino framework in order to ensure that basic functions of the Teensy hardware platform are available. This
# toolchain will build the core Teensy Arduino libraries, and include the headers as part of the target include headers.
####
set(CMAKE_CXX_STANDARD 17)
add_compile_options(-std=c++17 -std=gnu++17) # Force C++17 standard

# System setup for Teensyduino
set(CMAKE_SYSTEM_NAME "Generic")
set(CMAKE_SYSTEM_PROCESSOR "arm")
set(CMAKE_CROSSCOMPILING 1)
set(FPRIME_PLATFORM "ArduinoFw")
set(FPRIME_USE_BAREMETAL_SCHEDULER ON)
set(ARDUINO_BUILD_PROPERTIES)

# Teensy 40 is used to compile for the teensy 4.0 board
set(ARDUINO_FQBN "teensy:avr:teensy40")
add_compile_options(-D_BOARD_TEENSY40 -DFPRIME_ARUDINO_SYNTHETIC_WRITE -DFPRIME_ARUDINO_SYNTHETIC_NEW_NOTHROW)
# Run the base arduino setup which should detect settings!
include("${CMAKE_CURRENT_LIST_DIR}/support/arduino-support.cmake")
