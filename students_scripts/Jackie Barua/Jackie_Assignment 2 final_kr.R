#Exercise #2: objects

# 1) create an object that includes both numbers and character string

Jack<- character(5)
Jack
Jack<-c(1,2,3,4,5,"I love Neuroscience")


# 2) create a vector object with 15 values. What happens when you set the length to 20?

V<-c(1:15)
V
length(V)
#correction; set the length to 30; -0.5 points
length(V) <- 20 #there are 5 NA values at the end of the sequence because only 15 values exist in the object


#3) create an object that includes a list and set recursive to 'TRUE'.
JL<-list("a" = 6.5, "b" = TRUE, "c" = 5:8)
JL
## this is a techically correct answer :)

## 3a) What is the difference if you set recursive to 'FALSE'?
JF<-list("a" = 6.5, "b" = FALSE, "c" = 5:8)
JF
#it will not rescue the previous one

##correction: I was looking for something along these lines:
x= c(5, 6, 7, 8, list(2017, 2023, 2024), recursive=TRUE)
x= c(5, 6, 7, 8, list(2017, 2023, 2024), recursive=FALSE)

#'R' has a hierarchy for its object types. Vector is the most basic type, followed by 'list', and
#'then 'data frame'. A data frame is a more structured version of a 'list' object, and a 'list' object
#'is a more structured version of a 'vector' object. When you set the argument 'recursive=T' in the above
#'line of code, then you are asking 'R' to store the data in the more basic object type. In this case,
#'a vector object. When you set the argument 'recursive=F', then you are commanding 'R' to return an object
#'as a 'list' as that is the highest object type used in your command.


#4) create a matrix object that has 3 columns and 5 rows. Name the rows and columns.

m<-matrix(5:15, nrow = 5, ncol = 3)
m
colnames(m)<-c ("C1","C2","C3")
rownames(m)<-c("R1", "R2","R3","R4","R5")
m

##4a) Extract the value in the 2nd row and 1st column.

m[2,] #close! Here you are extracting all values in the 2nd row

#correction: -0.25 points
m[2,1] #this extracts all values in the 2nd row and 1st column


#5) create an array object that has 3 levels. Each level should have 6 rows and 4 columns. Name the rows and columns.

array(data = 1:36, dim=c(6,4,3),dimnames=list(c("doll","car","aeroplane","truck", "helicopter", "lorry"),c("banana","mango","cabbage","brinjal"),c("hot","cold","warm")))
a<-array(data = 1:36, dim=c(6,4,3),dimnames=list(c("doll","car","aeroplane","truck", "helicopter", "lorry"),c("banana","mango","cabbage","brinjal"),c("hot","cold","warm")))
a

##5a) Extract the value in the 3rd level, 4th row, and 2nd column.
a[4,2,3]
##5b) If you wanted to extract all the values in the 1st level and 2nd column, what command would you use?
a[,2,1]

#6) What are the differences between a matrix and an array?
#matrix is two dimensional vector while array is one or multiple dimensional vector

#7) run the following object and show me the code to what type and class of object it is.

m <- matrix(data=1:15, nrow = 5, ncol = 3,
            dimnames = list(c("r1","r2","r3","r4","r5"),
                            c("c1","c2","c3")))
typeof(m)
class(m)

#8) What symbols are you not allowed to use in object names? Why not?

#symbols not allowed in R for object names / , !, ^, @, %, ^, *
#these symbols are embedded in R already.

#9) create a data frame object with 4 rows and 4 columns. Give the columns the names of your four favorite cartoon charatcters.
data.frame(tomjerry=c(1,2,3,4),poppye=c(5,6,7,8),doremon=c(9,10,11,12),kungfupanda=c(12,14,15,16))
cartoon<-data.frame(tomjerry=c(1,2,3,4),poppye=c(5,6,7,8),doremon=c(9,10,11,12),kungfupanda=c(12,14,15,16))
cartoon


##9a) Assign the data in the data frame's third column to a new object.
cartoon[,3]
newdata<-cartoon[,3]
newdata

##9b) Assign the data in the data frames second row to a new object.
newdata=cartoon[2,]
newdata2<-newdata
newdata2

#10) Explain the meme on this t-shirt.
browseURL(url = "https://www.teepublic.com/t-shirt/2305884-programmer-t-shirt-coding-joke")
#true. explanation=! means not, so the second bracket with !false means true.
#11) Assign the formula for a linear regression to a new object.

la<-as.formula(y=m*x+c)
la<-as.formula(y~mx+c)
la<-as.formula(y~m*x+c)