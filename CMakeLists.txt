cmake_minimum_required(VERSION 3.17)
project(Shiori_Sound_Sutton)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
set(CMAKE_C_FLAGS_RELEASE "-O2 -DNDEBUG")
set(CMAKE_CXX_FLAGS_RELEASE "-O2 -DNDEBUG")
find_package(PkgConfig REQUIRED)
pkg_check_modules(QT5 REQUIRED Qt5Widgets)
pkg_check_modules(SFML_AUDIO REQUIRED sfml-audio)

add_library(Res OBJECT
        resources/qt/soundBoardRes.cpp
        icon/shiori_icon.rc
        resources/se_pointer.cpp
        resources/se/aaa.cpp
        resources/se/angang.cpp
        resources/se/ban.cpp
        resources/se/furukonnbodadon.cpp
        resources/se/kankan.cpp
        resources/se/kushami1.cpp
        resources/se/kushami2.cpp
        resources/se/kushami3.cpp
        resources/se/kushami4.cpp
        resources/se/kushami5.cpp
        resources/se/kushami6.cpp
        resources/se/kushami7.cpp
        resources/se/kushami8.cpp
        resources/se/kushami9.cpp
        resources/se/okiroa.cpp
        resources/se/oniichan_long.cpp
        resources/se/oniichan_short.cpp
        resources/se/otto.cpp
        resources/se/oyasumina.cpp
        resources/se/oyasuminasai_long.cpp
        resources/se/oyasuminasai_short.cpp
        resources/se/renda.cpp
        resources/se/shiori_excellent.cpp
        resources/se/shiori_excellent2.cpp
        resources/se/shiori_great.cpp
        resources/se/wanaaan.cpp
        resources/se/wanan.cpp
        resources/se/wanwang.cpp
        resources/se/yumeiri.cpp
        resources/se/yumeiriii.cpp
        resources/se/yumenoshioridayo.cpp
        resources/se/yumeotsu_long.cpp
        resources/se/yumeotsu_short.cpp
        resources/se/yuu.cpp
)

add_library(SoundBoard OBJECT 
        SoundBoard.cpp
)

add_library(SoundPlayer OBJECT
        SoundManager/SoundPlayer.cpp
)

add_library(MainFrame OBJECT 
        MainFrame.cpp
)

add_executable(Shiori_Sound_Button 
        main.cpp
        $<TARGET_OBJECTS:Res>
        $<TARGET_OBJECTS:MainFrame>
        $<TARGET_OBJECTS:SoundBoard>
        $<TARGET_OBJECTS:SoundPlayer>
)

if(CMAKE_BUILD_TYPE MATCHES Release)
    if (WIN32)
        target_link_options(Shiori_Sound_Button PRIVATE -mwindows)
    endif (WIN32)

    if (UNIX)
        target_link_options(Shiori_Sound_Button PRIVATE -no-pie)
    endif (UNIX)
endif(CMAKE_BUILD_TYPE MATCHES Release)

target_link_libraries(Shiori_Sound_Button PRIVATE ${QT5_LIBRARIES} ${SFML_AUDIO_LIBRARIES})
target_include_directories(Shiori_Sound_Button PRIVATE ${QT5_INCLUDE_DIRS})
target_link_directories(Shiori_Sound_Button PRIVATE ${QT5_LIBRARY_DIRS} ${SFML_LIBRARY_DIRS})
target_compile_definitions(Shiori_Sound_Button PRIVATE ${QT5_CFLAGS_OTHER} ${SFML_AUDIO_CFLAGS_OTHER})

target_include_directories(MainFrame PRIVATE ${QT5_INCLUDE_DIRS})
target_include_directories(SoundBoard PRIVATE ${QT5_INCLUDE_DIRS})
target_include_directories(SoundPlayer PRIVATE ${SFML_AUDIO_INCLUDE_DIRS})