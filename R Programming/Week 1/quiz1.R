hw1_data <- read.csv("~/Documents/datasciencecoursera/R Programming/Week 1/hw1_data.csv")
q20 = hw1_data[!is.na(hw1_data[,'Ozone']),]
q20 = q20[!is.na(q20[,'Month']),]
q20 = q20[q20[,'Month']=='5',]
max(q20[,'Ozone'])

