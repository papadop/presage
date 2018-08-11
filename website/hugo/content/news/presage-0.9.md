---
title:       "Presage 0.9 released"
type:        story
date:        2014-09-12
changed:     2014-09-11
draft:       false
promote:     false
sticky:      false
---

Presage 0.9 is now available for [download](/download/).

Presage 0.9 introduces a new .NET binding.  
.NET applications can now easily integrate with presage by using the presage.NET assembly. The native C++ presage core is wrapped using P/Invoke functionality provided by the .NET framework.  
A C# demo application illustrates how simple it is to use presage.net in .NET (bindings/c#).

Presage 0.9 now supports the [MinGW-w64](http://mingw-w64.sourceforge.net/) 64-bit and 32-bit toolchains from the MinGW-builds project. Detailed instructions on how to build with the MinGW-w64 toolchains are available in

    doc/INSTALL_MinGW64_MSYS_dev_env.txt
    doc/INSTALL_MinGW32_MSYS_dev_env.txt

Pre-built Windows installers are also available.

<!--more-->

Presage 0.9 fixes several issues uncovered by static code analysis tools. Enhancements to the Notepad++ plugin, the Windows installer, and the build system have been added.

Presage 0.9 also includes other bug fixes and enhancements. Please see the ChangeLog for further details.
