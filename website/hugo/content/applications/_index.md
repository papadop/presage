---
title:       "Applications"
type:        page
date:        2010-02-14
changed:     2012-05-07
draft:       false
promote:     false
sticky:      false
aliases:     [ node/44 ]
menu:	     [ "main" ]
weight:	     60
description: "see presage in action"
---

Presage is used in a bunch of open-source projects.

{{% figure src="screenshots/acat-large.png" title="ACAT Assistive Context-Aware Toolkit" link="screenshots/acat-large.png" %}}

[ACAT](https://01.org/acat), the Assistive Context-Aware Toolkit, is an [open source platform](https://github.com/intel/acat) developed at Intel Labs to enable people with motor neuron diseases and other disabilities to have full access to the capabilities and applications of their computers through very constrained interfaces suitable for their condition. ACAT was originally developed by researchers at Intel Labs for Professor [Stephen Hawking](https://en.wikipedia.org/wiki/Stephen_Hawking). Predictive text functionality is provided by the presage WCF service.

Presage comes with a number of demo applications, some of which might be usable in their own right.

{{% figure src="screenshots/gprompter-0.8.png" title="gprompter" %}}

**gprompter** is a cross-platform predictive text editor. gprompter displays predictions in a contextual pop-up box as each letter is typed. Predictions can be easily selected and inserted in the document. gprompter is a cross-platform GTK+ application.

{{% figure src="screenshots/pyprompter-0.8.png" title="pyprompter" %}}

**pyprompter** is a cross-platform predictive text editor. pyprompter displays predictions in a contextual pop-up box as each letter is typed. Predictions can be easily selected and inserted in the document. pyprompter is a cross-platform wxPython application.

{{% figure src="screenshots/pypresagemate-0.1.png" title="pypresagemate" %}}

**pypresagemate** is a universal predictive text companion. Pypresagemate works alongside any AT-SPI aware application. The Assistive Technology Service Provider Interface (AT-SPI) is a toolkit-neutral way of providing accessibility facilities in applications. Pypresagemate works in the background by tracking what keystrokes are typed and displaying predictions in its window. When a prediction is selected, text is sent to the active application.

**presage_simulator** is a console application that simulates presage predictive process and reports on predictive performance.

**presage_demo** is an ncurses based application designed to interactively test presage predictive functionality.

**presage_demo_text** is a simple console application designed to interactively test presage predictive functionality.

**presage_python_demo** is a simple console application designed to interactively test presage python binding.
