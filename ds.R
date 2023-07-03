## IN R there are 6 types of data structures 
# Vector
# Lists
# Arrays
# Matrices
# Data Frames
# R Factors

#############################    *Vector*    ###############################
fruits <- c("apple", "mango", "banana", "orange", "lemon")
fruits
fruits[c(2, 4)]
fruits[c(-3)]
fruits[1]<- "pear"
fruits
sort(fruits)
class(fruits)
numbers<-1:10
numbers
numbers[4]
numbers[c(4, 7)]
length(numbers)
class(numbers)
str<-as.character(numbers)
str
class(str)


#############################    *Lists*    ###############################
theList<-list("apple", "mango", "banana", "lemon")
theList
theList[3]
theList[2]<-"blackcurrant"
theList
length(theList)
"apple" %in% theList
"mango" %in% theList
newList<-append(theList, "orange")
newList<-append(theList, "cherry", after= 2)
newList
newList<-newList[-3]
newList
(theList)[2:4]

for (i in theList) {
  print(i)
}
newList<-c(theList, newList)
newList


#############################    *Arrays*    ################################
#Compared to matrices, arrays can have more than two dimensions.
thisArray<-c(1:15)
thisArray

#multiple array
mulArray<-array(thisArray, dim = c(4, 3, 2))
mulArray
mulArray[2,3,1]
7 %in% mulArray
dim(mulArray)
length(mulArray)
for (r in mulArray) {
 print(r) 
}
