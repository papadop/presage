###########
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

include_directories(${CMAKE_SOURCE_DIR}/src/lib)
add_library(simulator SHARED simulator.cpp)
target_link_libraries(simulator presage)
set_target_properties(simulator PROPERTIES PUBLIC_HEADER "simulator.h")

generate_export_header(simulator EXPORT_FILE_NAME ${EXPORT_DIR}/SimulatorExport.h)

install(TARGETS simulator LIBRARY RUNTIME PUBLIC_HEADER)
