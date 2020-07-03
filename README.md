# hebnoRms: Affect Norms for Hebrew <img src="man/figures/logo.png" align="right" width="120" />

`hbnoRms` provides affect norms (valence and arousal) for up to 1.4M hebrew words.
It was built on E-Millim (Armony-Sivan et al., 2013) and expanded using fasttext (Joulin et al., 2016) and the SVLM Hebrew Wikipedia Corpus (Silber-Varod et al., 2017).

Download and Install
--------------------

You can install hebnoRms with:

    # install.packages("remotes")
    remotes::install_github("almogsi/hebnoRms")

Examples
--------

    library(hebnoRms)

    get_valence("בדד אלך גם תפילה אין לי")

    ##   [1] 5.27  
     

    get_valence("בדד אלך גם תפילה אין לי", long = TRUE) #use large corpus (1.4M tokens)

    ##   [1] 5.13       	
    

    
References
----------

Joulin, A., Grave, E., Bojanowski, P., Douze, M., Jégou, H., & Mikolov, T. (2016). Fasttext. zip: Compressing text classification models. arXiv preprint arXiv:1612.03651.

Silber-Varod, V., Latin, M., & Moyal, A. (2017) "Frequency of Hebrew phonemes and phoneme clusters in a data-driven approach. (in Hebrew). Literacy and Language (Oryanut Ve-Safa), 6, 22-36

Armony-Sivan, R., Cojocaru, L., Babkoff, H. (2013). Affective norms for Hebrew words
(E-millim): Instruction manual and affecting ratings. Ashkelon Academic College,
Ashkelon, Israel.


