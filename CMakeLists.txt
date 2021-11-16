cmake_minimum_required(VERSION 3.20)
project(StlSlicer CUDA)

set(CMAKE_CUDA_STANDARD 14)

add_executable(StlSlicer main.cu)

set_target_properties(StlSlicer PROPERTIES
        CUDA_SEPARABLE_COMPILATION ON)
