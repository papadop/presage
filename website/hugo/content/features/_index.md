---
title:       "Features"
type:        page
date:        2007-05-12
changed:     2014-09-11
draft:       false
promote:     false
sticky:      false
aliases:     [ node/15 ]
menu:        [ "main" ]
weight:	     40
description: "that make presage an intelligent text entry system"
---


## At a glance

Presage is:

  * intelligent
    * multiple language models and predictive algorithms available  
    * leverages context to generate relevant predictions

  * fast

    * implemented in C++

  * adaptable

    * adaptive online and offline learning
    * learns while predicting (online learning)
    * can be trained on users' text for additional accuracy (offline learning)

  * multilingual

    * supports any natural language
    * prediction engine can be trained on any text corpora

  * cross-platform

    * runs on Linux, Windows, MacOS X, Android, IOS, Solaris, Maemo, etc.

  * free software

    * licensed under GPL

  * extensible

    * core architecture is designed to facilitate addition and integration of novel predictive algorithms

  * configurable

    * XML configuration profiles determine the runtime behaviour and predictive functionality
    * every configuration variable can be programmatically controlled queried and set through presage's API

  * flexible

    * native bindings for C++ and C
    * Python binding
    * .NET C# binding
    * support for other language via D-Bus service
    * Windows Communication Framework WCF service support


## Predictors

### Generalized smoothed n-gram statistical predictor

This predictor relies on a language model (an n-gram database generated from a text corpus using the text2ngram tool) to compute the most probable prediction based on the current context and language model. For example, for 3-gram language model, the probability of each possible prediction token is computed according to this formula:

    P(w3 | w1, w2) = a * f(w3 | w1, w2) + b * f(w3 | w2) + c * f(w3)

where a, b, and c are configurable smoothing parameters and:

    f(w3 | w1, w2) = C(w1, w2, w3) / C(w1, w2)
    f(w3 | w2) = C(w2, w3) / C(w2)
    f(w3) = C(w3) / C
    C(w0 ... wn) = count of n-gram <w0, ... ,wn>
    C = sum of all token counts in database

### ARPA predictor

The ARPA predictor enables the use of statistical language modelling data in the ARPA N-gram format. In the ARPA format each N-gram is stored with its discounted log probability and its Katz backoff weight. Probabilities are estimated by applying Katz backoff smoothing to the maximum likelihood estimates based on n-gram counts data.

### Recency predictor

Based on recency promotion principle, this predictor generates predictions by assigning exponentially decaying probability values to previously encountered tokens. Tokens are assigned a probability value that decays exponentially with their distance from the current token, thereby promoting context recency.

### Dictionary predictor

Generates a prediction by returning tokens that are a completion of the current prefix in alphabetical order. The predictive accuracy of this predictor is very low. This predictive predictor is meant as an example to getting started with developing predictors for presage.

### Abbreviation expansion predictor

Maps the current prefix to a token and returns the token in a prediction with a 1.0 probability. The abbreviations are configurable and extensible.

### Dejavu predictor

Dejavu predictor is able to learn and then later reproduce previously seen text sequences. The goal is dejavu predictor is to write a simple predictor that demonstrates how learning can be implemented in the presage system and exposes what functionality is required for learning predictors to work within the presage framework.


## Presage bindings

  * C++

    Simply `#include <presage.h>` header file and link with `-lpresage`.
    Check out the simple C++ demo applications in `src/tools/` or the GTK and QT applications in `apps/gtk/` and `app/qt/`.

  * C

    Simply `#include <presage.h>` header file and link with `-lpresage`.
    Check out the simple C demo applications in `bindings/c/` or the Notepad++ plugin in `apps/notepad++/`.

  * Python

    Import presage python module with `import presage`, then create an instance of presage with `prsg = presage.Presage(config)`. You are now ready to generate predictions with `prsg.predict(string)`. The entire presage API defined in presage.h has been mapped with SWIG and is available from Python.  
    Check out the simple Python demo applications in `bindings/python/` or pyprompter application in `apps/python/`.

  * .NET C#

    Define suitable callback methods, import presage.net assembly with `using presage`, then create an instance of presage with `Presage prsg = new Presage (demo.callback_get_past_stream, demo.callback_get_future_stream, "presage_csharp_demo.xml");`. You are now ready to generate predictions with `prsg.predict()`. The entire presage API defined in presage.h is available in .NET.  
    Check out the simple presage_csharp_demo application, the WCF service and system tray application in `bindings/csharp/`.


<!-- comment this out, this is really content for a project status page ...

<h1>Presage core modules</h1>
<table class="status">
 <tr>
  <td>Module</td>
  <td>Description</td>
  <td>Status</td>
 </tr>
 <tr>
  <td>ContextChangeDetector</td>
  <td>Detects context changes in streams.</td>
  <td>DONE</td>
 </tr>
 <tr>
  <td>ContextTracker</td>
  <td>Keeps track of user's input. Responds to preditors' queries regarding the context.</td>
  <td>DONE</td>
 </tr>
 <tr>
  <td>Tokenizer</td>
  <td>Breaks up the context into tokens.</td>
  <td>DONE</td>
 </tr>
 <tr>
  <td>Selector</td>
  <td>Determines which suggestions should be returned as a prediction. Decisions are based on configurable parameters.</td>
  <td>DONE</td>
 </tr>
 <tr>
  <td>PredictorRegistry</td>
  <td>Manages instantiation and iteration through predictors; aids generating predictions and learning.</td>
  <td>DONE</td>
 </tr>
 <tr>
  <td>PredictorActivator</td>
  <td>Coordinates individual predictors.</td>
  <td>DONE, more TODO</td>
 </tr>
 <tr>
  <td>Combiner</td>
  <td>Merges the suggestions returned by different predictors into a single prediction.</td>
  <td>DONE, more combiners to come</td>
 </tr>
 <tr>
  <td>ProfileManager</td>
  <td>Manages configuration profiles.</td>
  <td>DONE</td>
 </tr>
 <tr>
  <td>Configuration</td>
  <td>Allows to query and modify all presage runtime configuration variables and notify listeners of configuration variable changes.</td>
  <td>DONE</td>
 </tr>
 <tr>
  <td>Profile</td>
  <td>Represents a configuration profile at runtime.</td>
  <td>DONE</td>
 </tr>
 <tr>
  <td>PresageCallback</td>
  <td>Provides an interface that applications using presage must implement to hook into the application textual context.</td>
  <td>DONE</td>
 </tr>
 <tr>
  <td>Presage</td>
  <td>Provides the entry point for user application to presage predictive text functionality.</td>
  <td>DONE</td>
 </tr>
</table>

-->