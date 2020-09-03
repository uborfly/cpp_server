cmake_minimum_required(VERSION 3.6)

if ( ${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR} )
    message( FATAL_ERROR "In-source builds not allowed. Please make a new directory and run CMake from there. You may need to remove CMakeCache.txt." )
endif()

set(PROJECT_NAME test_app)
project(${PROJECT_NAME})

SET (CMAKE_LIBRARY_OUTPUT_DIRECTORY
        ${PROJECT_BINARY_DIR}/bin
        CACHE PATH
        "Single Directory for all"
    )

SET (CMAKE_RUNTIME_OUTPUT_DIRECTORY
        ${PROJECT_BINARY_DIR}/../bin
        CACHE PATH
        "Single Directory for all"
    )

SET (CMAKE_ARCHIVE_OUTPUT_DIRECTORY
        ${PROJECT_BINARY_DIR}/lib
        CACHE PATH
        "Single Directory for all"
    )

find_package(Boost COMPONENTS filesystem regex REQUIRED)
include_directories(/usr/local/include)
link_directories(/usr/local/lib)

# TODO: uncomment if have unit tests
# enable_testing()

find_program( CLANG_TIDY NAMES clang-tidy)
# NOTE: you can add search paths for example `PATHS /usr/local/opt/llvm/bin/`

message("\n--------------------------------\n")
message("PROJECT NAME:\t\t${PROJECT_NAME}")
message("PROJECT_BINARY_DIR:\t\t${PROJECT_BINARY_DIR}")
message("CMAKE_SYSTEM_NAME:\t${CMAKE_SYSTEM_NAME}")
message("CMAKE_C_COMPILER:\t${CMAKE_C_COMPILER}")
message("CMAKE_CXX_COMPILER:\t${CMAKE_CXX_COMPILER}")
message("CMAKE_GENERATOR:\t${CMAKE_GENERATOR}")
message("CMAKE_BUILD_TYPE:\t${CMAKE_BUILD_TYPE}")
message("CMAKE_BINARY_DIR:\t${CMAKE_BINARY_DIR}")
message("CMAKE_MODULE_PATH:\t${CMAKE_MODULE_PATH}")
message("CMAKE_PREFIX_PATH:\t${CMAKE_PREFIX_PATH}")
message("clang-tidy:\t\t${CLANG_TIDY}")
message("\n--------------------------------\n")

find_package(Boost COMPONENTS filesystem regex REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})

include_directories(inc)
include_directories(inc/http/server)

set(${PROJECT_NAME}_sources src/main.cpp)
aux_source_directory(src DIR_SRCS)
aux_source_directory(src/http/server HTTP_SERVER_SRCS)

add_executable(${PROJECT_NAME} ${${PROJECT_NAME}_sources} ${DIR_SRCS} ${HTTP_SERVER_SRCS})

# NOTE: this will slow down compilation, but you'll have static code analysis :)
if(CLANG_TIDY)
    set_property(
        TARGET ${PROJECT_NAME}
        PROPERTY CXX_CLANG_TIDY "${CLANG_TIDY}")
endif()

set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 11)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD_REQUIRED ON)

target_link_libraries(${PROJECT_NAME} ${boost_LIBRARIES} -pthread -lboost_system -lboost_thread)
