title: 'hebnoRms: Affect Norms for Hebrew'
tags:
  - R
  - natural language processing
  - sentiment analysis
  - hebrew
authors:
  - name: Almog Simchon^[Custom footnotes for e.g. denoting who the corresspoinding author is can be included like this.]
    orcid: 0000-0003-2629-2913
 affiliation: "1"
affiliations:
 - name: Department of Psychology, Ben-Gurion University of the Negev
   index: 1
date: 05 July 2020
bibliography: paper.bib

---

# Summary

The field of computional text analysis in R has been blessed with wonderful tools like `quanteda`, `tidytext`, `tm` and more.
However, if a social scientist would like to conduct reaserch on a language other than the several langauges of focus (e.g., English),
they would lack the tools to do it. For example, dealing with morphologically rich languages is computaionally expansive and generally demands more computer science expertise.


`hebnoRms` provides a solution to those studying emotion in Hebrew, by providing affect 
norms (valence and arousal; ranging from 1 to 9) for up to 1.4M hebrew words.
Hebrew is a morphologically rich language, an as such it makes relativly simple NLP tasks more challenging than in English.
To deal with these complexities, `hebnoRms` takes a heuristic approach; instead of parsing every single word, 
it overcomes with large lexica (22K and 1.4M) that includes separate values for each token, even if the target word is the same 
[*samaxti* (I was *happy*) ≠ *esmax* (I will be *happy*)].

`hebnoRms` It was built on E-Millim [@Armony-Sivan2013-zx] and expanded using word vectors from fasttext [@joulin2016fasttext; @grave2018learning] and the SVLM Hebrew Wikipedia Corpus [@Silber-Varod2017-xp].
fasttext was chosen as it incorporates in its vectors subword information that correspond to morphological infelctions, suitble to morphologically rich languages.

The pacakge was validated on the *Neural Sentiment Analyzer for Modern Hebrew* [@amram2018representations], 
resulting in Cohen’s d = 0.95 and Cohen’s d = 1.06 for the small and large lexica respectively \autoref{fig:example}. 

![Package validation.\label{fig:example}](man\figures\fig_plot.png)


# References