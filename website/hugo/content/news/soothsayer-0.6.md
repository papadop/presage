---
title:       "Soothsayer 0.6 released"
type:        story
date:        2007-09-05
draft:       false
promote:     false
sticky:      false
---

Soothsayer 0.6 is now available for [download](/download/).

Soothsayer 0.6 includes a new Python binding module, which enables Python applications to natively call into soothsayer. Soothsayer 0.6 has also been ported to Solaris 10 platform, and built with Sun Studio 10 and 11 compilers.

This release also includes bug fixes and improvements to the build system. Library dependencies have been cleaned up. Shared libraries are now built on all supported platforms, including Windows/Cygwin targets.

Soothsayer 0.6 is a beta release. This is a source release only. No precompiled packages or installers are provided.

<!--more-->

Users wishing to try out Soothsayer will need to follow the (easy) steps required to build soothsayer on their machine, as detailed in the <a href="soothsayer/trunk/README">README</a> file. Please note that <a href="?q=node/17">SQLite</a> is required to build soothsayer. <a href="?q=node/17">CPPUnit</a> is optional, but be aware that no unit tests will be built nor run when running `make check', unless CPPUnit is installed.

Soothsayer 0.6 has been built and tested on various Linux platforms (including 64 bit architectures) and Windows XP + Cygwin platform. If you encounter any issues while building or running soothsayer, please report it to the <a href="?q=node/19">author</a>.

There is still a lot of work to be done. Currently, Soothsayer is training on a very small training corpus. Predictive performance can be greatly increased by using a larger training corpus. Users can easily generate statistical predictive resources using the text2ngram tool on a custom training text corpus.  
New predictive plugins should also be added to take advantage of the multiple predictive source architecture.  
Please refer to our TODO list for more details on what needs to be done.
