# Exam #1: Intro to "R" Programming
# Sept 2020

# All questions are worth 1 point each unless otherwise specified.

# You have 36h to take the exam. The exam will be due Friday, Sept. 18 at 9pm.

#----------------------------------------------------------------------------------

# Creating objects & using proper 'R' syntax ----

#1) please provide the commands that will show the data type of the following objects:

x <- c(FALSE,TRUE,FALSE)
typeof(x)

#2) Demonstrate the two ways you can assign a sequence of 10 numbers to a vector object. The sequence should start at 5.
s <-c(5:14)
s2 <- seq(5,14)

#3) Find the number of values assigned to one of the vector objects created in Question 2.
length(s)

#4) Create 2 objects and assign each 5 values. (3 POINTS)
ob <- c(2,3,4,5,6)
ob1 <- c(0,9,8,7,1)
#a) Perform inner and outer multiplication on these two objects
ob %*% ob1  #inner multiplication
ob %o% ob1   #outer multiplication
#b) Find the mean and standard deviation of each object
mean(ob)
sd (ob, na.rm = F)
mean(ob1)
sd (ob1, na.rm = F)
#5)	Create four objects, each with a different data type: character, integer, double-numeric, and factor.
## The integer should have at least 3 values. The factor should have at least two levels.
c <- c("hello", "welcome", "bye") #character
i <- c(1L,2L,3L,4L,5L)   #integer
dn <- c(5,6,8,9)  #double numeric
gender <- factor(c("male", "female", "female","male"))

#6) Using indexing, extract the 1st and 7th values from a sequence your created in Question 2. (3 POINTS)
s[c(1,7)]
# a) Assign the 1st and 7th values a new object.
l <- s[c(1,7)]
z <-s[1]
y <-s[7]
# b) Apply the "less-than"; "greater-than"; "greater-than-equal to" operators.
z<y
z>y
z>=y
# c) Complete the following operations where:
# z = 1st value (see 6c);
# y = 7th value (see 6c);
# x = 5
x <- 5
# (z plus x) * (z + y))/2
((z+x) * (z+y))/2
# answer = 80
# 10 * (x - y)
10 * (x -y)
#answer = -60

# 7)	In comment, please tell me what is the “R” operator for ‘not’ (or negation)?
#!

# 8)	Using the two objects you created in Question 4, apply the following operators: %%, ^, %/%. (2 POINTS)
# In a comment, please explain what each operator is doing.
ob%%ob1  #remainder from division
ob^ob1 # ^ is the exponent
ob%/%ob1 #Integer division
# 9)	Create an object with a left-to-right assignment operator.
11 -> lr

# 10)	Create 3 objects that each have a number assigned to them.
## The code for all three objects must exists a single line in the script.
## Print the values of those three objects.
w <- 2;e <- 3;t <- 4
w;e;t
# 11) In a series of comments and code, describe and show examples of the special values Inf, -Inf, NaN, and NA.
#Inf
#Inf stands for positive infinity while -Inf stands for negative infinity. When R stores a large number or when you divide a number by zero
2/0
3.5^900
-3.5^900
-2/0
#Nan
#Nan stands for not a number and it means the result can't be represented in the computer therefore can't be calculated
0/0
sqrt(-8)
#NA
#means no result or the result is missing
b <-c(1:15)
length(b)<-20 #R assigns the rest of the values after 15 'NA' because they don't exist

# 12) Create a die with six sides and sample it with and without replacement.
## What is the difference between the two methods?
die <- c(1:6)
sample(die,3,T)
sample(die,3,)
#The difference between the two methods is that after sampling with a particular value it replaces the value after each draw for sampling with replacement unlike for sampling without replacement where the value isn't returned to be possibly drawn again.

# Creating data storage structures ------

# 13)	Create an array with 6 rows, 3 columns, and 2 sheets (or levels).
ray <- array(data = 1:36, dim=c(6,3,2), dimnames=list(c("thyme","curry","paprika","vanilla","cumin","cloves"),c("sweet","spicy","fragrant"),c("spices","flavoring")))

# 14)	Create a matrix with 10 rows and 4 columns.
max <- matrix(data = 1:40, nrow=10, ncol=4, dimnames=list(c("red", "yellow", "pink", "green","violet","orange","brown","black","grey","blue"),c("c1","c2","c3","c4")))

# 15)	In a comment, describe the difference between the two data structures.
#A matrix is a two dimensional object while an array is a three dimensional object

# 16) Using indexing, extract the 2nd, 6th, and 9th values from the 3rd column of the matrix your created in Question 14.
max[2,3]
max[6,3]
max[9,3]
# 17)	Create an object that extracts the second value from the second column in the second level (or sheet) in your array.
ar <- ray[2,2,2]

# 18) Create a data frame object with 5 rows and 3 columns. Give the columns the names of your three favorite foods.
df <- data.frame(rice=c(1,2,3,4,5),chicken=c(2,3,4,5,6), bread=c(0,9,8,7,6))

# 19) Assign the formula for a linear regression to a new object using the following values: slope = 2, y-intercept = 0.5
la <- as.formula(y~2*x + 0.5)

# Working with data  --------
# Use the data frame “test1_data.Rdata” into RStudio console for the following questions:
load("test1_data_2020/test1_data.Rdata")
# 20) Print the structure of the data frame. Insert a comment that describes the five different data types are present.
str(d)
#the five different data types present are - chr, int, factor, POSIXct, num
# 21) Show the the FIRST 6 rows of the data frame "d"?
head(d, n=6)

# 22)	Find the number of rows in the data set.
nrow(d)
#answer - 503441
# 23) Find the number of columns in the data set.
ncol(d)
#answer - 18
# 24)	Change the ‘tow’ field from a character to a factor data type.
d$tow
as.factor(d$tow)
  #correction -0.5 points
  #this is the correct function, but you need to overwrite d$tow to get the outcome to become permenant
  d$tow <- as.factor(d$tow)

# 25)	Change the ‘haul’ field from a numeric to an integer data type.
d$haul
as.integer(d$haul)
  #correction -0.5 points
  #this is the correct function, but you need to overwrite d$tow to get the outcome to become permenant
  d$haul <- as.integer(d$haul)

# 26)	Remove the “sw.density” column from the data frame.
d$sw.density <- NULL
# 27)	Print the data type of only the ‘transect.id’ column.
str(d$transect.id)

#Working with character strings -----
# Use the data frame “test1_data.Rdata” into RStudio console for the following questions:
library(stringr)

#30) Find the unique values of transect.id and assign those to a new object.
u <- unique(d$transect.id)

#31) Extract the last 10 unique, character strings from transect.id and assign those strings to a new object
length(u)
lt <- (u[32:41])
#32) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.
s <- d$transect.id
split <- str_split_fixed(string = s, pattern = "-", n = 4)
c <- split[,1]
w <- split[,2]
o <- split[,3]
v <- split[,4]

#33) Recombine the three components into a single text string.
##Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").
p <- str_replace(string = s, pattern = "-", replacement = "")
p2 <- gsub(pattern = "-", x = s, replacement = "")

yy <- str_c(v,c,w,o, sep = "_")

#34) Using the first 5 unique transect.id values from transect.id, replace the dash ("-") with a underscore ('_')
ff <-(u[1:5])
ff1 <- ff
w2 <- gsub(pattern = "-", x = ff1, replacement = "_")

#35) Using the first 5 unique transect.id values, extract the first 5 characters (reading left to right) from the string
## and assign those values to a new object
fc <-str_sub(string = ff, start = 1, end = 5)

#Importing data stored in different file types (e.g. .csv, .txt. , .xlsx) into 'R' ----

#36) Import the following files into 'R' and assign each data set its own unique object.
#These data sets were shared with you in an accompanying zip file.

#"aurelia_15minCell_statareas.Rdata"       "aurelia_15minCell_statareas.txt"         "Aurelia_SEAMAP_2012-2018_30minCell.xlsx"
#"ENVREC.csv"                              "OST14_1E_d5_frames.csv"

#read R files
load("test1_data_2020/aurelia_15minCell_statareas.Rdata")

#read txt files
mi <- read.table(file = "test1_data_2020/aurelia_15minCell_statareas.txt", sep = ",", header = T, stringsAsFactors = F)

#read excel
install.packages("readxl")
library(readxl)
ni <- read_xlsx(path = "test1_data_2020/Aurelia_SEAMAP_2012-2018_30minCell.xlsx")

#read csv
ma <- read.csv(file = "test1_data_2020/ENVREC.csv", header=T,stringsAsFactors = FALSE)
mo <- read.csv(files ="test1_data_2020/OST14_1E_d5_frames.csv", header =T, stringsAsFactors = F)

  #correction: -0.25 point
  # the above code returns an error, please see below for the working commmand; note the change in the 'file' argument
  mo <- read.csv(file ="test1_data_2020/OST14_1E_d5_frames.csv", header =T, stringsAsFactors = F)

#Dates----
#37) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., East Coast) time zone.
t <- "9/17/2020 12:05:32"
t <- "2020-09-17 12:05:32"
tod <- as.POSIXct(strptime(x = t, format = "%Y-%m-%d %H:%M:%OS", tz = "America/New_York"))

