corr <- function(directory, threshold = 0) {
result <- c()
id <- 1:332

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
    file.complete <- file[complete.cases(file),]
    file.completecount <- sum(complete.cases(file))
    
    if (file.completecount > threshold) {
      subresult <- cor(file.complete[,2],file.complete[,3])
      result <- c(result,subresult)
    }
    
    
  }

  #test result <- c(ptotal,psum)
  return(result)
}

