---
title:       "Soothsayer 0.6.3 released"
type:        story
date:        2008-06-02
draft:       false
promote:     false
sticky:      false
---

Soothsayer 0.6.3 is now available for [download](/download/).

Soothsayer 0.6.3 comes with a number of packaging and distribution improvements. The build system has received minor fixes and configurability enhancements.

Soothsayer 0.6.3 ships with improved demonstration programs. The existing C++ demonstration programs have been renamed from from capitalized style names to underscore separated style names. Python demonstration programs incorporate various improvements, including new command line switches and manual pages.

Soothsayer 0.6.3 adds improved UTF-8 support. Distributed text resources used to generate sample statistical data are now UTF-8 encoded.

Soothsayer 0.6.3 also includes a few bug fixes and documentation updates. See ChangeLog for more details.

Soothsayer 0.6.3 is a beta release. This is a source release only. No precompiled packages or installers are provided.

<!--more-->

Users wishing to try out Soothsayer will need to follow the (easy) steps required to build soothsayer on their machine, as detailed in the <a href="soothsayer/trunk/README">README</a> file. Please note that <a href="?q=node/17">SQLite</a> is required to build soothsayer. <a href="?q=node/17">CPPUnit</a> is optional, but be aware that no unit tests will be built nor run when running `make check', unless CPPUnit is installed.

Soothsayer 0.6.3 has been built and tested on various Linux platforms (including 32-bit and 64-bit architectures), Solaris 10, Windows XP/Cygwin, and Windows XP/MinGW/MSYS. If you encounter any issues while building or running soothsayer, please report it to the [author](/contact/).

As always, there is still a lot more work to be done. Currently, the installed soothsayer system is trained on a very small training corpus. Predictive performance can be greatly increased by using a larger training corpus. Users can easily generate statistical predictive resources using the text2ngram tool on a custom training text corpus.  
New predictive plugins are also in the works, which will take advantage of the multiple predictive source architecture.  
Please refer to our TODO list for details on what needs to be done.
