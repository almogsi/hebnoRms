\name{heb_norms}
\alias{heb_norms}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Norms of valence, arousal, and dominance.
}
\description{
The function takes a string as an argument and returns the mean value of valence and arousal.
The value is based fasttext word embedding prediction based on E-millim
}
\usage{
heb_norms(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
    An obejct of class character.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
Joulin, A., Grave, E., Bojanowski, P., Douze, M., Jégou, H., & Mikolov, T. (2016). Fasttext. zip: Compressing text classification models. arXiv preprint arXiv:1612.03651.
Armoni-Sivan & Cojocaru, 2013. https://www.researchgate.net/project/E-millim-affective-norms-for-Hebrew-words}
\author{
%%  ~~who you are~~
Almog Simchon
}
\note{
If the function returns NaN, it means no input text was found in the word list.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
heb_norms("רצח")
  Valence   Arousal 
     2.32      8.07 
  }
