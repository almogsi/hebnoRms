data(.sysdata, envir=environment())

heb_norms <- function(text){

  b <- as.character(text)
  b <- gsub("[[:punct:]]", "", b)
  which.txt <- which(heb_data$word %in% unlist(stringr::str_split(b, " ")))
  Valence <- round(sum(heb_data$valence[which.txt]) / length(which.txt),2)
  Arousal <- round(sum(heb_data$arousal[which.txt]) / length(which.txt),2)
  return(c(Valence = Valence, Arousal = Arousal))
}
