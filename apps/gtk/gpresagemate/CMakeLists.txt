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
#

if (BUILD_GTK_PRESAGE_MATE)
    
    find_package(GNOME gnome REQUIRED)
    if (NOT GNOME)
        message(ERROR "Did not found gnome environmen. Add it or disable BUILD_GTK_PRESAGE_MATE")
    endif()

    find_library(XEVIE Xevie)
    if (NOT XEVIE)
        message(ERROR "Did not found Xevie library. Add it or disable BUILD_GTK_PRESAGE_MATE")
    endif()

    # gthreads ?
    add_definitions(${GNOME_INCLUDES} ${CMAKE_SOURCE_DIR}/src/lib)

    add_executable(gpresagemate gpresagemate.cpp)
    target_link_libraries(gpresagemate Xevie ${GNOME_LIBS} presage)

    install(TARGETS gpresagemate DESTINATION bin)

    if (HAVE_HELP2MAN)
        add_manual(gpresagemate "GTK presage mate")
        install(FILES gpresagemate.1 DESTINATION doc)
    endif()

endif()
