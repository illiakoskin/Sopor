cmake_minimum_required(VERSION 3.18)

set(TARGET SoporCombatSleep)
project(${TARGET})

add_library(${TARGET} SHARED "dllmain.cpp")
target_include_directories(${TARGET} PRIVATE .)
target_link_libraries(${TARGET} PUBLIC UE4SS)

string(TIMESTAMP SCS_PDB_STAMP "%Y%m%d_%H%M%S")
target_link_options(${TARGET} PRIVATE "/PDB:${CMAKE_CURRENT_BINARY_DIR}/${TARGET}_${SCS_PDB_STAMP}.pdb")

add_custom_command(TARGET ${TARGET} POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E make_directory "C:/Program Files (x86)/Steam/steamapps/common/S.T.A.L.K.E.R. 2 Heart of Chornobyl/Stalker2/Binaries/Win64/ue4ss/Mods/SoporCombatSleep/dlls"
    COMMAND ${CMAKE_COMMAND} -E copy_if_different $<TARGET_FILE:${TARGET}> "C:/Program Files (x86)/Steam/steamapps/common/S.T.A.L.K.E.R. 2 Heart of Chornobyl/Stalker2/Binaries/Win64/ue4ss/Mods/SoporCombatSleep/dlls/main.dll"
    COMMAND ${CMAKE_COMMAND} -E copy_if_different "${CMAKE_CURRENT_SOURCE_DIR}/SoporCombatSleep.ini" "C:/Program Files (x86)/Steam/steamapps/common/S.T.A.L.K.E.R. 2 Heart of Chornobyl/Stalker2/Binaries/Win64/ue4ss/Mods/SoporCombatSleep/dlls/SoporCombatSleep.ini"
)
