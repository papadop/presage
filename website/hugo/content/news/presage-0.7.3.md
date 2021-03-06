---
title:       "Presage 0.7.3 released"
type:        story
date:        2009-10-20
changed:     2009-12-22
draft:       false
promote:     false
sticky:      false
---

Presage 0.7.3 is now available for [download](/download/).

Presage 0.7.3 includes the new predictive ARPA plugin. The ARPA plugin enables the use of statistical language modelling data in the ARPA N-gram format. In the ARPA format each N-gram is stored with its discounted log probability and its Katz backoff weight. Probabilities are estimated by applying Katz backoff smoothing to the maximum likelihood estimates based on n-gram counts data.

Presage 0.7.3 also provides (in a separate tarball) an extensive language model generated from the British National Corpus (BNC) containing 20.001 unigrams, 517.537 bigrams, and 1.648.226 trigrams. This language model was constructed by computing the smoothed Katz backoff trigram model using the CMU-Cambridge Statistical Language Modeling toolkit.

Presage 0.7.3 also includes other bug fixes and enhancements. Please see the ChangeLog for more details.

<!--more-->

Presage 0.7.3 is a beta release. This is a source release only. No precompiled packages or installers are provided.

Users wishing to try out Presage should follow the (easy) steps needed to build presage, as detailed in the <a href="presage/trunk/README">README</a> file and in the documentation available in the doc/ directory.

Presage 0.7.3 has been built and tested on various Linux platforms (including 32-bit and 64-bit architectures), Solaris 10, Windows XP/Cygwin, and Windows XP/MinGW/MSYS. If you encounter any issues while building or running presage, please report them to the [author](/contact/).

