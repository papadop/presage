---
title:       "Presage 0.7 released"
type:        story
date:        2008-09-09
draft:       false
promote:     false
sticky:      false
---

Presage 0.7 is now available for [download](/download/).

Presage 0.7 is the first release that uses the new project name. Presage was formerly known as Soothsayer. The Soothsayer project was renamed to Presage in order to avoid clashes with a similarly named commercial software product.

Presage 0.7 is now able to learn "on the fly" from the context and the text currently being entered. The smoothed n-gram predictive plugin dynamically learns from the current context, while generating new predictions. Presage 0.7 also includes a new dejavu plugin, which reproduces previously entered text sequences once its memory trigger is activated.

Presage 0.7 provides better predictions by incrementally increasing depth of prediction generation while previous predictions did not match desired token.

Presage 0.7 delivers an improved Python GUI demo application, Prompter:

  * added prompt functionality, which allows user to request a new prediction on-demand
  * added function keys mode, which allows user to select desired prediction by pressing the corresponding function key
  * added ability to toggle autopunctuation functionality
  * added toolbar (can be hidden/shown)
  * added ability to toggle learning mode on or off
  * added edit menu with cut, copy, paste, undo, redo, select all operations
  * improved editor layout
  * added modern about dialog box

Presage 0.7 incorporates several bug fixes to the context changes detection code, including fixing bugs triggered by empty string updates and bugs where multiple separators triggered spurious context changes.

Presage 0.7 includes a new GTK application which aims to augment any other application with presage predictive functionality.

Presage 0.7 also includes bug fixes and improvements to the build framework. See ChangeLog for more details.

<!--more-->

Presage 0.7 is a beta release. This is a source release only. No precompiled packages or installers are provided.

Users wishing to try out Presage will need to follow the (easy) steps required to build presage on their machine, as detailed in the <a href="presage/trunk/README">README</a> file. Please note that <a href="?q=node/17">SQLite</a> is required to build presage. <a href="?q=node/17">CPPUnit</a> is optional, but be aware that no unit tests will be built nor run when running `make check', unless CPPUnit is installed.

Presage 0.7 has been built and tested on various Linux platforms (including 32-bit and 64-bit architectures), Solaris 10, Windows XP/Cygwin, and Windows XP/MinGW/MSYS. If you encounter any issues while building or running presage, please report it to the [author](/contact/).

As always, there is still a lot more work to be done. Currently, the installed presage system is trained on a very small training corpus. Predictive performance can be greatly increased by using a larger training corpus. Users can easily generate statistical predictive resources using the text2ngram tool on a custom training text corpus.  
New predictive plugins are also in the works, which will take advantage of the multiple predictive source architecture.  
Please refer to our TODO list for details on what needs to be done.

