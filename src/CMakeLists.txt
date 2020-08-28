add_executable(${PROJECT_NAME} main.cpp)

find_package(Boost COMPONENTS filesystem regex REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})

include_directories(/usr/local/include)
link_directories(/usr/local/lib)

include_directories(/usr/include)
link_directories(/usr/lib)

target_link_libraries(${PROJECT_NAME} -lcgicc)
