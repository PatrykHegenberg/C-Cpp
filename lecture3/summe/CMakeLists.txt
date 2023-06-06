cmake_minimum_required(VERSION 3.20)
project(summe 
    VERSION 1.0
    DESCRIPTION "summe"
    LANGUAGES CXX)
set(CMAK_CXX_STANDARD 20)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(summe src/summe.cpp)
