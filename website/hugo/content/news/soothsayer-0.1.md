---
title:       "Soothsayer 0.1 released"
type:        story
date:        2007-06-02
changed:     2007-07-28
draft:       false
promote:     false
sticky:      false
---

I am proud to announce the first ever public release of Soothsayer.

Soothsayer 0.1 is now available for [download](/download/).

Soothsayer 0.1 is a developer's preview release. This is a source release only. No precompiled packages or installers are provided.

<!--more-->

Users wishing to try Soothsayer out will need to follow the (easy) steps required to build soothsayer on their machine, as detailed in the README. Please note that <a href="?q=node/17">Sqlite</a> is required to build soothsayer. CPPUnit is optional, but no unit tests will be built when running `make check', unless CPPUnit is installed.

Soothsayer 0.1 has been built and tested on various Linux platforms (including 64 bit architectures).

Building on Windows + Cygwin is temporarily broken.

If you encounter any issues while building or running soothsayer, please report it to the author.

There is still a lot of work to be done. Currently, the build process trains Soothsayer predictive plugin with a very limited training corpus (a single book).
Predictive performance can be greatly increased by using a larger training corpus. Users can easily generate predictive resources using a custom text corpus and the extraction tools provided.

Currently, only one predictive plugin is provided, a smoothed n-gram predictive plugin. The plugin should be extended to be able to support n-grams of any cardinality. More plugins should also be added to take advantage of the multiple predictive source architecture.

There is also more work to be done on various modules, including the combiner module and the configuration module.

Please refer to our TODO file for more information on what needs to be done.
