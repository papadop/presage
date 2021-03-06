---
title:       "Soothsayer 0.1.1 released"
type:        story
date:        2007-06-27
changed:     2007-07-28
draft:       false
promote:     false
sticky:      false
---

Soothsayer 0.1.1 is now available for [download](/download/).

Soothsayer 0.1.1 fixes a problem that caused build failures in a Windows + Cygwin environment.

Soothsayer 0.1.1 is a developer's preview release. This is a source release only. No precompiled packages or installers are provided.

<!--more-->

Users wishing to try Soothsayer out will need to follow the (easy) steps required to build soothsayer on their machine, as detailed in the README. Please note that Sqlite is required to build soothsayer. CPPUnit is optional, but no unit tests will be built when running `make check', unless CPPUnit is installed.

Soothsayer 0.1.1 has been built and tested on various Linux platforms (including 64 bit architectures) and Windows XP + Cygwin platform. If you encounter any issues while building or running soothsayer, please report it to the [author](/contact/).

There is still a lot of work to be done. Currently, the build process trains Soothsayer predictive plugin with a very limited training corpus (a single book).  
Predictive performance can be greatly increased by using a larger training corpus. Users can easily generate predictive resources using a custom text corpus and the extraction tools provided.  
Currently, only one predictive plugin is provided, a smoothed n-gram predictive plugin. The plugin should be extended to be able to support n-grams of any cardinality. More plugins should also be added to take advantage of the multiple predictive source architecture.  
There is also more work to be done on various modules, including the combiner module and the configuration module.  
Please refer to our TODO file for more information on what needs to be done.
