
---
title:       "Concepts"
type:        page
date:        2007-05-12
changed:     2009-08-27
weight:	     20
---

How can presage predict what text the user is going to enter next?

The approach relies on information theory. Natural language is modelled as an information source. Natural language is a redundant information source.

The key idea is modelling natural language as a set of redundant sources of information. The redundancy embedded in natural language is exploited by various predictive methods to extract information in order to generate predictions.

<!--more-->

Information sources can be classified as [statistical]({{< relref "#statistical-sources" >}}), [syntactic]({{< relref "#syntactic-sources" >}}) and [semantic]({{< relref "#semantic-sources" >}}).


## Statistical sources

If one were asked to guess what word followed the following text fragment:

    The quick brown fox jumps over the lazy ...

one would most likely reply

    dog

`The quick brown fox jumps over the lazy dog` is in fact a widely known [pangram](http://en.wikipedia.org/wiki/Pangram) (a sentence which uses every letter of the alphabet at least once).

One would pick the word `dog` on the grounds that, given the history string `The quick brown fox jumps over the lazy ...`, `dog` most frequently follows (*frequentist* approach to statistical information).

Likewise, one would pick `over` or `on` when given the fragment `The quick brown fox jumps ...` on account that the words that most frequently follow the verb `jump` are either `on` or `over`.


## Syntactic sources

Continuing the previous example, one would pick the words `over` or `on` when given the context:

    The quick brown fox jumps o...

(note the final letter `o`)

A syntactically aware predictive plugin could exploit the fact that `to jump` is an intransitive verb and should be followed by an adverb. `on` and `over` are adverbs and begin with the letter `o`, which makes them strong candidates for a prediction.


## Semantic sources

Supposing one had been writing about the adventures of a cunning fox and a loyal dog for a while, then one would suggest that `dog` is the most likely object to be jumped over by the `fox`:

    The quick brown fox jumps over the lazy d...

Information about the context and (however limited) comprehension of said context provides additional information to increase predictive accuracy.

The resulting language model is powerful, flexible and extensible.


