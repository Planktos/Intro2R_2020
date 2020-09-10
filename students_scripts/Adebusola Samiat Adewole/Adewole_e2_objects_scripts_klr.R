#Exercise #2: objects

# 1) create an object that includes both numbers and character string
k <- c(1,2,4,"welcome","hello")


# 2) create a vector object with 15 values. What happens when you set the length to 20?
b <-c(1:15)
length(b)<-20 #R assigns the rest of the values after 15 'NA' because they don't exist


#3) create an object that includes a list and set recursive to 'TRUE'.
d <- c(9,3,5,7,4,8, list(0.25,0.33,0.67), recursive=TRUE)

## 3a) What is the difference if you set recursive to 'FALSE'?
s <- c(9,3,5,7,4,8, list(0.25,0.33,0.67), recursive=FALSE)
# it means he function will not recurse beyond the first level items

#correction: -0.5 points
#'R' has a hierarchy for its object types. Vector is the most basic type, followed by 'list',
#and then 'data frame'. A data frame is a more structured version of a 'list' object, and a 'list' object is a
#more structured version of a 'vector' object. When you set the argument 'recursive=T' in the above line of code,
#then you are asking 'R' to store the data in the more basic object type. In this case, a vector object.
#When you set the argument 'recursive=F', then you are commanding 'R' to return an object as a 'list' as that
#is the highest object type used in your command.


#4) create a matrix object that has 3 columns and 5 rows. Name the rows and columns.
e <- matrix(data=1:15,nrow=5,ncol=3, dimnames = list(c("red","yellow","pink","indigo","violet"),c("c1","c2","c3")))

##4a) Extract the value in the 2nd row and 1st column.
e[2,] # this will extract all the values in the 2nd row
#correction -0.5 points
e[2,1]

#5) create an array object that has 3 levels. Each level should have 6 rows and 4 columns. Name the rows and columns.

ray <- array(data = 1:72, dim=c(6,4,3),dimnames=list(c("thyme","curry","paprika","vanilla","cumin","cloves"),c("sweet","spicy","fragrant","savory"),c("spices","herbs","flavoring")))

##5a) Extract the value in the 3rd level, 4th row, and 2nd column.
ray[4,2,3]

##5b) If you wanted to extract all the values in the 1st level and 2nd column, what command would you use?
ray[,2,1]

#6) What are the differences between a matrix and an array?
#A matrix is a two dimensional object while an array is a three dimensional object


#7) run the following object and show me the code to what type and class of object it is.

m <- matrix(data=1:15, nrow = 5, ncol = 3,
            dimnames = list(c("r1","r2","r3","r4","r5"),
                            c("c1","c2","c3")))
typeof(m)
class(m)

#8) What symbols are you not allowed to use in object names? Why not?
#!, %, ^, *, ^, $, @, / beacuse these special symbols already have funtions in R

#9) create a data frame object with 4 rows and 4 columns. Give the columns the names of your four favorite cartoon charatcters.
fc <- data.frame(ben=c(5,6,7,8),didi=c(3,9,0,1),wayne=c(55,33,21,34),dexter=c(11,12,13,14))
##9a) Assign the data in the data frame's third column to a new object.
peace=fc[,3]

##9b) Assign the data in the data frames second row to a new object.
winner=fc[2,]

#10) Explain the meme on this t-shirt.
browseURL(url = "https://www.teepublic.com/t-shirt/2305884-programmer-t-shirt-coding-joke")
# ! meant NOT so the !false on the tshirt means true
#11) Assign the formula for a linear regression to a new object.
la <- as.formula(y~m*x + b)

