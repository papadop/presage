---
title:       "Architecture"
type:	     page
date:        2007-05-12
changed:     2009-12-22
draft:       false
weight:	     10
---

Presage's architecture revolves around the concept of predictive plugins. Predictive plugins implement can be individually tuned to finely control presage's prediction generation process.

The presage system consists of a set of objects that provide functionality required by predictive plugins to access the context and retrieve resources needed to generate predictions. Each predictive plugins uses the services provided by presage platform to implement a specific prediction algorithm.

<!--more-->

Presage is extensible. Its reliance on predictive plugins means that additional predictive capabilities can be easily integrated by writing new predictive plugins.

Presage is flexible. Its flexibility derives from its plugin-based architecture and its configurability. This allows to easily experiment with new predictive techniques and improved users' experience.

Presage can be used as a powerful and flexible predictive workbench. Different predictive mechanisms can be quickly added to the platform, hence predictive performance of different language models can be easily tested.

Presage configurability and ability to learn also means that individual users can tailor presage's predictive capabilities to their needs and obtain the best benefit from its predictive performance.

<!--Presage uses Plump, the Pluggable Lightweight Ubiquitous Multithreaded Platform as its underlying plugin architecture.-->

Presage provides a set of predictive plugins and resources required for prediction. Whenever predictive resources are generated from data, tools to generate and extract predictive resources from raw data are included.

Presage aims to provide the best predictive text entry capabilities and provide a platform to ease development and addition of innovative predictive capabilities. It is hoped that these tools will help as many users as possible.

Presage's extensibility is achieved through pervasive usage of plugins. Its core functionality is provided by intelligent components which can be effortlessly plugged into the system. This plugin-based design encourages decoupling of prediction mechanisms and fosters reuse of the basic services offered by presage's core modules.

Presage's pluggability means that presage predictive capabilities can be easily integrated into an existing system. Presage transparently reads the characters entered by the user and returns predictions.

Presage's configurability is a direct conseguence of its plugin architecture and of the flexible design of its core components. The user can customize presage's predictive functionality by choosing which predictive plugins to use. The behaviour of the core modules is controlled by an easily editable XML file.
