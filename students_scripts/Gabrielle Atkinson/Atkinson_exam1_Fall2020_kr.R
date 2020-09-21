# Exam #1: Intro to "R" Programming
# Sept 2020

# All questions are worth 1 point each unless otherwise specified.

# You have 36h to take the exam. The exam will be due Friday, Sept. 18 at 9pm.

#----------------------------------------------------------------------------------

# Creating objects & using proper 'R' syntax ----

#1) please provide the commands that will show the data type of the following objects:

    x <- c(FALSE,TRUE,FALSE)
    class(x)
    str(x)
    typeof(x)

#2) Demonstrate the two ways you can assign a sequence of 10 numbers to a vector object. The sequence should start at 5.

    seq= c(5:14)
    seq2= c(5,6,7,8,9,10,11,12,13,14)

#3) Find the number of values assigned to one of the vector objects created in Question 2.

  length(seq)

#4) Create 2 objects and assign each 5 values. (3 POINTS)
  obj1= c(1:5)
  obj2= c(6:10)

  #a) Perform inner and outer multiplication on these two objects

  inner= obj1%*%obj2
  outer= obj1%o%obj2

  #b) Find the mean and standard deviation of each object
 mean(obj1)
 mean(obj2)
 sd(obj1)
 sd(obj2)

#5)	Create four objects, each with a different data type: character, integer, double-numeric, and factor.
    ## The integer should have at least 3 values. The factor should have at least two levels.

 c= c("cat","dog","bird")
 i= (1:3)
 d= c(1.5,2.5,3.0)
 f= factor(c("bus","train","plane"))

#6) Using indexing, extract the 1st and 7th values from a sequence your created in Question 2. (3 POINTS)

  # a) Assign the 1st and 7th values a new object.

 new.seq= seq[c(1,7)]

  # b) Apply the "less-than"; "greater-than"; "greater-than-equal to" operators.

 new.seq < seq
 new.seq > seq
 new.seq >= seq

  # c) Complete the following operations where:

    # z = 1st value (see 6c);
    # y = 7th value (see 6c);
    # x = 5

 z= seq[1]
 y= seq[7]
 x= 5
      # (z plus x) * (z + y))/2

 ((z+x)*(z+y))/2

      # 10 * (x - y)
10*(x-y)

# 7)	In comment, please tell me what is the “R” operator for ‘not’ (or negation)?

#!

# 8)	Using the two objects you created in Question 4, apply the following operators: %%, ^, %/%. (2 POINTS)
    # In a comment, please explain what each operator is doing.

obj1%%obj2 #gives the remainder of dividing obj1 values with obj2 values
obj1^obj2 #raises obj1 values to the exponent of obj2 values
obj1%/%obj2 #divides obj1 values by obj2 values with no remainder

# 9)	Create an object with a left-to-right assignment operator.

a=3
b=2
c=1
abc= a -> b -> c

# 10)	Create 3 objects that each have a number assigned to them.
    ## The code for all three objects must exists a single line in the script.
    ## Print the values of those three objects.

a=3; b=2; c=1; a; b; c

# 11) In a series of comments and code, describe and show examples of the special values Inf, -Inf, NaN, and NA.
#Inf means positive infinity and us used when a value has too many positive digits to print
2/0

#-Inf means negative infinity and is used when a negative value has too many digits to print
-2/0

#NaN means not a number and prints when there is an undefined result
0.0/0.0

#NA means not available and prints when there is a missing value
v= c(1,2,3); NA.v=(v[4]); NA.v

# 12) Create a die with six sides and sample it with and without replacement.
    ## What is the difference between the two methods?

die=(1:6)
sample(die,3) #without replacement
sample(die,3, replace = TRUE) #with replacement

#when replacement is true it allows you to pick the same value more than once

# Creating data storage structures ------

# 13)	Create an array with 6 rows, 3 columns, and 2 sheets (or levels).

a= array(1:36, dim = c(6,3,2))

# 14)	Create a matrix with 10 rows and 4 columns.

m= matrix(1:40, nrow = 10, ncol = 4)

# 15)	In a comment, describe the difference between the two data structures.

#matrix is two dimensional while an array can have more dimensions than two

# 16) Using indexing, extract the 2nd, 6th, and 9th values from the 3rd column of the matrix your created in Question 14.

m[2,3]; m[6,3]; m[9,3]

# 17)	Create an object that extracts the second value from the second column in the second level (or sheet) in your array.
obj= a[2,2,2]

# 18) Create a data frame object with 5 rows and 3 columns. Give the columns the names of your three favorite foods.

food= data.frame(pizza= c(1,2,3,4,5), cookies= c(1,2,3,4,5), bread= c(1,2,3,4,5))

# 19) Assign the formula for a linear regression to a new object using the following values: slope = 2, y-intercept = 0.5

formula= as.formula(y~a+b*x)


# Working with data  --------
  # Use the data frame “test1_data.Rdata” into RStudio console for the following questions:

# 20) Print the structure of the data frame. Insert a comment that describes the five different data types are present.

print(d)
str(d)

#numeric, characters, factor, POSIXct, integer

# 21) Show the the FIRST 6 rows of the data frame "d"?

head(d)

# 22)	Find the number of rows in the data set.

nrow(d)

# 23) Find the number of columns in the data set.

ncol(d)

# 24)	Change the ‘tow’ field from a character to a factor data type.

tow.new= transform(d, tow= as.factor(tow)) #this code returns an error

# 25)	Change the ‘haul’ field from a numeric to an integer data type.

haul.new= transform(d, haul= as.integer(haul))

# 26)	Remove the “sw.density” column from the data frame.
d$sw.density= NULL

# 27)	Print the data type of only the ‘transect.id’ column.
str(d$transect.id)

#Working with character strings -----
# Use the data frame “test1_data.Rdata” into RStudio console for the following questions:
library(stringr)

#30) Find the unique values of transect.id and assign those to a new object.

t.id= unique(d$transect.id)

#31) Extract the last 10 unique, character strings from transect.id and assign those strings to a new object

t.id.tail= tail(n=10, t.id)

#32) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.

tid= str_split_fixed(string = d$transect.id, pattern = "-", n=4)
t1=tid[,1]
t2=tid[,2]
t3=tid[,3]
t4=tid[,4]
#33) Recombine the three components into a single text string.
##Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").

###there is no DMS component so I just put the last column first
paste(t3,t4,t1,t2, sep = "_")

#34) Using the first 5 unique transect.id values from transect.id, replace the dash ("-") with a underscore ('_')

t.id.u= gsub(pattern = "-", replacement = "_", x= head(n=5, t.id))

#35) Using the first 5 unique transect.id values, extract the first 5 characters (reading left to right) from the string
    ## and assign those values to a new object

tid2= str_split_fixed(string = t.id.u, pattern = "_", n=3); new.obj= tid2[,1]

#Importing data stored in different file types (e.g. .csv, .txt. , .xlsx) into 'R' ----

#36) Import the following files into 'R' and assign each data set its own unique object.
  #These data sets were shared with you in an accompanying zip file.

  #"aurelia_15minCell_statareas.Rdata"       "aurelia_15minCell_statareas.txt"         "Aurelia_SEAMAP_2012-2018_30minCell.xlsx"
  #"ENVREC.csv"                              "OST14_1E_d5_frames.csv"

Rdata=load("test1_data_2020/aurelia_15minCell_statareas.Rdata")

  # Note that the object 'Rdata' does not appear in your Environment pane when you run this line of code. Instead, the object 'a'
  # shows up. Loading Rdata files is the exception to the rule about automatically assigning the data an object in your script;
  # rather, the data set loads as the object it was saved as (in this case, 'a'). If you wish to reassign the dataset to a new
  # object, then you need to do this:
  Rdata <- a #new object <- original object

Ecsv= read.csv(file= "test1_data_2020/ENVREC.csv")

Txt= read.table(file= "test1_data_2020/aurelia_15minCell_statareas.txt")
head(Txt) #this returns a data frame with the data all smashed togther and not read in properly; but sure to check your work

  # correction -0.75 points
  # you need to provide 'R' with more information (i.e., arguments) in the read.table function in order for it to
  # import data in the file correctly. Add the 'header=T' and the delimiter "sep="," arguments
  Txt= read.table(file= "test1_data_2020/aurelia_15minCell_statareas.txt", sep = ",", header = T)
  head(Txt)

Ocsv= read.csv(file= "test1_data_2020/OST14_1E_d5_frames.csv")

  # correction -0.75 points
  # you need to provide 'R' with more information (i.e., arguments) in the read.csv function in order for it to
  # import data in the file correctly. Add the "skip=2" argument
  Ocsv= read.csv(file= "test1_data_2020/OST14_1E_d5_frames.csv", skip=2)
  head(Ocsv)

library(readxl)
Excel= read_xlsx(path= "test1_data_2020/Aurelia_SEAMAP_2012-2018_30minCell.xlsx")

#Dates----
#37) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., East Coast) time zone.
t <- "2020-09-17 12:05:32"
tm= as.POSIXct(strptime(x = t, format = "%Y-%m-%d %H:%M:%OS", tz="America/Los_Angeles"))

