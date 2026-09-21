cmake_minimum_required(VERSION 3.22.1)
project("ps2_native_bridge")

add_library(
    ps2_native_bridge
    SHARED
    ps2_native_bridge.cpp
)

find_library(
    log-lib
    log
)

target_link_libraries(
    ps2_native_bridge
    ${log-lib}
)
