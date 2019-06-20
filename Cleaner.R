library(tm)

clean_input <- function(item) {
    #words <- removeWords(user_input, stopwords('en'))
    strsplit(stripWhitespace(removeNumbers(removePunctuation(tolower(item)))), split=" ")[[1]]
}
    