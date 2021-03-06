---
title:       "Presage 0.8.1 released"
type:        story
date:        2010-03-31
draft:       false
promote:     false
sticky:      false
---

Presage 0.8.1 is now available for [download](/download/).

Presage 0.8.1 sports significant performance improvements in its smoothed n-gram predictor. Runtime execution was sped up by approximately a factor of 5 by tuning some expensive SQL queries to the embedded SQLite database.

Presage 0.8.1 comes with refactored configuration and profile handling subsystems. Configuration is read from system-level, installation-level, user-level XML profiles and from an optional user-specified profile. Changes to configuration variables made at runtime through the ``config()`` API can now be persisted to file by calling the new ``save_profile()`` API method. Presage components are also immediately notified of configuration changes and adjust accordingly.

Presage 0.8.1 also includes other bug fixes and enhancements. Compilation problems on recent stricter compilers, compilation warnings, and minor memory leaks were fixed in this release. Please see the ChangeLog for more details.

<!--more-->

This is a source release only. No precompiled packages or installers are provided.

Users wishing to try out Presage should follow the (easy) steps needed to build presage, as detailed in the <a href="presage/trunk/README">README</a> file and in the documentation available in the doc/ directory.

Presage 0.8.1 has been built and tested on various Linux platforms (including 32-bit and 64-bit architectures), Solaris 10, Windows (Cygwin and MinGW/MSYS), and MacOS X. If you encounter any issues while building or running presage, please report them to the [author](/contact/).
