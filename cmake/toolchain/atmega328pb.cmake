####
# atmega328pb.cmake:
#
# Atmel atmega328pb support file. This file ensures that the
# Atmel atmega328pb Xplained mini can be used as a target for the CMake system's output. This
# sets the Arduino target to be the Atmel ATmega328PB.
####


# System setup for MegaCore
set(CMAKE_SYSTEM_NAME "Generic")
set(CMAKE_SYSTEM_PROCESSOR "avr")
set(CMAKE_CROSSCOMPILING 1)
set(FPRIME_PLATFORM "ArduinoFw")
set(FPRIME_USE_BAREMETAL_SCHEDULER ON)
# set(ARDUINO_LIBRARIES "SPI.h" "Wire.h" "TimerOne.h")
set(ARDUINO_BUILD_PROPERTIES "build.extra_flags=-DTIMER1_A_PIN=13 -DTIMSK1=TIMSK")

# uses an atmega328P
set(ARDUINO_FQBN "atmel-avr-xminis:avr:atmega328pb_xplained_mini")
add_compile_options(-DATMEGA)
# Run the base arduino setup which should detect settings!
include("${CMAKE_CURRENT_LIST_DIR}/support/arduino-support.cmake")
SET(CMAKE_RANLIB "${CMAKE_CXX_COMPILER_RANLIB}")

# include_directories("${CMAKE_CURRENT_LIST_DIR}/../../ATmega/vendor/libraries/TimerOne")
