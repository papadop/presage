---
title:       "Soothsayer 0.3 released"
type:        story
date:        2007-07-28
draft:       false
promote:     false
sticky:      false
---

Soothsayer 0.3 is now available for [download](/download/).

Soothsayer 0.3 adds initial support for simultaneous use of multiple predictive plugins. Multiple predictions combination is carried out according to a meritocracy policy.

This release also includes bug fixes, memory leak fixes, and improvements to the demo programs (visual context change cues).

Soothsayer 0.3 adds new configuration variables to control its runtime predictive behaviour. Configuration handling has been refactored. Please consult the ChangeLog for more details.

Soothsayer 0.3 is a developer's preview release. This is a source release only. No precompiled packages or installers are provided.

<!--more-->

Users wishing to try Soothsayer out will need to follow the (easy) steps required to build soothsayer on their machine, as detailed in the <a href="soothsayer/trunk/README">README</a> file. Please note that <a href="?q=node/17">SQLite</a> is required to build soothsayer. <a href="?q=node/17">CPPUnit</a> is optional, but no unit tests will be built when running `make check', unless CPPUnit is installed.

Soothsayer 0.3 has been built and tested on various Linux platforms (including 64 bit architectures) and Windows XP + Cygwin platform. If you encounter any issues while building or running soothsayer, please report it to the [author](/contact/).

There is still a lot of work to be done. Currently, the build process trains Soothsayer predictive plugin with a very limited training corpus (a single novel).  
Predictive performance can be greatly increased by using a larger training corpus. Users can easily generate predictive resources using a custom text corpus and the extraction tools provided.  
Currently, only one predictive plugin is provided, a smoothed n-gram predictive plugin. The plugin should be extended to be able to support n-grams of any cardinality. More plugins should also be added to take advantage of the multiple predictive source architecture.  
Please refer to our TODO list for more details on what needs to be done.
