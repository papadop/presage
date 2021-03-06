---
title:       "Presage 0.7.1 released"
type:        story
date:        2008-11-08
draft:       false
promote:     false
sticky:      false
---

Presage 0.7.1 is now available for [download](/download/).

Presage 0.7.1 is able to learn "on the fly" from the context and the text currently being entered. The smoothed n-gram predictive plugin dynamically learns from the current context, while generating new predictions. An n-gram count consistency bug triggered by the dynamic learning capability of the smoothed n-gram predictive plugin has been fixed in this release.

Presage 0.7.1 incorporates a number of bug fixes: completion validation routine case sensitiveness, fixed various compilation warnings, prompter UTF8 encoding.

Presage 0.7.1 also includes other bug fixes and enhancements. Please see the ChangeLog for more details.

<!--more-->

Presage 0.7.1 is a beta release. This is a source release only. No precompiled packages or installers are provided.

Users wishing to try out Presage will need to follow the (easy) steps required to build presage on their machine, as detailed in the <a href="presage/trunk/README">README</a> file. Please note that <a href="?q=node/17">SQLite</a> is required to build presage. <a href="?q=node/17">CPPUnit</a> is optional, but be aware that no unit tests will be built nor run when running `make check', unless CPPUnit is installed.

Presage 0.7.1 has been built and tested on various Linux platforms (including 32-bit and 64-bit architectures), Solaris 10, Windows XP/Cygwin, and Windows XP/MinGW/MSYS. If you encounter any issues while building or running presage, please report it to the [author](/contact/).

As always, there is still a lot more work to be done. Currently, the installed presage system is trained on a very small training corpus. Predictive performance can be greatly increased by using a larger training corpus. Users can easily generate statistical predictive resources using the text2ngram tool on a custom training text corpus.  
New predictive plugins are also in the works, which will take advantage of the multiple predictive source architecture.  
Please refer to our TODO list for details on what needs to be done.

