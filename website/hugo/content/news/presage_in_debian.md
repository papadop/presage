---
title:       "Presage accepted in Debian"
type:        story
date:        2011-08-24
changed:     2011-09-28
draft:       false
promote:     false
sticky:      false
---

I am glad to announce that presage has been [accepted into Debian](http://packages.qa.debian.org/p/presage/news/20110813T123230Z.html) Sid and migrated into Debian testing. presage-0.8.6-1 was [built, signed, and uploaded](http://lists.debian.org/debian-mentors/2011/08/msg00201.html) on Sat, 6 August 2011.

As this is the first upload of the presage package, it was moved to the new/ directory, where it waited for approval by the ftpmasters.

Once the package was accepted, I got a confirmation mail and the "Intent To Package" bug was [closed](http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=468820).

<!--more-->

The auto-builders then started crunching away to recompile presage on the various architectures. The package is now installed in the Debian archive for all [officially supported architectures](https://buildd.debian.org/status/package.php?p=presage)

Presage has also been built and installed on some of the debian [ports architectures](http://buildd.debian-ports.org/status/package.php?p=presage).


So, from now on, you are only a simple command away from using presage on any Debian installation:

    `apt-get install presage'

or you might want to try out the GTK+ predictive text editor `gprompter' with:

    `apt-get install gprompter'

or maybe the wxPython predictive text editor `pyprompter' with:

    `apt-get install pyprompter'

