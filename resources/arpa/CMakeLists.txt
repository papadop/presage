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

# TODO: find tools TEXT2WFREQ WFREQ2VOCAB TEXT2IDNGRAM IDNGRAM2LM

find_program(TEXT2WFREQ text2wfreq)
find_program(WFREQ2VOCAB wfreq2vocab)
find_program(TEXT2IDNGRAM text2idngram)
find_program(IDNGRAM2LM idngram2lm)

if (TEXT2WFREQ AND WFREQ2VOCAB AND TEXT2IDNGRAM AND IDNGRAM2LM)

    unset(ARPA_FILES)

    macro(vocab corpus text)
        set(output ${CMAKE_CURRENT_SOURCE_DIR}/${corpus}.vocab)
        add_custom_target(${output}
                          DEPENDS ${TEXT2WFREQ} ${WFREQ2VOCAB} ${text}
                          COMANND ${TEXT2WFREQ} < ${text} | ${WFREQ2VOCAB} -top 20000 > ${output})
        set(ARPA_FILES ${ARPA_FILES} ${output)
    endmacro()

    macro(idngram corpus text)
        set(input  ${CMAKE_CURRENT_SOURCE_DIR}/${corpus}.vocab)
        set(output ${CMAKE_CURRENT_SOURCE_DIR}/${corpus}.idngram)
        add_custom_command(OUTPUT ${output}
                           COMANND ${TEXT2IDNGRAM} -n 3 -vocab ${input} -temp . < ${text} > ${output}
                           DEPENDS ${TEXT2IDNGRAM} ${input} ${text})
        set(ARPA_FILES ${ARPA_FILES} ${output)
    endmacro()

    macro(arpa_finish corpus)
        set(input_vocab   ${CMAKE_CURRENT_SOURCE_DIR}/${corpus}.vocab)
        set(input_idngram ${CMAKE_CURRENT_SOURCE_DIR}/${corpus}.idngram)
        set(output ${CMAKE_CURRENT_SOURCE_DIR}/${corpus}.arpa)
        add_custom_command(OUTPUT ${output}
                           COMANND ${IDNGRAM2LM} -idngram ${input_idngram} -vocab ${input_vocab} -arpa ${output}
                           DEPENDS ${IDNGRAM2LM} ${input_idngram} ${input_vocab} ${text})
        set(ARPA_FILES ${ARPA_FILES} ${output)
    endmacro()

    macro(arpa corpus text)
        vocab(${corpus} ${text})
        idngram(${corpus} ${text})
        arpa_finish(${corpus})
    endmacro()

    set(textdir ${CMAKE_CURRENT_SOURCE_DIR}/..)
    arpa(arpa_en ${textdira}/the_picture_of_dorian_gray.txt)
    arpa(arpa_it ${textdir}/l_innocente.txt)
    arpa(arpa_sp ${textdir}/el_quijote.txt)

    install(FILES ${ARPA_FILES} DESTINATION share)

else()
    message(ERROR "SLM toolkit not found. Install it or disable BUILD_ARPA_NGRAM")
endif()
