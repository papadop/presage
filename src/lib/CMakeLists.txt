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

if (BUILD_TINYXML)
    add_subdirectory(tinyxml)
    include_directories(${CMAKE_CURRENT_SOURCE_DIR}/tinyxml)
endif()

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_subdirectory(core)
add_subdirectory(predictors)

set(presage_SOURCES presage.cpp ${CORE_SOURCES} ${PREDICTORS_SOURCES})
set(presage_HEADERS presage.h presageException.h presageCallback.h ${EXPORT_DIR}/PresageExport.h)

add_library(presage SHARED ${presage_SOURCES})
target_link_libraries(presage ${PREDICTORS_LIBRARIES} ${TinyXML_LIBRARIES})
set_target_properties(presage PROPERTIES PUBLIC_HEADER "${presage_HEADERS}")
set_target_properties(presage PROPERTIES VERSION 2.1.1 SOVERSION 2)

if (UNIX)
    target_link_options(presage PUBLIC LINKER:-no-undefined)
endif()

generate_export_header(presage EXPORT_FILE_NAME ${EXPORT_DIR}/PresageExport.h)

install(TARGETS presage LIBRARY RUNTIME PUBLIC_HEADER)
