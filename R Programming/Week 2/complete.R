complete <- function(directory, id = 1:332) {
  #id <- c()
  #nobs <- c()
  #result <- data.frame(id,nobs)
 j <- 0
  
  for (i in id){
    i.new <- i
    if(i < 10) {
      i.new <- paste("00",i, sep="")
    }
    if(i>=10 & i<100){
      i.new <- paste("0",i, sep="")
    }
    
    file <- read.csv(paste(directory,"\\",i.new,".csv", sep=""), header = TRUE)
    #test with:
    # file <- read.csv("specdata\\001.csv", header = TRUE)
    file.complete <- sum(complete.cases(file))
    subid <- i
    subnobs <- file.complete
    subresult <- data.frame(id=subid,nobs=subnobs)
    if(j == 0) result <- subresult
    if(j > 0) result <- rbind(result,subresult)
    j <- j + 1
  }

  #test result <- c(ptotal,psum)
  return(result)
}

