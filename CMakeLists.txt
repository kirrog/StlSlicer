cmake_minimum_required(VERSION 3.20)
project(StlSlicer CUDA)

set(CMAKE_CUDA_STANDARD 14)

set(SOURCES main.cu main.cuh)

add_executable(StlSlicer ${SOURCES})

set_target_properties(StlSlicer PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
