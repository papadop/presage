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

set(tinyxml_HEADERS tinystr.h tinyxml.h ${EXPORT_DIR}/TinyXMLExport.h)
set(tinyxml_SOURCES tinyxml.cpp tinyxmlparser.cpp tinyxmlerror.cpp tinystr.cpp)

add_definitions(-DTIXML_USE_STL)
add_library(tinyxml SHARED ${tinyxml_SOURCES})
set_target_properties(tinyxml PROPERTIES PUBLIC_HEADER "${tinyxml_HEADERS}")

generate_export_header(tinyxml EXPORT_FILE_NAME ${EXPORT_DIR}/TinyXMLExport.h)

if (BUILD_TESTS)
    set(xmltest_SOURCES xmltest.cpp)
    add_executable(xmltest ${xmltest_SOURCES})
    target_link_libraries(xmltest tinyxml)
    add_test(NAME xmltest COMMAND xmltest)
    set_tests_properties(xmltest PROPERTIES FIXTURES_REQUIRED clean)
    set(test_files utf8testout.xml demotest.xml textfile.txt test5.xml test6.xml test7.xml)
    add_test(NAME Cleanup COMMAND ${CMAKE_COMMAND} -E remove ${test_files})
    set_tests_properties(Cleanup PROPERTIES FIXTURES_CLEANUP clean)
endif()

install(TARGETS tinyxml LIBRARY RUNTIME PUBLIC_HEADER)
install(FILES changes.txt readme.txt utf8test.gif utf8test.xml utf8testverify.xml DESTINATION doc/tinyXml)
install(DIRECTORY docs DESTINATION doc/tinyXML)
