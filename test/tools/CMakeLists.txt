
include_directories(${KDE4_INCLUDES} ${KDE4_INCLUDE_DIR} ${QT_INCLUDES} )


########### next target ###############

set($(TESTS)_SRCS ${CMAKE_CURRENT_BINARY_DIR}/dummy.cpp)

if(KDE4_BUILD_TESTS)

kde4_add_executable($(TESTS) ${$(TESTS)_SRCS})

target_link_libraries($(TESTS) ${KDE4_KDECORE_LIBS})

endif(KDE4_BUILD_TESTS)

########### install files ###############




#original Makefile.am contents follow:

#
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
#
### Process this file with automake to produce Makefile.in
#
#if HAVE_CPPUNIT
#
#TESTS =	toolsTestRunner
#
#check_PROGRAMS = $(TESTS)
#
#toolsTestRunner_SOURCES =	toolsTestRunner.cpp \
#				nGramTest.h nGramTest.cpp 
#toolsTestRunner_CXXFLAGS =	$(CPPUNIT_CFLAGS)
#toolsTestRunner_LDFLAGS =	$(CPPUNIT_LIBS)
#toolsTestRunner_LDADD =		$(top_builddir)/src/tools/libtools.la
#toolsTestRunner_CPPFLAGS =	-I$(top_srcdir)/src
#
#endif
