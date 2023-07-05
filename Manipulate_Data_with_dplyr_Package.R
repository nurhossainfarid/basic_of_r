#installing package
install.packages("xlsx")

#check package is install or not
any(grepl("xlsx", installed.packages()))

#loading the library into R workshop
library("xlsx")

exeal_data<-read.xlsx("data_of_xls.xls", sheetIndex = 1)


#-------------------------------dplyr-----------------------------------------
install.packages("dplyr")
library("dplyr")

