hw1_data <- read.csv("~/Documents/datasciencecoursera/R Programming/Week 1/hw1_data.csv")

q16 <- sum(is.na(hw1_data[,1]))

q17 <- mean(hw1_data[!is.na(hw1_data$Ozone),1])

q18 <- mean(hw1_data[hw1_data[,'Ozone']>31 & hw1_data[,'Temp'] > 90 & !is.na(hw1_data[,'Ozone'])& !is.na(hw1_data[,'Temp'])& !is.na(hw1_data[,'Solar.R']),'Solar.R'])

q19 <- mean(hw1_data[!is.na(hw1_data[,'Month'])& !is.na(hw1_data[,'Temp']) & hw1_data[,'Month'] == 6,'Temp'])

q20 = hw1_data[!is.na(hw1_data[,'Ozone']),]
q20 = q20[!is.na(q20[,'Month']),]
q20 = q20[q20[,'Month']=='5',]
max(q20[,'Ozone'])