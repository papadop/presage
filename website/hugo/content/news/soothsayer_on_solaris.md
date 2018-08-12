---
title:       "Soothsayer ported to Solaris 10"
type:        story
date:        2007-08-24
changed:     2007-08-31
draft:       false
promote:     false
sticky:      false
---

Soothsayer now builds and runs on Solaris 10!

Porting soothsayer to Solaris 10 was a breeze. There were a few minor issues with the curses library and the Standard Template Library (some definitions in the curses header conflicted with standard vector and standard list code), but they were quickly resolved.

I successfully built and tested soothsayer with <a href="http://developers.sun.com/sunstudio/products/previous/10/">Sun Studio 10</a> and <a href="http://developers.sun.com/sunstudio/products/previous/11/">Sun Studio 11</a> compilers.

<!--more-->

You will need to build SQLite, unless SQLite is already installed on Solaris box. There is a bug affecting the latest SQLite release on Solaris (3.4.2 at the time of writing). See <a href="http://www.sqlite.org/cvstrac/tktview?tn=2583,36">this ticket</a> for more information.

Configure soothsayer with:

    ./configure  CXX=/path/to/studio/10/or/11/CC

You might have to supply ``LDFLAGS=-L/path/to/sqlite/lib`` and ``CPPFLAGS=-I/path/to/sqlite/header`` if SQLite is installed in a non-standard location.

Enjoy soothsayer on solaris!
