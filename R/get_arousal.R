data(.sysdata, envir=environment())

#' @title Get Arousal
#'
#' @author Almog Simchon, \email{almogsi@@post.bgu.ac.il}
#'
#' @description Calculates the mean arousal of hebrew text. The function can use a small lexicon (22k tokens, default) or a large lexicon (1.4M tokens)
#'
#' @param text A string
#' @param long A logical indicates which lexicon to use
#'
#' @return The valence of \code{text}
#'
#' @examples
#' get_arousal("some Hebrew Text", long=FALSE)
#' get_arousal("some Hebrew Text", long=TRUE)
#'
#' @import data.table
#' @importFrom stringr str_split
#' @importFrom Rdpack reprompt
#'
#'
#' @references{
#'   \insertRef{Armony-Sivan2013-zx}{hebnoRms}
#'
#'   \insertRef{joulin2016fasttext}{hebnoRms}
#'
#'   \insertRef{Silber-Varod2017-xp}{hebnoRms}
#' }
#'
#' @export

get_arousal <- function(text, long=FALSE){
  b <- as.character(text)
  b <- gsub("[[:punct:]]", "", b)

  if (long==F){
    which.txt <- which(short_norms$word %in% unlist(stringr::str_split(b, " ")))
    arousal <- round(sum(short_norms$arousal[which.txt]) / length(which.txt),2)
  }
  else{
    which.txt <- which(long_norms$word %in% unlist(stringr::str_split(b, " ")))
    arousal <- round(sum(long_norms$arousal[which.txt]) / length(which.txt),2)
  }
  return(arousal)
}
