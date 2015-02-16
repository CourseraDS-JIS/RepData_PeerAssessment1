setwd("C:/Users/julie/Desktop/Data Science Coursera/RR/PA 1/RepData_PeerAssessment1")
fitData <- read.csv("activity.csv")

steps.by.date <- aggregate(. ~ date, data=fitData, FUN=sum)
## Just keep steps and date
steps.by.date <- steps.by.date[,1:2]
## note that there are 53 rows in steps by date,
## this is our first clue that 8 days of data are missing

hist(steps.by.date$steps)
## add a rug under it, please.

## Here's some exploratory analysis of the na's
fitData$day <- weekdays(as.Date(fitData$date))
naData <- fitData[is.na(fitData$steps),]
unique(naData$day)
## no pattern of days
unique(naData$date)
## There are 8 days on which no data was collected



