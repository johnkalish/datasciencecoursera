getmonitor <- function(id, directory, summarize = FALSE) {

if (id < 10){
idstring = paste("00",id,sep="")
}
else if (id < 100){
idstring = paste("0",id,sep="")
}
else {
idstring = paste(id);
}

csvfile = paste(getwd(),"/",directory,"/",idstring,".csv",sep="");
if (summarize == TRUE){
	print(summary(read.csv(csvfile)));
}
read.csv(csvfile);
}