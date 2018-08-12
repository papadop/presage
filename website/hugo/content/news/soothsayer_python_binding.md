---
title:       "Soothsayer gets a Python binding"
type:        story
date:        2007-09-01
draft:       false
promote:     false
sticky:      false
---

What do you get when you cross an intelligent predictive text entry system with a fast dynamic object-oriented programming language?

Why, of course, you get a [python](http://www.python.org/) binding for soothsayer.

<!--more-->

To unleash the power of soothsayer from within Python, simply import soothsayer python module with:

    import soothsayer

then create an instance of soothsayer with:

    soothie = soothsayer.Soothsayer(config)

Predictions can now be generated with:

    soothie.predict(string)

The entire soothsayer API has been mapped and is available from Python.
