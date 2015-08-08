#q1
#https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv
q1data <- read.csv("C:\\Users\\JOHNK_~1\\AppData\\Local\\Temp\\RtmpYV2oRH\\data1dcc6e552f7e")

#acr of 3
#ags of 6

agricultureLogical <- q1data$ACR == 3 & q1data$AGS == 6
which(agricultureLogical)

#q2
#https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg

q2data <- readJPEG("getdata-jeff.jpg",TRUE)


quantile(q2data, probs = c(.3,.8))
