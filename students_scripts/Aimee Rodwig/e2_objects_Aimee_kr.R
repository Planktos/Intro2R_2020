#Exercise #2: objects

# 1) create an object that includes both numbers and character string
friend = c(1, 2, 3, "friend'")


# 2) create a vector object with 15 values. What happens when you set the length to 20?

values = 1:15
length(values) = 20
##When set to 20, the last 5 numbers show as NA because we did not define it in the original object


#3) create an object that includes a list and set recursive to 'TRUE'.
Regina = c(5, 6, 7, 8, list(2019, 2020, 2021), recursive=TRUE)

Regina = c(5, 6, 7, 8, list(2019, 2020, 2021), recursive=FALSE)

## 3a) What is the difference if you set recursive to 'FALSE'?
  ## it doesn't give me a different output, but I know my object is
  ## recursive because it has a list. If I give the command is.recursive
  ## for the object "Regina" it returns that it is true. If I set the
  ## recursive = FALSE, it still shows it is recursive. However, if I
  ## were to remove the list from my object, it would no longer be recursive.

#gentle correction (-0.25 points): 'R' has a hierarchy for its object types. Vector is the most basic, then 'list', and then 'data frame'
# A data frame is a more structured version of a 'list' object, and a 'list' object is a more structured version of a 'vector' object.
# When you set the argument 'recursive=T', then you are commanding that you want the data to be stored in the more basic object type, in this case, a vector.
# When you set the argument 'recursive=F', then you are commanding R to return an object as a 'list' as that is the highest object type used in your command.

#4) create a matrix object that has 3 columns and 5 rows. Name the rows and columns.

matrix_percussion = matrix(data = 1:15, nrow = 5, ncol = 3,
                           dimnames = list(c("Greg", "Craig", "Kraig", "Steven", "Stephen"),
                                           c("Catherine", "Katherine", "Kathryn")))

##4a) Extract the value in the 2nd row and 1st column.
matrix_percussion[[2]][1]
#nice work! ; +0.25 points

#5) create an array object that has 3 levels. Each level should have 6 rows and 4 columns. Name the rows and columns.
pets = array(data = 1:72, dim = c(6,4,3),
             dimnames = list(c("cats", "dogs", "fish", "horses", "goats", "birds"),
                             c("black", "white", "spotted", "green")))


##5a) Extract the value in the 3rd level, 4th row, and 2nd column.

pets[4,2,3]

##5b) If you wanted to extract all the values in the 1st level and 2nd column, what command would you use?
pets[,2,1]


#6) What are the differences between a matrix and an array?
  # an array is the an object where multiple matrices are "stacked"
  # on top of each other. A Matrix is 2-D and an array is 3-D

#7) run the following object and show me the code to what type and class of object it is.

m <- matrix(data=1:15, nrow = 5, ncol = 3,
            dimnames = list(c("r1","r2","r3","r4","r5"),
                            c("c1","c2","c3")))
class(m)
typeof(m)

#8) What symbols are you not allowed to use in object names? Why not?
  # "!, $, %, *, +, /" because they all have preset operations

#9) create a data frame object with 4 rows and 4 columns. Give the columns the names of your four favorite cartoon charatcters.
cartoon = data.frame(Fry= c(1:4),
                     Farnsworth = c(5:8),
                     Leela = c(9:12),
                     Bender = c(13:16))


##9a) Assign the data in the data frame's third column to a new object.
LeelaNew = cartoon[["Leela"]]

##9b) Assign the data in the data frames second row to a new object.
newrow = cartoon[2,]


#10) Explain the meme on this t-shirt.
browseURL(url = "https://www.teepublic.com/t-shirt/2305884-programmer-t-shirt-coding-joke")
  # the exclamation point symbol means "not", so the line that says "!False"
  # means "not false", which means true

#11) Assign the formula for a linear regression to a new object.
linreg = as.formula(y~m*x + b)
