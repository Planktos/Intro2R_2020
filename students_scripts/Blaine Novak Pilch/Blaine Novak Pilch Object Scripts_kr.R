#Exercise #2: objects

##Note consider not using a mixture of upper-case and lower-case characters. It can make it more difficult when identifying objects later on

# 1) create an object that includes both numbers and character string

O = c(1, 2, "c", "d", 5)

# 2) create a vector object with 15 values. What happens when you set the length to 20?

VO = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
length(VO)=20
VO
#The last 5 values in the object will be NA.

#3) create an object that includes a list and set recursive to 'TRUE'.

LO = list(1:10, recursive=TRUE)

## 3a) What is the difference if you set recursive to 'FALSE'?

LO2= list(1:10, recursive=FALSE)

##correction: please provide an explanation -0.5 points

#4) create a matrix object that has 3 columns and 5 rows. Name the rows and columns.

MO = matrix(data = 1:15, nrow = 5, ncol = 3)

rownames(MO)= c("Jerry", "Allen", "Dwayne", "Garry", "Bono")
colnames(MO) = c("Becky", "Gretchen", "Dorothy")
MO

##4a) Extract the value in the 2nd row and 1st column.

MO[2,1]

#5) create an array object that has 3 levels. Each level should have 6 rows and 4 columns. Name the rows and columns.

AO = array(data = 1:72, dim=c(6,4,3))

##5a) Extract the value in the 3rd level, 4th row, and 2nd column.

AO[4,2,3]

##5b) If you wanted to extract all the values in the 1st level and 2nd column, what command would you use?

AO[,2,1]

#6) What are the differences between a matrix and an array?

#An array is 3 dimensional while a matrix is 2 dimensional.

#7) run the following object and show me the code to what type and class of object it is.

m <- matrix(data=1:15, nrow = 5, ncol = 3,
            dimnames = list(c("r1","r2","r3","r4","r5"),
                            c("c1","c2","c3")))
class(m)

#8) What symbols are you not allowed to use in object names? Why not?

#You shouldn't use !, "", #, $, %, [], (), {}, =, +, -, >, <, ^, *, /, and ?. These symbols all have functions and by using them in an object name R will believe they are a part of a command in the middle of the object name.

#Example:

Jon>Doe=1
#R states that object "Jon" not found, this because though we are trying to make object "Jon>Doe=1" R is looking for two objects "Jon" and "Doe". The same is true for the other symbols.

#9) create a data frame object with 4 rows and 4 columns. Give the columns the names of your four favorite cartoon charatcters.

df1 = data.frame("Jerry" = c(1,2,3,4), "Bob" = c(5,6,7,8), "Louise" = c(9,10,11,12), "Scooby-doo" = c(13,14,15,16))

##9a) Assign the data in the data frame's third column to a new object.

NO1=df1[,3]

##9b) Assign the data in the data frames second row to a new object.

NO2=df1[2,]

#10) Explain the meme on this t-shirt.
browseURL(url = "https://www.teepublic.com/t-shirt/2305884-programmer-t-shirt-coding-joke")

#By placing the "!" infront of the "False" portion of the meme, the code acutally means not false, or true. This joke is further followed up with "It's funny because it's true" which is literal.

#11) Assign the formula for a linear regression to a new object.

LR=as.formula(y~m*x+b)

