cmake_minimum_required(VERSION 3.16)

project(template VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_add_executable(${PROJECT_NAME}
    src/main.cpp
    qml.qrc 
    resources.qrc
)

add_subdirectory("src/Subdirectory/")

target_link_libraries(${PROJECT_NAME} PUBLIC
    Qt6::Quick
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Subdirectory 
    # And your other subdirectories
)
