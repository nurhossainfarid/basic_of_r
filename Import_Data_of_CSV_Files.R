#Importing data from CSV Files

#-----------------------------------------------------------------------------
getwd() #the current working directory
setwd('E:\R Programming\Basic_of_R') #set current working directory(wd) 

#read csv file
readCsv<- read.csv("serious-injury-outcome-indicators-2000-2020-CSV.csv")
view(readCsv)
print(is.data.frame(readCsv))
print(ncol(readCsv))
print(nrow(readCsv))
str(readCsv) #shows the structure of data frame
summary(readCsv) #shows the summary statistic of the data frame
length(readCsv) # for files length shows that total number of cols
dim(readCsv) # shows the dimension of data frame by rows and cols
colnames(readCsv) #shows the each cols name
head(readCsv) #shows the first 6 rows
tail(readCsv) #shows the last 6 rows
names(readCsv)
store<- readCsv[c(1:4, 7, 4:6, 8:13)] #change variable position
names(store)

details<-subset(readCsv, Lower_CI==54.0183167)
print(details)
