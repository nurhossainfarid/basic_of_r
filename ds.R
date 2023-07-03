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


#############################    *Matrices*    ################################
#A matrix is two dimensional data set row and column
#A matrix can be created with the matrix() function. Specify the nrow and ncol 
#parameters to get the amount of rows and columns
thisMatrix<-matrix(c(1:10), 3, 3, byrow = TRUE)
thisMatrix
thisMatrix[1,3]
thisMatrix[c(1,2),]
cbind(thisMatrix, c(10, 11, 12))
rbind(thisMatrix, c(13, 14, 15))
thisMatrix<-thisMatrix[-c(1), -c(2)]
thisMatrix
for (i in 1:nrow(thisMatrix)) {
  for (j in 1:ncol(thisMatrix)) {
    print(thisMatrix[i, j])
  }
}

#combine
Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)

matrix_combine<-cbind(Matrix1, Matrix2)
matrix_combine

matrix_combine<-rbind(Matrix1, Matrix2)
matrix_combine



#############################    *Data Frames*    ################################
#Data Frames are data displayed in a format as a table.
#Data Frames can have different types of data inside it. While the first column 
#can be character, the second and third can be numeric or logical.
#Use the data.frame() function to create a data frame
Data_frame<-data.frame(
  studenId= c(1:5),
  studentName= c('A', 'B','C', 'D', 'E'),
  cgpa=c(4,4,3.9,3.8,4)
)
Data_frame
summary(Data_frame)
Data_frame$studenId
Data_frame[['studenId']]
Data_frame[1]
addR<-c(6,'F','3.95')
Data_frame<-rbind(Data_frame, addR)
Data_frame<-Data_frame[-c(7),-c(4,5,6)]
Data_frame
class<-c('1y', '1y', '1y', '1y', '1y', '1y')
Data_frame<-cbind(Data_frame, class)
Data_frame


Data_Frame1 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame2 <- data.frame (
  Training = c("Stamina", "Stamina", "Strength"),
  Pulse = c(140, 150, 160),
  Duration = c(30, 30, 20)
)

New_Data_Frame <- rbind(Data_Frame1, Data_Frame2)
New_Data_Frame
