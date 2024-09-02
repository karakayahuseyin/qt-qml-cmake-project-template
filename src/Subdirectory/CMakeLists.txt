cmake_minimum_required(VERSION 3.16)

find_package(Qt6 REQUIRED COMPONENTS Core)

qt_add_library(Subdirectory STATIC
    # You can add your header and source files here.
    # subdirectory.cpp
    # subdirectory.hpp
)

qt_standard_project_setup()

target_link_libraries(Subdirectory PUBLIC
    Qt6::Quick
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
)

set_target_properties(Subdirectory PROPERTIES
    AUTOMOC ON
)

target_include_directories(Subdirectory PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}
)
