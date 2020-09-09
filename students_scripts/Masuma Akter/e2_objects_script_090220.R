#Exercise #2: objects

# 1) create an object that includes both numbers and character string

A<-c(9,3,5,2,4,8, "hello class")

# 2) create a vector object with 15 values. What happens when you set the length to 20?

B<-c(2,4, 1, 5, 6,8,10,3,7,9,22,33,44,55,66)
length(B)
length(B)<-20
print(B)
#the vector object will creat the space but will not assign value (e.g. 2  4  1  5  6  8 10  3  7  9 22 33 44 55 66 NA NA NA NA NA)

#3) create an object that includes a list and set recursive to 'TRUE'.
C<-c(3.5, 2, 5.7, 9.0, 3.8, list(0.30, 0.50, 0.35), recursive =TRUE)



## 3a) What is the difference if you set recursive to 'FALSE'?

C<-c(3.5, 2, 5.7, 9.0, 3.8, list(0.30, 0.50, 0.35), recursive =FALSE)

#4) create a matrix object that has 3 columns and 5 rows. Name the rows and columns.

M<-matrix (1:15, nrow=5, ncol=3,
dimnames= list (c("r1", "r2","r3","r4","r5"),
                          c("c1", "c2","c3")))
##4a) Extract the value in the 2nd row and 1st column.

M[2,1]

#5) create an array object that has 3 levels. Each level should have 6 rows and 4 columns. Name the rows and columns.
L<-array(data=1:72,dim = c(6,4,3))
##5a) Extract the value in the 3rd level, 4th row, and 2nd column.
L[4,2,3]

##5b) If you wanted to extract all the values in the 1st level and 2nd column, what command would you use?

L[,3,2]
#6) What are the differences between a matrix and an array?
#A matrix is a two-dimensional vector while An array is a vector with one or more dimensions. 


#7) run the following object and show me the code to what type and class of object it is.

m <- matrix(data=1:15, nrow = 5, ncol = 3,
            dimnames = list(c("r1","r2","r3","r4","r5"),
                            c("c1","c2","c3")))
typeof(m)
class(m)

#8) What symbols are you not allowed to use in object names? Why not?
#Numbers; its causes mixing up with object or data frame value


#9) create a data frame object with 4 rows and 4 columns. Give the columns the names of your four favorite cartoon charatcters.
S<-data.frame(micky=c("r1","r2","r3","r4"), tom=c("r1","r2","r3","r4"),jerry= c("r1","r2","r3","r4"),shark= c("r1","r2","r3","r4"))
##9a) Assign the data in the data frame's third column to a new object.
S['jerry']<-c(1:4)
##9b) Assign the data in the data frames second row to a new object.
S[2,]<-c(5:8)
#10) Explain the meme on this t-shirt.
browseURL(url = "https://www.teepublic.com/t-shirt/2305884-programmer-t-shirt-coding-joke")
{!FALSE}
#!= not
#11) Assign the formula for a linear regression to a new object.
sample.formula <- as.formula(y~m*x + b)