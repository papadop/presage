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

if (BUILD_ARPA_NGRAM)
    add_subdirectory(arpa)
endif()

add_subdirectory(profiles)

set(PRESAGE_RESOURCES
    presage.png presage.xpm presage.svg
    the_picture_of_dorian_gray.txt l_innocente.txt el_quijote.txt
    abbreviations_en.txt abbreviations_it.txt)

if (USE_SQLITE)
    macro(create_database db textfile)
        file(REMOVE ${db})
        add_custom_command(OUTPUT ${db}
                           COMMAND text2ngram -n 1 -l -f sqlite -o ${db} ${textfile}
                           COMMAND text2ngram -n 2 -l -f sqlite -o ${db} ${textfile}
                           COMMAND text2ngram -n 3 -l -f sqlite -o ${db} ${textfile}
                           DEPENDS ${textfile})
        set(PRESAGE_RESOURCES ${PRESAGE_RESOURCES} ${CMAKE_CURRENT_BINARY_DIR}/${db})
    endmacro()
    create_database(database_en.db "the_picture_of_dorian_gray.txt")
    create_database(database_it.db "l_innocente.txt")
    create_database(database_es.db "el_quijote.txt")
    add_custom_target(databases ALL DEPENDS database_en.db database_it.db database_es.db text2ngram)
endif()

install(FILES ${PRESAGE_RESOURCES} DESTINATION share/presage)
