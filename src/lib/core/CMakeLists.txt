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

add_subdirectory(tokenizer)
add_subdirectory(context_tracker)

add_sources(prediction.cpp suggestion.cpp utility.cpp observable.cpp observer.cpp
            dispatcher.cpp predictorActivator.cpp combiner.cpp meritocracyCombiner.cpp
            selector.cpp variable.cpp configuration.cpp profile.cpp defaultProfile.cpp
            profileManager.cpp logger.cpp presageException.cpp predictorRegistry.cpp progress.cpp
            ${TOKENIZER_SOURCES} ${CONTEXT_TRACKER_SOURCES})
