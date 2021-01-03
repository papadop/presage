#.rst:
# FindTinyXML
# -----------
# Finds the TinyXML library
#
# This will define the following variables::
#
# TinyXML_FOUND - system has TinyXML
# TinyXML_INCLUDE_DIRS - the TinyXML include directory
# TinyXML_LIBRARIES - the TinyXML libraries
# TinyXML_DEFINITIONS - the TinyXML definitions
#
# and the following imported targets::
#
#   TinyXML::TinyXML   - The TinyXML library

if (PKG_CONFIG_FOUND)
    pkg_check_modules(PC_TINYXML tinyxml QUIET)
endif()

find_path(TinyXML_INCLUDE_DIR tinyxml.h
                              PATH_SUFFIXES tinyxml
                              PATHS ${PC_TINYXML_INCLUDEDIR})
find_library(TinyXML_LIBRARY_RELEASE NAMES tinyxml tinyxmlSTL
                                     PATH_SUFFIXES tinyxml
                                     PATHS ${PC_TINYXML_LIBDIR})
find_library(TinyXML_LIBRARY_DEBUG NAMES tinyxmld tinyxmlSTLd
                                   PATH_SUFFIXES tinyxml
                                   PATHS ${PC_TINYXML_LIBDIR})
set(TINYXML_VERSION ${PC_TINYXML_VERSION})

include(SelectLibraryConfigurations)
select_library_configurations(TinyXML)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(TinyXML
                                  REQUIRED_VARS TinyXML_LIBRARY TinyXML_INCLUDE_DIR
                                  VERSION_VAR TINYXML_VERSION)

if (TinyXML_FOUND)
    set(TinyXML_LIBRARIES ${TinyXML_LIBRARY})
    set(TinyXML_INCLUDE_DIRS ${TINYXML_INCLUDE_DIR})
    if (WIN32)
        set(TinyXML_DEFINITIONS -DTIXML_USE_STL=1)
    endif()

    if (NOT TARGET TinyXML::TinyXML)
        add_library(TinyXML::TinyXML UNKNOWN IMPORTED)
        if (TINYXML_LIBRARY_RELEASE)
            set_target_properties(TinyXML::TinyXML PROPERTIES
                                                   IMPORTED_CONFIGURATIONS RELEASE
                                                   IMPORTED_LOCATION "${TINYXML_LIBRARY_RELEASE}")
        endif()
        if (TINYXML_LIBRARY_DEBUG)
            set_target_properties(TinyXML::TinyXML PROPERTIES
                                                   IMPORTED_CONFIGURATIONS DEBUG
                                                   IMPORTED_LOCATION "${TINYXML_LIBRARY_DEBUG}")
        endif()
        set_target_properties(TinyXML::TinyXML PROPERTIES
                                               INTERFACE_INCLUDE_DIRECTORIES "${TINYXML_INCLUDE_DIR}")
        if (WIN32)
            set_target_properties(TinyXML::TinyXML PROPERTIES
                                                   INTERFACE_COMPILE_DEFINITIONS TIXML_USE_STL=1)
        endif()
    endif()
endif()

mark_as_advanced(TinyXML_INCLUDE_DIR TinyXML_LIBRARY)
