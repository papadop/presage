#   Prefix headers and sources with their current directory
#   The variables are defined in the parent scope to be used in the 
#   parent cmake.

macro(add_headers)
    set(headers ${ARGN})
    get_filename_component(directory ${CMAKE_CURRENT_SOURCE_DIR} NAME)
    foreach (file ${headers})
        list(APPEND full_headers ${directory}/${file})
    endforeach()
    string(TOUPPER ${directory} directory)
    set(${directory}_HEADERS ${full_headers} PARENT_SCOPE)
endmacro()

macro(add_sources)
    set(sources ${ARGN})
    get_filename_component(directory ${CMAKE_CURRENT_SOURCE_DIR} NAME)
    foreach (file ${sources})
        list(APPEND full_sources ${directory}/${file})
    endforeach()
    string(TOUPPER ${directory} directory)
    set(${directory}_SOURCES ${full_sources} PARENT_SCOPE)
endmacro()
