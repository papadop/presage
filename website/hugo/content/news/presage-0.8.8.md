---
title:       "Presage 0.8.8 released"
type:        story
date:        2012-06-05
changed:     2013-08-08
draft:       false
promote:     false
sticky:      false
---

Presage 0.8.8 is now available for [download](/download/).

Presage 0.8.8 allows to enabled multiple instances of the same predictor class at runtime through configuration. Each predictor instance is independently configured to allow greater flexibility. Predictive performance can be more finely tailor to the users' specific needs by tuning the resources and configuration of each predictor.  
The default configuration has been changed to add a custom user smoothed ngram predictor, which adaptively learns its language model. The user-specific default configuration file location is now ``~/.presage/presage.xml`` (``~/.presage.xml`` is no longer used). The configuration now supports and expands environment variables.

Presage 0.8.8 adds support for filters to dictionary predictor, recency predictor, abbreviation expansion predictor, and dejavu predictor. The smoothed n-gram predictor will create and initialize a language model database if it does not already exist. Learning performance of the smoothed n-gram predictor has been improved. A new configuration variable has been added to control context tracking case sensitivity.

<!--more-->

Presage 0.8.8 fixes a bug that caused learning of spurious text. A bug affecting gprompter when learning is enabled was fixed. A memory allocation bug and a memory leak were fixed in the Notepad++ plugin.

Presage 0.8.8 ships with an updated embedded XML configuration parser library and update text editing component.

Presage 0.8.8 comes with a number of other enhancements and fixes. Please see the ChangeLog for more details.
