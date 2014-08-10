setwd("~/Documents/datasciencecoursera/Getting and Cleaning Data/Week 1")
#question1
getdata.data.ss06hid <- read.csv("~/Documents/datasciencecoursera/Getting and Cleaning Data/Week 1/getdata-data-ss06hid.csv")
#VAL = '24' and TYPE = '1'
houses = getdata.data.ss06hid
x = houses[,'VAL']
y = houses[,'TYPE']
z = complete.cases(x,y)
houses2 = houses[z,]
houses3 = houses2[houses2[,'VAL']=='24',]
houses4 = houses3[houses3[,'TYPE']=='1',]

#question3
quiz1q3 <- read.csv("~/Documents/datasciencecoursera/Getting and Cleaning Data/Week 1/quiz1q3.csv")
dat = quiz1q3
sum(dat$Zip*dat$Ext,na.rm=T)

#question4
library(XML)
q4url = "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
q4doc = xmlTreeParse(q4url,useInternalNodes=TRUE,isURL=TRUE,isHTML=TRUE)
rootNode = xmlRoot(q4doc)
xmlName(rootNode)
zipcodes = xpathSApply(q4doc,"//zipcode",xmlValue)
zipcodes

#question5
q5url = 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv'