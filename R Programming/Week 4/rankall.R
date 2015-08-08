rankall = function(outcome,num) {
  outcomes = read.csv("outcome-of-care-measures.csv",colClasses="character")
  
  outcomes[,11] = as.numeric(outcomes[,11])
  outcomes[,17] = as.numeric(outcomes[,17])
  outcomes[,23] = as.numeric(outcomes[,23])
  
  
  
  if(outcome == "heart attack"){
    resultset = data.frame(outcomes$Hospital.Name,outcomes$State,outcomes$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack,stringsAsFactors = FALSE)
  } 
  else if (outcome == "heart failure") {
    resultset = data.frame(outcomes$Hospital.Name,outcomes$State,outcomes$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure,stringsAsFactors = FALSE)
  } 
  else if (outcome == "pneumonia"){
    resultset = data.frame(outcomes$Hospital.Name,outcomes$State,outcomes$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia,stringsAsFactors = FALSE)
  }
  else {
    stop("invalid outcome")
  }
   
  colnames(resultset)[1] = "name"
  colnames(resultset)[2] = "state"
  colnames(resultset)[3] = "condition"

  resultset = resultset[complete.cases(resultset),]
  #print(resultset)
  sortedresultset = resultset[order(resultset$state,resultset$condition,resultset$name),]
  #print(sortedresultset)
  #print(sortedresultset[,1])
  
 x = 1
  while (x)
  result = factor(sortedresultset[num,1])
  as.character(result)
  
}


