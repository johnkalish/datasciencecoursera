pollutantmean <- function(directory, pollutant, id = 1:332) {
  pcount <- 0
  psum <- 0
  for (i in id){
    if(i < 10) {
      i <- paste("00",i, sep="")
    }
    if(i>=10 & i<100){
      i <- paste("0",i, sep="")
    }
    
    file <- read.csv(paste(directory,"\\",i,".csv", sep=""), header = TRUE)
    #test with:
    # file <- read.csv("specdata\\001.csv", header = TRUE)
    sulfatecount <- length(file[!is.na(file[,2]),2])
    sulfatesum <- sum(file[!is.na(file[,2]),2])
    nitratecount <- length(file[!is.na(file[,3]),3])
    nitratesum <- sum(file[!is.na(file[,3]),3])
    if(pollutant == 'sulfate'){
      pcount <- pcount + sulfatecount
      psum <- psum + sulfatesum
    }
    if (pollutant == 'nitrate'){
      pcount <- pcount + nitratecount
      psum <- psum + nitratesum
    }
  }
  result <- psum/pcount
  #test result <- c(ptotal,psum)
  return(result)
}

