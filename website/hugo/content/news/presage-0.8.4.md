---
title:       "Presage 0.8.4 released"
type:        story
date:        2010-07-10
draft:       false
promote:     false
sticky:      false
---

Presage 0.8.4 is now available for [download](/download/).

Presage 0.8.4 comes with a number of improvements and fixes to its build system.

Presage 0.8.4 adds shared library symbol versioning. Symbols exported by libpresage are limited to public API symbols and versioned.

Presage 0.8.4 removes its dependency on embedded convenience copy of XML configuration parser library, when a system installed libtinyxml is available.

Presage 0.8.4 also provides an experimental DBUS prediction service and Spanish language model generation.

Presage 0.8.4 also includes other bug fixes and enhancements. Please see the ChangeLog for more details.

<!--more-->

This is a source release only. No precompiled packages or installers are provided.

Users wishing to try out Presage should follow the (easy) steps needed to build presage, as detailed in the <a href="presage/trunk/README">README</a> file and in the documentation available in the doc/ directory.

Presage 0.8.4 has been built and tested on various Linux platforms (including 32-bit and 64-bit architectures), Solaris 10, Windows (Cygwin and MinGW/MSYS), and MacOS X. If you encounter any issues while building or running presage, please report them to the [author](/contact/).
