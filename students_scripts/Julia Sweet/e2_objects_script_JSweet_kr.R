#Exercise #2: objects
#Julia Sweet
#9/3/2020

# 1) create an object that includes both numbers and character string----
obj1 <- c(1,2,3,4,5,6,7, "Jan", "Feb", "Mar", "Apr", "May", "June", "July")


# 2) create a vector object with 15 values. What happens when you set the length to 20?----
a <-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
length(a) <-20
a

#Once you have set the length to 20, a now contains 5 "NA" terms at the end of it
#[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 NA NA NA NA NA


#3) create an object that includes a list and set recursive to 'TRUE'.----
d<- c(1,3,5,7,9,11, list (0.25,0.5,.75), recursive=TRUE) #recursive means "go deeper" or "go basic" or look within" so this combines the list to make one vector
d


## 3a) What is the difference if you set recursive to 'FALSE'?
e<- c(1,3,5,7,9,11, list (0.25,0.5,.75), recursive=FALSE) #made everything into a list
e


#4) create a matrix object that has 3 columns and 5 rows. Name the rows and columns.----
m<-matrix(data = 1:15, nrow=5, ncol=3,
          dimnames=list(c("r1","r2", "r3", "r4", "r5"), c("c1", "c2", "c3")))
m


##4a) Extract the value in the 2nd row and 1st column.
m[2,1]


#5) create an array object that has 3 levels. Each level should have 6 rows and 4 columns. Name the rows and columns.----
ray <- array(data = 1:24, dim=c(6,4,3))
ray


##5a) Extract the value in the 3rd level, 4th row, and 2nd column.
ray[4,2,3]


##5b) If you wanted to extract all the values in the 1st level and 2nd column, what command would you use?
ray[,2,1]


#6) What are the differences between a matrix and an array?----
# A matrix is an extension of a vector, it has only 2 dimensions, and can only have data of a single type.
# An array can have multiple dimensions, and can communicate something like NASA satellite data, with a lat, long, then multiple values (SST, Chla etc)


#7) run the following object and show me the code to what type and class of object it is.----
m2 <- matrix(data=1:15, nrow = 5, ncol = 3,
            dimnames = list(c("r1","r2","r3","r4","r5"),
                            c("c1","c2","c3")))

typeof(m2)
str(m2)
class(m2)


#8) What symbols are you not allowed to use in object names? Why not?----

# Don't use names of functions or verbs in R as object names
  # ! is R's way of saying "not"
  # Is 5 equal to 5, 5==5 returns TRUE
  # Is 5 not equal to 6, 5!=6 returns TRUE
  # "^" is a mathmatical operator
  # "+, /, -, *" are also mathmatical errors
  # "$" Is the way of saying "from"
  # "@" because this is used in e-mail addresses,you can pull things from the internet in R


#9) create a data frame object with 4 rows and 4 columns. Give the columns the names of your four favorite cartoon charatcters.----
df<-data.frame(Dori=c(1,2,3,4), Nemo=c(10,20,30,40), Flounder=c(100,200,300,400), Moana=c(1000,2000,3000,4000))
df


##9a) Assign the data in the data frame's third column to a new object.
flat_fish<-df$Flounder


##9b) Assign the data in the data frames second row to a new object.
clown_fish<-df$Nemo


#10) Explain the meme on this t-shirt.----
browseURL(url = "https://www.teepublic.com/t-shirt/2305884-programmer-t-shirt-coding-joke")
# The ! means "not" so the code "!FLASE" means "Not False" which is the same as saying true :-D


#11) Assign the formula for a linear regression to a new object.----
lin.reg.formula <- as.formula(y~m*x + b)
