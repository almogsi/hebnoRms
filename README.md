hebnoRms: Affect Norms for Hebrew
=====================================

`hbnoRms` provides affect norms (valence and arousal) for 22k hebrew words.
It was built on E-Millim (Armony-Sivan & Cojocaru, 2013) and expanded using fasttext (Joulin et al., 2016) and the SVLM Hebrew Wikipedia Courpus (Silber-Varod, Latin, & Moyal, 2017).

Download and Install
--------------------

You can install TATE with:

    # install.packages("devtools")
    devtools::install_github("almogsi/hebnoRms")

Examples
--------

    library(hebnoRms)

    heb_norms("רצח") # Norms of valence and arousal

    ##   Valence   Arousal  
    ##      2.32      8.07      
    
    
    heb_norms("אהבה") # Norms of valence and arousal

    ##   Valence   Arousal  
    ##      7.00      7.97 

    
References
----------

Joulin, A., Grave, E., Bojanowski, P., Douze, M., Jégou, H., & Mikolov, T. (2016). Fasttext. zip: Compressing text classification models. arXiv preprint arXiv:1612.03651.

Silber-Varod, V., Latin, M., & Moyal, A. (2017) "Frequency of Hebrew phonemes and phoneme clusters in a data-driven approach. (in Hebrew). Literacy and Language (Oryanut Ve-Safa), 6, 22-36

https://www.researchgate.net/project/E-millim-affective-norms-for-Hebrew-words


