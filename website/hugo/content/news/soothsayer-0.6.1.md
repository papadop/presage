---
title:       "Soothsayer 0.6.1 released"
type:        story
date:        2008-04-06
draft:       false
promote:     false
sticky:      false
---

Soothsayer 0.6.1 is now available for [download](/download/).

Soothsayer 0.6.1 includes a number of under-the-hood changes. The focus of this release has been on refactoring, restructuring, and cleaning up, rather than adding new functionality. The source directory layout was changed to better reflect the logical structure. Improvements were made to the configuration system and the logging subsystem, which underwent a complete overhaul and rewrite.

Soothsayer 0.6.1 ships with man pages for the tools and demo programs. This release also includes bug fixes and improvements to the build system. All GCC generated compilation warnings were fixed. Library dependencies have been cleaned up.

Soothsayer 0.6.1 is a beta release. This is a source release only. No precompiled packages or installers are provided.

<!--more-->

Users wishing to try out Soothsayer will need to follow the (easy) steps required to build soothsayer on their machine, as detailed in the <a href="soothsayer/trunk/README">README</a> file. Please note that <a href="?q=node/17">SQLite</a> is required to build soothsayer. <a href="?q=node/17">CPPUnit</a> is optional, but be aware that no unit tests will be built nor run when running `make check', unless CPPUnit is installed.

Soothsayer 0.6.1 has been built and tested on various Linux platforms (including 64 bit architectures) and Windows XP + Cygwin platform. If you encounter any issues while building or running soothsayer, please report it to the [author](/contact/).

As always, there is still a lot of work to be done. Currently, Soothsayer is trained on a very small training corpus. Predictive performance can be greatly increased by using a larger training corpus. Users can easily generate statistical predictive resources using the text2ngram tool on a custom training text corpus.  
New predictive plugins will also be added to take advantage of the multiple predictive source architecture.  
Please refer to our TODO list for details on what needs to be done.
