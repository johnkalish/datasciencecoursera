best = function(state,outcome) {
  outcomes = read.csv("outcome-of-care-measures.csv",colClasses="character")
  hospital = read.csv("hospital-data.csv",colClasses="character")
  
  outcomes[,11] = as.numeric(outcomes[,11])
  outcomes[,17] = as.numeric(outcomes[,17])
  outcomes[,23] = as.numeric(outcomes[,23])
  
  outcomes.hospital = merge(outcomes,hospital, by="Provider.Number")
  outcomes.hospital.ofstate = subset(outcomes.hospital,outcomes.hospital$State.x == state)
  
  if(nrow(outcomes.hospital.ofstate) == 0){
    stop("invalid state")
  }
  
  if(outcome == "heart attack"){
    resultset = data.frame(outcomes.hospital.ofstate$Hospital.Name.x,outcomes.hospital.ofstate$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack,stringsAsFactors = FALSE)
  } 
  else if (outcome == "heart failure") {
    resultset = data.frame(outcomes.hospital.ofstate$Hospital.Name.x,outcomes.hospital.ofstate$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure,stringsAsFactors = FALSE)
  } 
  else if (outcome == "pneumonia"){
    resultset = data.frame(outcomes.hospital.ofstate$Hospital.Name.x,outcomes.hospital.ofstate$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia,stringsAsFactors = FALSE)
  }
  else {
    stop("invalid outcome")
  }
   
  colnames(resultset)[1] = "name"
  colnames(resultset)[2] = "condition"

  resultset = resultset[complete.cases(resultset),]
  #print(resultset)
  sortedresultset = resultset[order(resultset$condition,resultset$name),]
  #print(sortedresultset)
  #print(sortedresultset[,1])
  result = factor(sortedresultset[1,1])
  as.character(result)
  
}


