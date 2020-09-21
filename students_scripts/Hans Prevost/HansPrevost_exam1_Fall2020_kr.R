# Exam #1: Intro to "R" Programming
# Sept 2020

# All questions are worth 1 point each unless otherwise specified.

# You have 36h to take the exam. The exam will be due Friday, Sept. 18 at 9pm.

#----------------------------------------------------------------------------------

# Creating objects & using proper 'R' syntax ----

#1) please provide the commands that will show the data type of the following objects:

    x <- c(FALSE,TRUE,FALSE)
typeof(x)
class(x)
str(x)

#2) Demonstrate the two ways you can assign a sequence of 10 numbers to a vector object. The sequence should start at 5.
a <- c(5:14)
b <- seq(from = 5, to = 14, by = 1)


#3) Find the number of values assigned to one of the vector objects created in Question 2.
length(a)

#4) Create 2 objects and assign each 5 values. (3 POINTS)
c <- c(2, 4, 6, 8, 10)
d <- c(12, 14, 16, 18, 20)

  #a) Perform inner and outer multiplication on these two objects
c %*% d
c %o% d

  #b) Find the mean and standard deviation of each object
mean(c)
mean(d)
sd(c)
sd(d)

#5)	Create four objects, each with a different data type: character, integer, double-numeric, and factor.
    ## The integer should have at least 3 values. The factor should have at least two levels.
e <- "coffee"
f <- c(5L, 6L, 7L)
g <- 7.5
h <- factor(c("paint", "canvas"))

#6) Using indexing, extract the 1st and 7th values from a sequence your created in Question 2. (3 POINTS)
a[1]
a[7]
a[c(1,7)]

  # a) Assign the 1st and 7th values a new object.
i <- a[c(1,7)]

  # b) Apply the "less-than"; "greater-than"; "greater-than-equal to" operators.
i < a
a > i
a >= i

  # c) Complete the following operations where:

    # z = 1st value (see 6c);
z = a[1]
    # y = 7th value (see 6c);
y = a[7]
    # x = 5
x = 5
      # (z plus x) * (z + y))/2
((z+x)*(z+y))/2
      # 10 * (x - y)
10*(x-y)

# 7)	In comment, please tell me what is the “R” operator for ‘not’ (or negation)?
#!

# 8)	Using the two objects you created in Question 4, apply the following operators: %%, ^, %/%. (2 POINTS)
c %% d
c^d
c %/% d
    # In a comment, please explain what each operator is doing.
#%% gives the remainder from division, ^ is means to raise to a power, and %/% is interger division, which is when the numbers are divided and the remainder is discarded

# 9)	Create an object with a left-to-right assignment operator.
j <- 10
k <- 11
l <- 12
l -> k -> j

# 10)	Create 3 objects that each have a number assigned to them.
    ## The code for all three objects must exists a single line in the script.
    ## Print the values of those three objects.
m=1; n=2; o=3; m; n; o

# 11) In a series of comments and code, describe and show examples of the special values Inf, -Inf, NaN, and NA.
#Inf means infinity and this is printed when the number is too large to display or a result by division of zero
1/0
#-Inf means negative infinity and this is printed when the value is too large to display and is negative or a result by the division of a negative number by zero
-1/0
#NaN means 'not a number' and is usually displayed when the value is undefined
0/0
#NA means 'not available' and this is displayed when there is a missing value
a[16]; #vector 'a' only has 15 values and when you try to extract a value that is not there, you get NA

# 12) Create a die with six sides and sample it with and without replacement.
    ## What is the difference between the two methods?
die <- c(1:6)
sample(die, 2, replace=TRUE)
sample(die, 2, replace = FALSE)
#when you say replace=TRUE the value that was sampled the first is placed back into the sample pool
#and can be sampled again. when replace=FALSE, the value that was sampled the first time is placed
#back into the sample pool and cannot be picked again

# Creating data storage structures ------

# 13)	Create an array with 6 rows, 3 columns, and 2 sheets (or levels).
ray <- array(1:36, dim =c(6, 3, 2))

# 14)	Create a matrix with 10 rows and 4 columns.
mat <- matrix(1:40, nrow=10, ncol=4)

# 15)	In a comment, describe the difference between the two data structures.
#an array can be used for multi dimensional data, a matrix is only 2 dimensional

# 16) Using indexing, extract the 2nd, 6th, and 9th values from the 3rd column of the matrix your created in Question 14.
mat[2,3]; mat[6,3]; mat[9,3]

# 17)	Create an object that extracts the second value from the second column in the second level (or sheet) in your array.
obvi <- ray[2, 2, 2]

# 18) Create a data frame object with 5 rows and 3 columns. Give the columns the names of your three favorite foods.
plankton = data.frame(gumbo = c(1, 2, 3, 4, 5), boudin.ball = c(6, 7, 8, 9, 10), crawfish = c(11:15))
plankton
# 19) Assign the formula for a linear regression to a new object using the following values: slope = 2, y-intercept = 0.5
linear = as.formula(y~2*x+0.5)

# Working with data  --------
  # Use the data frame “test1_data.Rdata” into RStudio console for the following questions:
data <- load("test1_data.Rdata")

  #note that you when you load a 'R' data set, the object it was saved as will automatically load with it. See that the object 'd'
  # appears in your Environment pane when you load the test1_data.Rdata file but NOT the 'data' object you are trying to assign it to.
  # if you want to reassign the data set to a new object then you need to do this:
  load("test1_data.Rdata")
  data <- d

# 20) Print the structure of the data frame. Insert a comment that describes the five different data types that are present.
print(d)
str(d)
#the five data types present are: character, integer, factor, POSIXct, and numeric

# 21) Show the the FIRST 6 rows of the data frame "d"?
head(d[1:6])
  #redundant, only code needed is:
  head(d)

# 22)	Find the number of rows in the data set.
nrow(d)

# 23) Find the number of columns in the data set.
ncol(d)

# 24)	Change the ‘tow’ field from a character to a factor data type.
d.tow <- transform(d, tow = as.factor(tow))
str(d.tow)

# 25)	Change the ‘haul’ field from a numeric to an integer data type.
d.haul <- transform(d, haul = as.integer(haul))
str(d.haul)

# 26)	Remove the “sw.density” column from the data frame.
d$sw.density=NULL
str(d)

# 27)	Print the data type of only the ‘transect.id’ column.
typeof(d$transect.id)

#Working with character strings -----
# Use the data frame “test1_data.Rdata” into RStudio console for the following questions:
library(stringr)

#30) Find the unique values of transect.id and assign those to a new object.
mags <- unique(d[,2])
mags

#31) Extract the last 10 unique, character strings from transect.id and assign those strings to a new object
tail(mags, n=10) -> magstail
magstail

#32) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.
id <- d[,2]
id
yas <- str_split_fixed(string = id, pattern = "-", n = 4)
yas
yas1 = yas[,1]
yas2 = yas[,2]
yas3 = yas[,3]
yas4 = yas[,4]
#33) Recombine the three components into a single text string.
##Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").
paste(yas4, yas3, yas2, yas1, sep = "_")
#i did not see any "D, M, S" values, but if there were DMS values, the code provided would put them first in the test string


#34) Using the first 5 unique transect.id values from transect.id, replace the dash ("-") with a underscore ('_')
dude <- head(mags, n = 5)
dude = gsub(x = dude, pattern="-", replacement="_")
dude
#35) Using the first 5 unique transect.id values, extract the first 5 characters (reading left to right) from the string
    ## and assign those values to a new object
str_sub(dude, 1, 5) -> dude2

#Importing data stored in different file types (e.g. .csv, .txt. , .xlsx) into 'R' ----

#36) Import the following files into 'R' and assign each data set its own unique object.
  #These data sets were shared with you in an accompanying zip file.

  #"aurelia_15minCell_statareas.Rdata"       "aurelia_15minCell_statareas.txt"         "Aurelia_SEAMAP_2012-2018_30minCell.xlsx"
  #"ENVREC.csv"                              "OST14_1E_d5_frames.csv"
load("aurelia_15minCell_statareas.Rdata")

env<- read.csv(file="ENVREC.csv")


ost <- read.csv(file="OST14_1E_d5_frames.csv")
  # correction: -0.25 points
    # You need to add the argument skip to skip the first 2 lines
    ost <- read.csv(file="OST14_1E_d5_frames.csv", skip = 2)


aur2 <- read_xlsx(path = "/Users/Prevost/Desktop/Intro to R/test1_data_2020/Aurelia_SEAMAP_2012-2018_30minCell.xlsx")

aurelia <- read.table(file = "aurelia_15minCell_statareas.txt")
head(aurelia)
  #correction: -0.75 points
  #You have not provided R with enough informaton about the delimiter for this file and if it has headers.
  aurelia <- read.table(file = "aurelia_15minCell_statareas.txt", header = T, sep = ",")
  head(aurelia)


#Dates----
#37) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., East Coast) time zone.
t <- "2020-09-17 12:05:32"
timeWest <- as.POSIXct(strptime(x=t, format="%Y-%m-%d %H:%M:%OS",
                             tz = "America/Los_Angeles"))
timeWest

