---
title:       "Presage 0.8 released"
type:        story
date:        2010-02-23
draft:       false
promote:     false
sticky:      false
---

Presage 0.8 is now available for [download](/download/).

Presage 0.8 includes two new predictive applications, gprompter and pypresagemate.

Gprompter is a cross-platform predictive text editor. Gprompter displays predictions in a contextual pop-up box as each letter is typed. Predictions can be easily selected and inserted in the document.

Pypresagemate is a universal predictive text companion. Pypresagemate works alongside any AT-SPI aware application. The Assistive Technology Service Provider Interface (AT-SPI) is a toolkit-neutral way of providing accessibility facilities in applications. Pypresagemate works in the background by tracking what keystrokes are typed and displaying predictions in its window. When a prediction is selected, text is sent to the active application.

Presage 0.8 provides a new callback-aware programming interface to make it easier to develop interactive presage applications. Presage applications no longer need to track user interaction by explicitly updating the context. Instead, a callback object decouples the user application from the chosen text buffer (which might be a simple string, a graphical text widget, a file stream, etc.) and frees the caller from having to explicitly notify of any updates to the context.  with presage and this allows presage to retrieve contextual information from the application whenever needed.

Presage 0.8 also includes other bug fixes and enhancements. Please see the ChangeLog for more details.

<!--more-->

This is a source release only. No precompiled packages or installers are provided.

Users wishing to try out Presage should follow the (easy) steps needed to build presage, as detailed in the <a href="presage/trunk/README">README</a> file and in the documentation available in the doc/ directory.

Presage 0.8 has been built and tested on various Linux platforms (including 32-bit and 64-bit architectures), Solaris 10, Windows (Cygwin and MinGW/MSYS), and MacOS X. If you encounter any issues while building or running presage, please report them to the [author](/contact/).
