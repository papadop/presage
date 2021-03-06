---
title:       "Presage 0.7.2 released"
type:        story
date:        2009-08-15
draft:       false
promote:     false
sticky:      false
---

Presage 0.7.2 is now available for [download](/download/).

Presage 0.7.2 adds support for predictive plugins filters and a predict method returning an ordered multimap of <probability, token> pairs. The filters feature enables lookahead prediction.

Presage 0.7.2 incorporates a number of bug fixes, such as handling of utf-8 encoded text, initialization bug in presage demo program, build problems fixes in gpresagemate. Prompter comes with user interface improvements, such as text size controls.

Presage 0.7.2 also includes other bug fixes and enhancements. Please see the ChangeLog for more details.

<!--more-->

Presage 0.7.2 is a beta release. This is a source release only. No precompiled packages or installers are provided.

Users wishing to try out Presage should follow the (easy) steps needed to build presage, as detailed in the <a href="presage/trunk/README">README</a> file and in the documentation available in the doc/ directory.

Presage 0.7.2 has been built and tested on various Linux platforms (including 32-bit and 64-bit architectures), Solaris 10, Windows XP/Cygwin, and Windows XP/MinGW/MSYS. If you encounter any issues while building or running presage, please report it to the <a href="?q=node/19">author</a>.

As always, there is still a lot more work to be done. Currently, the installed presage system is trained on a very small training corpus. Predictive performance can be greatly increased by using a larger training corpus. Users can easily generate statistical predictive resources using the text2ngram tool on a custom training text corpus.  
New predictive plugins are also in the works, which will take advantage of the multiple predictive source architecture.  
Please refer to our TODO list for details on what needs to be done.
