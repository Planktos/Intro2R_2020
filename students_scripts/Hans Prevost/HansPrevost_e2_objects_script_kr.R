#Exercise #2: objects

# 1) create an object that includes both numbers and character string
a = c(1, 2, 3, "dog", "fish")
typeof("dog")

# 2) create a vector object with 15 values. What happens when you set the length to 20?

  b = c(1:15)
  #correction: -0.5 points
  b <- length(20)
  ## the last 5 values are NA values

  b = c(1:20)
  #it makes the vector have 20 values instead of 15, because its value was reassigned.


#3) create an object that includes a list and set recursive to 'TRUE'.
c = c(4, 5, list(0.1, 0.2, 0.3), recursive = TRUE)
c
typeof(c)

c = c(4, 5, list(0.1, 0.2, 0.3), recursive = F)
## 3a) What is the difference if you set recursive to 'FALSE'?
#setting the recursive to FALSE keeps the elements of "c" as factors,

#while if it was TRUE, it would turn all elements of "c" into a vector including the values in the list().

##correction: when recursive is TRUE, then the values in 'c' are numbers in a vector object; no factors
##when recursive=FALSE< then the values are in a list; -1 point


#4) create a matrix object that has 3 columns and 5 rows. Name the rows and columns.
d = matrix(data=1:15, nrow=5, ncol=3, dimnames = list(c("I", "am", "making", "a", "matrix"), c("who", "am", "I")))
d
##4a) Extract the value in the 2nd row and 1st column.
d[2, 1]


#5) create an array object that has 3 levels. Each level should have 6 rows and 4 columns. Name the rows and columns.
magnolia = array(data = 1:72, dim = c(6, 4, 3), dimnames = list(c("r1", "r2", "r3", "r4", "r5", "r6"), c("c1", "c2", "c3", "c4")))
magnolia
##5a) Extract the value in the 3rd level, 4th row, and 2nd column.
magnolia[4, 2, 3]
##5b) If you wanted to extract all the values in the 1st level and 2nd column, what command would you use?
magnolia[,2,1]

#6) What are the differences between a matrix and an array?
#a matrix is only 2 dimensional, while an array can handle multi-dimensional data

#7) run the following object and show me the code to what type and class of object it is.

m <- matrix(data=1:15, nrow = 5, ncol = 3,
            dimnames = list(c("r1","r2","r3","r4","r5"),
                            c("c1","c2","c3")))
class(m)
typeof(m)

#8) What symbols are you not allowed to use in object names? Why not?
#!, ^, +, *, ?, /, @, -. They are used for other operations, like basic math

#9) create a data frame object with 4 rows and 4 columns. Give the columns the names of your four favorite cartoon charatcters.
ocean = data.frame(the.hoopla.fish.from.spongebob.who.gets.hit.by.a.brick =
                     c(1, 2, 3, 4), squidward = c(5, 6, 7, 8), louise = c(9, 10, 11, 12), danny = c(13, 14, 15, 16))
ocean
##9a) Assign the data in the data frame's third column to a new object.
fire = ocean[,3]
fire
##9b) Assign the data in the data frames second row to a new object.
ice = ocean[2,]
ice
#10) Explain the meme on this t-shirt.
browseURL(url = "https://www.teepublic.com/t-shirt/2305884-programmer-t-shirt-coding-joke")
# the "!" means negation so {!false} means not false, which means true.

#11) Assign the formula for a linear regression to a new object.
form = as.formula(y~mx+b)
