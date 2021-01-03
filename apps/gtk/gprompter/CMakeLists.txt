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

if (BUILD_GTK_PROMPTER)

    unset(SCINTILLA_GTK)
    foreach (i PlatGTK.cxx ScintillaGTK.cxx scintilla-marshal.c)
        set(SCINTILLA_GTK ${SCINTILLA_GTK} scintilla/gtk/${i})
    endforeach()

    set(SCINTILLA_SRC_FILES
        AutoComplete.cxx CallTip.cxx Catalogue.cxx CellBuffer.cxx CharClassify.cxx
        ContractionState.cxx Decoration.cxx Document.cxx Editor.cxx ExternalLexer.cxx
        Indicator.cxx KeyMap.cxx LineMarker.cxx PerLine.cxx PositionCache.cxx RESearch.cxx
        RunStyles.cxx ScintillaBase.cxx SciTE.properties Selection.cxx Style.cxx
        UniConversion.cxx ViewStyle.cxx XPM.cxx CaseConvert.cxx CaseFolder.cxx EditModel.cxx
        EditView.cxx MarginView.cxx)

    unset(SCINTILLA_SOURCES)
    foreach (i ${SCINTILLA_SRC_FILES})
        set(SCINTILLA_SOURCES ${SCINTILLA_SOURCES} scintilla/src/${i})
    endforeach()

    set(SCINTILLA_LEXLIB_FILES
        LexerNoExceptions.cxx LexerModule.cxx LexerSimple.cxx Accessor.cxx StyleContext.cxx
        PropSetSimple.cxx WordList.cxx CharacterSet.cxx LexerBase.cxx CharacterCategory.cxx)

    unset(SCINTILLA_LEXLIB)
    foreach (i ${SCINTILLA_LEXLIB_FILES})
        set(SCINTILLA_LEXLIB ${SCINTILLA_LEXLIB} scintilla/lexlib/${i})
    endforeach()

    set(SCINTILLA_LEXLERS_FILES
        LexLisp.cxx LexErlang.cxx LexEScript.cxx LexFortran.cxx LexAVE.cxx LexNsis.cxx
        LexSorcus.cxx LexTADS3.cxx LexTxt2tags.cxx LexBasic.cxx LexForth.cxx LexMarkdown.cxx
        LexTACL.cxx LexMagik.cxx LexPLM.cxx LexOpal.cxx LexFlagship.cxx LexScriptol.cxx
        LexMatlab.cxx LexBullant.cxx LexPB.cxx LexRebol.cxx LexHTML.cxx LexBash.cxx
        LexPowerPro.cxx LexTAL.cxx LexRuby.cxx LexPS.cxx LexD.cxx LexSpecman.cxx LexCSS.cxx
        LexKix.cxx LexASY.cxx LexVHDL.cxx LexGui4Cli.cxx LexR.cxx LexYAML.cxx LexAbaqus.cxx
        LexCaml.cxx LexAPDL.cxx LexCmake.cxx LexCPP.cxx LexLout.cxx LexCLW.cxx LexAU3.cxx
        LexCrontab.cxx LexEiffel.cxx LexMetapost.cxx LexCOBOL.cxx LexTeX.cxx LexMPT.cxx
        LexBaan.cxx LexPerl.cxx LexPascal.cxx LexOthers.cxx LexProgress.cxx LexMySQL.cxx
        LexVB.cxx LexGAP.cxx LexVerilog.cxx LexAsm.cxx LexLua.cxx LexPython.cxx LexTCL.cxx
        LexHaskell.cxx LexPowerShell.cxx LexSmalltalk.cxx LexAda.cxx LexConf.cxx LexMMIXAL.cxx
        LexNimrod.cxx LexCsound.cxx LexSML.cxx LexSQL.cxx LexMSSQL.cxx LexAsn1.cxx LexInno.cxx
        LexSpice.cxx LexPOV.cxx LexA68k.cxx LexModula.cxx LexCoffeeScript.cxx LexAVS.cxx
        LexTCMD.cxx LexECL.cxx LexOScript.cxx LexVisualProlog.cxx LexPO.cxx LexLaTeX.cxx
        LexSTTXT.cxx LexDMAP.cxx LexDMIS.cxx LexKVIrc.cxx LexRegistry.cxx LexRust.cxx
        LexBibTeX.cxx LexHex.cxx)

    unset(SCINTILLA_LEXLIB)
    foreach (i ${SCINTILLA_LEXLIB_FILES})
        set(SCINTILLA_LEXLIB ${SCINTILLA_LEXLIB} scintilla/lexers/${i})
    endforeach()

    set(SCINTILLA_SOURCES
        $(SCINTILLA_SOURCES) $(SCINTILLA_GTK) $(SCINTILLA_INCLUDE) $(SCINTILLA_LEXERS)
        $(SCINTILLA_LEXLIB))

    add_definitions(${CMAKE_CURRENT_SOURCE_DIR}/scintilla/include)

    add_library(scintilla SHARED ${SCINTILLA_SOURCES})
    target_compile_definitions(scintilla
                               PUBLIC
                               -DNDEBUG -DGTK -DSCI_LEXER -DG_THREADS_IMPL_NONE
                               ${CMAKE_CURRENT_SOURCE_DIR}/scintilla/src
                               ${CMAKE_CURRENT_SOURCE_DIR}/scintilla/lexlib)
    target_link_libraries(scintilla presage scintilla m)
    install(FILES scintilla/License.txt scintilla/version.txt DESTINATION doc)

    add_executable(gprompter gprompter.c)
    target_link_libraries(gprompter presage scintilla m)

    install(TARGETS gprompter DESTINATION bin)

    install(FILES  DESTINATION share/applications)
    install(FILES  gprompter.desktop DESTINATION )
    install(FILES  DESTINATION share/icons/hicolor/scalable/apps)
    install(FILES  gprompter.svg DESTINATION )
    install(FILES  DESTINATION share/pixmaps)
    install(FILES  gprompter.png gprompter.xpm DESTINATION )

endif()

#libscintilla_la_SOURCES =	$(SCINTILLA_SRC) $(SCINTILLA_GTK) $(SCINTILLA_INCLUDE) $(SCINTILLA_LEXERS) $(SCINTILLA_LEXLIB)
#libscintilla_la_CPPFLAGS =	$(GNOME_CFLAGS) $(GTHREAD_CFLAGS) \
#libscintilla_la_LIBADD = 	$(GNOME_LIBS) $(GTHREAD_LIBS)
#
#
#bin_PROGRAMS =		gprompter
#
#gprompter_SOURCES = 	gprompter.c
#gprompter_CFLAGS =	$(GNOME_CFLAGS) $(GTHREAD_CFLAGS) $(GMODULE_CFLAGS) \
#			-I$(top_srcdir)/src/lib \
#gprompter_LDADD = 	../../../src/lib/libpresage.la \
#			$(GNOME_LIBS) $(GTHREAD_LIBS) $(GMODULE_LIBS)
#
#if HAVE_HELP2MAN
#gprompter.1:	gprompter$(EXEEXT) gprompter.c $(top_srcdir)/configure.ac
#	help2man --output=$@ --no-info --name="the intelligent predictive GTK+ text editor" ./gprompter$(EXEEXT)
#
#dist_man_MANS =		gprompter.1
#
#DISTCLEANFILES =	gprompter.1
#endif
#
#desktopdir = $(datadir)/applications
#dist_desktop_DATA = gprompter.desktop
#
#svgicondir = $(datadir)/icons/hicolor/scalable/apps
#dist_svgicon_DATA = gprompter.svg
#
#pixmapsdir = $(datadir)/pixmaps
#dist_pixmaps_DATA = gprompter.png gprompter.xpm
#
#endif
