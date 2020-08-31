#Exercise #2: objects

# 1) create an object that includes both numbers and character string

obj= c("one",1,"two",2)

# 2) create a vector object with 15 values. What happens when you set the length to 20?

vct_obj= c(1:15)
length(vct_obj)=20
#it fills the extra unnamed spaces with NAs

#3) create an object that includes a list and set recursive to 'TRUE'.

list=c(list(3,6,9,12,15),recursive=TRUE)

## 3a) What is the difference if you set recursive to 'FALSE'?

list=c(list(3,6,9,12,15),recursive=FALSE)
#creates a list structure (vertical row)

#4) create a matrix object that has 3 columns and 5 rows. Name the rows and columns.

mtx= matrix(data=1:15, nrow=5, ncol=3)
            colnames(mtx)=c("a","b","c")
            rownames(mtx)=c("a","b","c","d","e")


##4a) Extract the value in the 2nd row and 1st column.

mtx[1,2]
#correction -0.5 points
mtx[2,1]

#5) create an array object that has 3 levels. Each level should have 6 rows and 4 columns. Name the rows and columns.

ray= array(data=1:72, dim=c(4,6,3))
dimnames(ray)=list(1:4,1:6)

#correction -0.5 points
ray= array(data=1:72, dim=c(6,4,3))
dimnames(ray)=list(1:6,1:4)

##5a) Extract the value in the 3rd level, 4th row, and 2nd column.

ray[4,2,3]

##5b) If you wanted to extract all the values in the 1st level and 2nd column, what command would you use?

ray[,2,1]

#6) What are the differences between a matrix and an array?

#a matrix is two dimensional while an array can have more dimensions than two

#7) run the following object and show me the code to what type and class of object it is.

m <- matrix(data=1:15, nrow = 5, ncol = 3,
            dimnames = list(c("r1","r2","r3","r4","r5"),
                            c("c1","c2","c3")))

typeof(m)
# correction
## for class of, try using ; -0.5 points
class(m)

#8) What symbols are you not allowed to use in object names? Why not?

#You can't use a symbol that already has a function in R as a name to avoid confusion

#correction: looking for "%, ^, *, $, !, ?, /" ; -1 point

#9) create a data frame object with 4 rows and 4 columns. Give the columns the names of your four favorite cartoon charatcters.

df=data.frame(a=c(1,2,3,4),b=c(1,2,3,4),c=c(1,2,3,4),d=c(1,2,3,4))
colnames(df)=c("pooh","eeyore","goku","vegeta")

##9a) Assign the data in the data frame's third column to a new object.

object=df[,3]

##9b) Assign the data in the data frames second row to a new object.

object2=df[2,]

#10) Explain the meme on this t-shirt.
browseURL(url = "https://www.teepublic.com/t-shirt/2305884-programmer-t-shirt-coding-joke")

#the ! means "not" so !FALSE means not false or true

#11) Assign the formula for a linear regression to a new object.

formula= as.formula(y~a+b*x)
