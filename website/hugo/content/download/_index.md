---
title:       "Download"
type:        page
date:        2007-05-12
changed:     2012-06-09
draft:       false
promote:     false
sticky:      false
aliases:     [ node/16 ]
menu:        [ "main" ]
weight:	     30
description: "presage binaries and sources"
---

## Binary releases

### Linux

Debian GNU/Linux users (including Debian distribution derivatives such as Ubuntu etc.) can install presage with:

    sudo apt-get install libpresage-dev  # install presage library, dependencies and development files
    sudo apt-get install gprompter       # install gprompter application

The full list of presage packages is available [here](https://tracker.debian.org/pkg/presage).

Similarly, OpenSUSE users can install presage with:

    zypper libpresage-dev


### Windows

Stable binary releases for Windows are available for download from [SourceForge](http://sourceforge.net/project/showfiles.php?group_id=172950).

  * [64-bit Windows presage installer](https://sourceforge.net/projects/presage/files/presage/0.9.1/win64/presage-0.9.1-64bit-setup.exe/download)
  * [32-bit Windows presage installer](https://sourceforge.net/projects/presage/files/presage/0.9.1/win32/presage-0.9.1-32bit-setup.exe/download)

To use the Notepad++ presage predictive text entry plugin, please ensure that you select the right bitness to match your Notepad++ installation (pick 64-bit presage installer if you use 32-bit Notepad++ and pick 32-bit presage installer if you use 64-bit Notepad++).

<a href="http://sourceforge.net/project/showfiles.php?group_id=172950"><img src="./download_presage.png" alt="Download presage" /></a>


## Building from source

### Requirements

A working development environment:

  * On Linux/Unix systems, this means having GCC, the GNU Compiler Collection packages, as well as libraries for these languages (libstdc++, libgcj, glibc, etc).
  * On Windows systems, please use MSYS2 (Cygwin or MinGW might work too but are not tested as often as MSYS2).

Please refer to:

  * <a href="http://presage.git.sourceforge.net/git/gitweb.cgi?p=presage/presage;a=blob_plain;f=README;hb=HEAD">README</a>
  * <a href="http://presage.git.sourceforge.net/git/gitweb.cgi?p=presage/presage;a=blob_plain;f=INSTALL;hb=HEAD">INSTALL</a>
  * <a href="http://presage.git.sourceforge.net/git/gitweb.cgi?p=presage/presage;a=blob_plain;f=doc/INSTALL_MSYS2_dev_env.txt;hb=HEAD">INSTALL_MSYS2_dev_env.txt</a>
  * <a href="http://presage.git.sourceforge.net/git/gitweb.cgi?p=presage/presage;a=blob_plain;f=doc/INSTALL_Cygwin_dev_env.txt;hb=HEAD">INSTALL_cygwin_dev_env.txt</a>
  * <a href="http://presage.git.sourceforge.net/git/gitweb.cgi?p=presage/presage;a=blob_plain;f=doc/INSTALL_MinGW_MSYS_dev_env.txt;hb=HEAD">INSTALL_MinGW_MSYS_dev_env.txt</a>

files for more detailed information on software dependencies required to build presage.

<!--more-->

A full list of required and optional software can be found in the <a href="http://presage.git.sourceforge.net/git/gitweb.cgi?p=presage/presage;a=blob_plain;f=README;hb=HEAD">README</a>.


### GIT access

You can obtain the very latest *bleeding edge* source code directly from our source code repository.

Please note that the latest sources may be in an *experimental* state and thus not suitable for general usage (in practice, however, head is usually in pretty good shape).

Please refer to the source code repository section on our [development](/development/) page for additional instructions.


### Building presage

Building presage is as easy as:

    ./configure
    make all

If you are building on a multicore machine, you can drastically speed up the build process by turning on parallel building with the -j flag:

    make -j8 all  # put those processor cores to work

To run the test suite:

    make -j8 check

To install, just say:

    make -j8 install


