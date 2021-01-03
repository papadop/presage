############
##  Presage, an extensible predictive text entry system
##  ------------------------------------------------------
##
##  Copyright (C) 2008  Matteo Vescovi <matteo.vescovi@yahoo.co.uk>
##
##  This program is free software; you can redistribute it and/or modify
##  it under the terms of the GNU General Public License as published by
##  the Free Software Foundation; either version 2 of the License, or
##  (at your option) any later version.
##
##  This program is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.
##
##  You should have received a copy of the GNU General Public License along
##  with this program; if not, write to the Free Software Foundation, Inc.,
##  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

add_subdirectory(simulator)

include_directories(${CMAKE_SOURCE_DIR}/src/lib ${CMAKE_SOURCE_DIR}/src)

if (WIN32)
    add_definitions(-DREPLACE_GETOPT)
    include_directories(${CMAKE_CURRENT_SOURCE_DIR})
    set(EXTRA_SOURCES getopt_long.cpp)
endif()

set(PRESAGE_LIBS presage ${TINYXML_LIBRARIES} ${SQLITE_LIBS})

add_executable(presage_demo_text presageDemoText.cpp ${EXTRA_SOURCES})
target_link_libraries(presage_demo_text ${PRESAGE_LIBS})

add_executable(presage_simulator presageSimulator.cpp ${EXTRA_SOURCES})
target_link_libraries(presage_simulator simulator ${PRESAGE_LIBS})

unset(ADDITIONAL_TARGETS)
if (USE_SQLITE)
    add_library(tools SHARED ngram.cpp)
    add_executable(text2ngram text2ngram.cpp)
    target_link_libraries(text2ngram tools ${PRESAGE_LIBS})
    set(ADDITIONAL_TARGETS ${ADDITIONAL_TARGETS} text2ngram)
endif()

find_package(Curses)
if (CURSES_FOUND)
    add_executable(presage_demo presageDemo.cpp)
    target_link_libraries(presage_demo presage ${CURSES_LIBRARIES})
    set(ADDITIONAL_TARGETS ${ADDITIONAL_TARGETS} presage_demo)
endif()

macro(add_manual progname title)
    set(man_name ${progname}.1)
    add_custom_target(${man_name}
                      COMMAND help2man --output=${man_name} --no-info --name="${title}" ${CMAKE_CURRENT_BUILD_DIRECTORY}/${progname})
endmacro()

if (HAVE_HELP2MAN)
    add_manual(presage_demo_text "presage demo program (text)")
    add_manual(presage_simulator "presage simulator program")

    unset(ADDITIONAL_MANUALS)
    if (USE_SQLITE)
        add_manual(text2ngram "generate statistical n-gram data from text")
        set(ADDITIONAL_MANUALS ${ADDITIONAL_MANUALS} text2ngram.1)
    endif()

    if (HAVE_CURSES)
        add_manual(presage_demo "presage demo program (ncurses)")
        set(ADDITIONAL_MANUALS ${ADDITIONAL_MANUALS} presage_demo.1)
    endif()

    install(FILES presage_demo_text.1 presage_simulator.1 ${ADDITIONAL_MANUALS} DESTINATION doc)
endif()

install(TARGETS presage_demo_text presage_simulator ${ADDITIONAL_TARGETS} DESTINATION bin)
