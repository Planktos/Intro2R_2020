# Exam #1: Intro to "R" Programming
# Sept 2020

# All questions are worth 1 point each unless otherwise specified.

# You have 36h to take the exam. The exam will be due Friday, Sept. 18 at 9pm.

#----------------------------------------------------------------------------------

# Creating objects & using proper 'R' syntax ----

#1) please provide the commands that will show the data type of the following objects:

    x <- c(FALSE,TRUE,FALSE)
x
typeof(x)
mode(x)

#2) Demonstrate the two ways you can assign a sequence of 10 numbers to a vector object. The sequence should start at 5.
a<- c(5:14)
a

b<- seq(5:14)+4
b


#3) Find the number of values assigned to one of the vector objects created in Question 2.

length(a)
length(b)

#4) Create 2 objects and assign each 5 values. (3 POINTS)
p<- c(1,2,3,4,5)
q<-c(6,7,8,9,10)

  #a) Perform inner and outer multiplication on these two objects
p %*% q
p %o% q


  #b) Find the mean and standard deviation of each object
mean(p)
mean(q)
sd(p)
sd(q)

#5)	Create four objects, each with a different data type: character, integer, double-numeric, and factor.
    ## The integer should have at least 3 values. The factor should have at least two levels.

q5a<- c("one","two","three")
q5a

q5b<- c("1L","2L","3L")
q5b

  typeof (q5b) #this shows object 'q5b' is a character, not an interger
  #correction: -0.25 points
  q5b<- c(1L,2L,3L)
  typeof(q5b)

q5c<- c(1.1,2.5,4.5)
q5c

q5d<-c("dhaka","louisiana","lafayette","dhaka","lafayette")
q5d_factor<- factor(q5d)
q5d

print(nlevels(q5d_factor))


#6) Using indexing, extract the 1st and 7th values from a sequence your created in Question 2. (3 POINTS)

  # a) Assign the 1st and 7th values a new object.

b[1]
b[7]
D<-c(b[1],b[7]) #good use of concise syntax +0.25point
D

  # b) Apply the "less-than"; "greater-than"; "greater-than-equal to" operators.

a>b

a<b

a>=b


b[1]>b[7]

b[1]<b[7]

b[1]>=b[7]


# c) Complete the following operations where:

    # z = 1st value (see 6c);
    # y = 7th value (see 6c);
    # x = 5
x=5
      # (z plus x) * (z + y))/2

      # 10 * (x - y)




z=b[1]
y=b[7]
x=5
firstone=((z+x)*(z+y))/2
secondone=10*(x-y)
print(firstone)
print(secondone)



# 7)	In comment, please tell me what is the “R” operator for ‘not’ (or negation)?

#for performing negetion operation we use exclamatory mark in R '!'
#example:
1 != 2


# 8)	Using the two objects you created in Question 4, apply the following operators: %%, ^, %/%. (2 POINTS)
    # In a comment, please explain what each operator is doing.
p
q
p%%q
p^q
p%/%q

#%%=modulus operation(will show the remainder when you divide some numbers by other numbers)
#^=power(exponent operator)
#%/%=will show the quotient


# 9)	Create an object with a left-to-right assignment operator.

c(1,2,3)->left_to_right_operator
left_to_right_operator

# 10)	Create 3 objects that each have a number assigned to them.
## The code for all three objects must exists a single line in the script.
## Print the values of those three objects.

a1<-c(1,"aristotle")
a1
a2<-c(2, "socrates")
a2
a3<-c(3, "plato")
a3

all_three_object<-c(a1,a2,a3)

print(all_three_object)

  #note: you answered the question correctly; however, I was looking for the following command
  a1; a2; a3

# 11) In a series of comments and code, describe and show examples of the special values Inf, -Inf, NaN, and NA.


#Inf= for infinite large number(for positive number)
5000^3333434

#-Inf=for negative Infinity number(negative number is excessively huge)
-343434^2000343434

#NaN=values that doesn't make sense(programming does not show)
Inf+(-Inf)
Inf-(Inf)
#NA=not available(maybe missing data)
NA
5+NA
aaa<-c(1,2,3,4,NA,33)
aaa

# 12) Create a die with six sides and sample it with and without replacement.
    ## What is the difference between the two methods?
die<-c(1:6)
sample(die,3,T)
sample(die,3)

  # correction: -0.5 points
  # you did not answer the question about the difference between the two methods

# Creating data storage structures ------

# 13)	Create an array with 6 rows, 3 columns, and 2 sheets (or levels).

array(array(1:36), dim=c(6,3,2))
my.array <- array(array(1:36), dim=c(6,3,2))
my.array



# 14)	Create a matrix with 10 rows and 4 columns.
m<-matrix(data = 1:40, nrow = 10, ncol = 4)
m

# 15)	In a comment, describe the difference between the two data structures.
#matrix is two dimensional, #Array is multi-dimensional

# 16) Using indexing, extract the 2nd, 6th, and 9th values from the 3rd column of the matrix your created in Question 14.

m[2,3]
m[6,3]
m[9,3]


# 17)	Create an object that extracts the second value from the second column in the second level (or sheet) in your array.

my.array[2,2,2]
new_object<-my.array
new_object


# 18) Create a data frame object with 5 rows and 3 columns. Give the columns the names of your three favorite foods.


fav_foods<-data.frame(cakes=c(1,2,3,4,5), mango=c(6,7,8,10,11), banana=c(12,13,14,15,16))
fav_foods



# 19) Assign the formula for a linear regression to a new object using the following values: slope = 2, y-intercept = 0.5

la<-as.formula(y~mx+c)

m<-2
c<-0.5
substitute((y = m * x + c), list(m=m, c=c))


# Working with data  --------
  # Use the data frame “test1_data.Rdata” into RStudio console for the following questions:



# 20) Print the structure of the data frame. Insert a comment that describes the five different data types are present.?????????????
load(file = "test1_data_2020/test1_data.Rdata")

  # these next 2 lines are not needed
    #get(load(file = "test1_data_2020/test1_data.Rdata"))
    #d<-get(load(file = "test1_data_2020/test1_data.Rdata"))
  # d

#correction: -0.5
  #please show the commmand that will show the structure
  str(d)

#integer, floating, NA,Character, date-time stamp



# 21) Show the the FIRST 6 rows of the data frame "d"?
head(d,6)

# 22)	Find the number of rows in the data set.
nrow(d)

# 23) Find the number of columns in the data set.
ncol(d)

# 24)	Change the ‘tow’ field from a character to a factor data type.

d
  d["tow"] <- lapply(d["tow"] , factor)
d["tow"]

# 25)	Change the ‘haul’ field from a numeric to an integer data type.

d$haul<-as.integer(d$haul)
d$haul




# 26)	Remove the “sw.density” column from the data frame.

d$sw.density<-NULL
d$sw.density

# 27)	Print the data type of only the ‘transect.id’ column.
d[,2]
print(d[,2])

  #correction -1
  str(d[,2])

#Working with character strings -----
# Use the data frame “test1_data.Rdata” into RStudio console for the following questions:


#30) Find the unique values of transect.id and assign those to a new object.
unique(d$transect.id)
newobject<-c(unique(d$transect.id))
newobject


#31) Extract the last 10 unique, character strings from transect.id and assign those strings to a new object
last10<-c(tail(unique(d$transect.id),10))
last10



#32) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.


splitobject<-strsplit(newobject, "-")
splitobject

# Correction: - 1 point
  a <- str_split_fixed(string = newobject, pattern = "-", n = 4)
  a
  a1 <- a[,1]
  a2 <- a[,2]
  a3 <- a[,3]
  a4 <- a[,4]

#33) Recombine the three components into a single text string.
##Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").

paste0(splitobject)
paste0(splitobject$col3,"-", splitobject$col2,"-",splitobject$col1)
mn<-newcol<- paste0(splitobject$col3,"-", splitobject$col2,"-",splitobject$col1)
mn #this returns "--"

  #correction -0.75 point
  #you are on the righ track with the 'paste' function; here is the fix
  b <- paste(a4,a1,a2,a3, sep = "_")
  b

#34) Using the first 5 unique transect.id values from transect.id, replace the dash ("-") with a underscore ('_')

first5<-c(head(unique(d$transect.id),5))
first5

jackie<-gsub("-","_",first5)
jackie

#35) Using the first 5 unique transect.id values, extract the first 5 characters (reading left to right) from the string
    ## and assign those values to a new object

jackie2<-substr(jackie, 1, 5)
jackie2


#Importing data stored in different file types (e.g. .csv, .txt. , .xlsx) into 'R' ----


library(data.table)
library(tidyverse)
library(readxl)
#36) Import the following files into 'R' and assign each data set its own unique object.
  #These data sets were shared with you in an accompanying zip file.

  #"aurelia_15minCell_statareas.Rdata"       "aurelia_15minCell_statareas.txt"         "Aurelia_SEAMAP_2012-2018_30minCell.xlsx"
  #"ENVREC.csv"                              "OST14_1E_d5_frames.csv"

load(file="test1_data_2020/aurelia_15minCell_statareas.Rdata")

read.csv(file = "test1_data_2020/ENVREC.csv", header = T, stringsAsFactors = FALSE)

  # correction: -0.25 points
  # Please assign data sets to objects when you read them in so you can work with them later
  t <- read.csv(file = "test1_data_2020/ENVREC.csv", header = T, stringsAsFactors = FALSE)

read.csv(file = "test1_data_2020/OST14_1E_d5_frames.csv", header = T, stringsAsFactors = FALSE)

  # correction: -0.25 points
  # you needed to add 'skip=2' to the read.csv argument to exclude the first 2 lines

  # correction: -0.25 points
  # Please assign data sets to objects when you read them in so you can work with them later

   f <- read.csv(file = "test1_data_2020/OST14_1E_d5_frames.csv", header = T, stringsAsFactors = FALSE, skip = 2)

read.table(header = T, skip = 10, sep = "\t", file = "test1_data_2020/aurelia_15minCell_statareas.txt", stringsAsFactors = F)

  # correction: -0.25 points
  # Please assign data sets to objects when you read them in so you can work with them later

  # correction: -0.25 points
  # the delimiter is not a tab (i.e., "\t"), it is a comma

  # correction: -0.25 points
  # you do not need to skip 10 rows with this file; BE SURE to check the file in a text editor program (like Notepad or TextPad)
  # before reading it into R to understand what argruments are necessary
  a <- read.table(header = T, sep = ",", file = "test1_data_2020/aurelia_15minCell_statareas.txt",
                  stringsAsFactors = F)
  head(a)

read_excel(path= "test1_data_2020/Aurelia_SEAMAP_2012-2018_30minCell.xlsx")

  # correction: -0.25 points
  # Please assign data sets to objects when you read them in so you can work with them later
  s <- read_excel(path= "test1_data_2020/Aurelia_SEAMAP_2012-2018_30minCell.xlsx")
  head(s)

#Dates----
#37) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., East Coast) time zone.
t <- "9/17/2020 12:05:32"

pb.txt<-c("2020-09-17 12:05:32")
pb.date <- as.POSIXct(pb.txt, tz="Europe/London")
attributes(pb.date)$tzone <- "America/Los_Angeles"
pb.date
