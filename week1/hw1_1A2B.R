play1A2B_start <- function() {
  nGuesses <<- 0
  targetValue <<- toString(sample(1000:9999, 1))
  
  print('Playing a new round of 1A2B! Go for it!')
}
play1A2B_start()

indexOf <- function(haystack, needle) {
  unlist(gregexpr(pattern=needle, haystack))
}

play1A2B_guess <- function(guess) {
  nGuesses <<- nGuesses + 1
  
  as <- 0
  bs <- 0
  for (i in 1:4) {
    c <- substr(guess, i, i)
    targetIdx <- indexOf(targetValue, c)
    if (i %in% targetIdx) {
      as <- as + 1
    }
    else {
      bs <- bs + ifelse(targetIdx != -1, 1, 0)
    }
  }
  
  res <- paste(as, 'A', bs, 'B', sep='')
  if (as == 4) {
    print(paste(res, ' - You won after ', nGuesses, ' guesses!', sep=''))
    play1A2B_start()
  }
  else {
    print(paste(res, ' (Guess #', nGuesses, ')', sep=''))
  }
}


print(targetValue)

play1A2B_guess('1234')
