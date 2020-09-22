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



#2) Demonstrate the two ways you can assign a sequence of 10 numbers to a vector object. The sequence should start at 5.
  A<-c(5:14)

  B<-seq(5,50, by=5)

#3) Find the number of values assigned to one of the vector objects created in Question 2.
  length(A)
  length(B)

#4) Create 2 objects and assign each 5 values. (3 POINTS)

  a<-c(5,6,9,12,10)
  b<-c(2,5,7,11,13)


  #a) Perform inner and outer multiplication on these two objects
  #inner multiplication

  a%*%b

  #outer multiplication with the %o% operator
  a%o%b


  #b) Find the mean and standard deviation of each object
  mean(a)
  mean(b)
  #standard deviation of each object
  sd(a)
  sd(b)

#5)	Create four objects, each with a different data type: character, integer, double-numeric, and factor.
    ## The integer should have at least 3 values. The factor should have at least two levels.
  data_type_c<-("hello world")  #character
  data_type_I<-c(5,9,12)   #integer

    typeof(data_type_I) #this shows the object "data_type_I" to be a double-numeric
    #correction -0.25 points
    data_type_I_corr <- c(5L,9L,12L)
    typeof(data_type_I_corr)

  data_type_F<- factor(c("male", "female")) #factor
  data_type_D <- c(1.0, 2.5, 3.15, 4.5, 5.23, 6.56)  #double-numeric

  #6) Using indexing, extract the 1st and 7th values from a sequence your created in Question 2. (3 POINTS)

  A[c(1,7)]
  B[c(1,7)]
  # a) Assign the 1st and 7th values a new object.
 p<-c(A[c(1,7)])
 q<-c(B[c(1,7)])

 # b) Apply the "less-than"; "greater-than"; "greater-than-equal to" operators.
p<q
q>p
p >= q

  # c) Complete the following operations where:

    # z = 1st value (see 6c);
    # y = 7th value (see 6c);
    # x = 5
z<- A[1]
y<- A[7]
x<-5


      # (z plus x) * (z + y))/2
     ((z+x)*(z+y))/2

      # 10 * (x - y)
      10*(x-y)


# 7)	In comment, please tell me what is the “R” operator for ‘not’ (or negation)?

   # ! indicates logical negation (NOT)

# 8)	Using the two objects you created in Question 4, apply the following operators: %%, ^, %/%. (2 POINTS)
    # In a comment, please explain what each operator is doing.

      a<-c(5,6,9,12,10)
      b<-c(2,5,7,11,13)

      print(a%%b)  #Giving the remainder of the first vector with the second
      print(a^b)  #The first vector raised to the exponent of second vector
      print(a%/%b) #The result of division of first vector with second vector

# 9)	Create an object with a left-to-right assignment operator.

c(1:10)->LTR

# 10)	Create 3 objects that each have a number assigned to them.
    ## The code for all three objects must exists a single line in the script.
    ## Print the values of those three objects.
a1<-c(30)
a2<-c(74)
a3<-c(45)
sc<-c(a1,a2,a3)
print(sc)

  #note: your code is correct; however, I was looking for an example of this syntax:
  a1; a2; a3

# 11) In a series of comments and code, describe and show examples of the special values Inf, -Inf, NaN, and NA.

infinity<-(1000/0)  #Inf and -Inf stands for infinity (or negative infinity) and is a result of storing either a large number or a product that is a result of division by zero.
infinity_neg<-(-1000/0)
sqrt(-1)   #NaN implies a result that cannot be calculated for whatever reason, or is not a floating point number
Na<-(1:3) #In R, missing values are represented by the symbol NA (not available)
Na[4]

# 12) Create a die with six sides and sample it with and without replacement.
    ## What is the difference between the two methods?
die <- 1:6
sample(die, size = 2)
sample(die, size = 2, replace = TRUE)
sample(die, size = 2, replace = FALSE)

#When we sample with replacement, the two sample values are independent.
#In sampling without replacement, the two sample values are not independent.

  # Correction: -0.25 point
  # I am not quite following what you mean by 'independent' values. The different is that with the argument
  # 'repalce = T', then the value sampled by R is put back into the pool of possible values and could be
  # drawn again. In constrast, if 'replace = FASLE', then values drawn from the pool of possible numbers cannot be
  # drawn again

# Creating data storage structures ------

# 13)	Create an array with 6 rows, 3 columns, and 2 sheets (or levels).
ar <- array(c(1:36), dim = c(6, 3, 2))

# 14)	Create a matrix with 10 rows and 4 columns.
m1 <- matrix(data=1:40, nrow = 10, ncol = 4,
            dimnames = list(c("r1","r2","r3","r4","r5","r6","r7","r8","r9","r10"),
                            c("c1","c2","c3","c4")))


# 15)	In a comment, describe the difference between the two data structures.

#A matrix is a two-dimensional (row ? columns) object
#Arrays are the R data objects which can store data in more than two dimensions

# 16) Using indexing, extract the 2nd, 6th, and 9th values from the 3rd column of the matrix your created in Question 14.
m1 <- matrix(data=1:40, nrow = 10, ncol = 4,
            dimnames = list(c("r1","r2","r3","r4","r5","r6","r7","r8","r9","r10"),
                            c("c1","c2","c3","c4")))

m1[c(2,6,9),3] #very good: +0.25 point

# 17)	Create an object that extracts the second value from the second column in the second level (or sheet) in your array.
ar[2,2,2]

# 18) Create a data frame object with 5 rows and 3 columns. Give the columns the names of your three favorite foods.


S<-data.frame(ckn=c("r1","r2","r3","r4","r5"), ramen=c("r1","r2","r3","r4","r5"),pasta= c("r1","r2","r3","r4","r5"))

# 19) Assign the formula for a linear regression to a new object using the following values: slope = 2, y-intercept = 0.5
x<-(1:5)

sample <- as.formula(y~2*x + 0.5)



# Working with data  --------
  # Use the data frame “test1_data.Rdata” into RStudio console for the following questions:

# 20) Print the structure of the data frame. Insert a comment that describes the five different data types are present.
library(tidyverse)
getwd()
load("test1_data_2020/test1_data.Rdata")
print(d)
dim(d) #dim(): shows the dimensions of the data frame by row and column
str(d) #str(): shows the structure of the data frame
summary(d) #summary(): provides summary statistics on the columns of the data frame
colnames(d) #colnames(): shows the name of each column in the data frame
View(d) #View(): shows a spreadsheet-like display of the entire data frame


# data types are character, integer, factor


# 21) Show the the FIRST 6 rows of the data frame "d"?
head(d, n=6)

# 22)	Find the number of rows in the data set.
nrow(d)

# 23) Find the number of columns in the data set.
ncol(d)

# 24)	Change the ‘tow’ field from a character to a factor data type.

d$tow <- as.factor(d$tow)

# 25)	Change the ‘haul’ field from a numeric to an integer data type.
d$haul <- as.integer(d$haul)


# 26)	Remove the “sw.density” column from the data frame.
df = subset(d, select = -c(sw.density) ) #method 1

df1 = d[,!(names(d) %in% c("sw.density"))] #method 2

#these are technically correct methods! well done in showing versatility: +0.25 points
  # a more concise method is:
  d$sw.density <- NULL

# 27)	Print the data type of only the ‘transect.id’ column.

sapply(d["transect.id"], class)

#Working with character strings -----
# Use the data frame “test1_data.Rdata” into RStudio console for the following questions:
library(stringr)
load("test1_data_2020/test1_data.Rdata")

#30) Find the unique values of transect.id and assign those to a new object.

unique_value<-unique (d$transect.id)

#31) Extract the last 10 unique, character strings from transect.id and assign those strings to a new object
unique_value1<- tail(unique (d$transect.id),n = 10)

#32) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.
split_break<- str_split_fixed(as.vector(d$transect.id), pattern = "-", n=4)

#33) Recombine the three components into a single text string.
##Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").

combine_str <- paste(split_break[,1],split_break[,2],split_break[,3],sep ="_")


#34) Using the first 5 unique transect.id values from transect.id, replace the dash ("-") with a underscore ('_')

first_5_unique<-(unique_value[1:5])


i<-str_replace(string= first_5_unique, pattern = "-", replacement = "_")

i2<-gsub(pattern = "-", x=first_5_unique,replacement = "_")

#35) Using the first 5 unique transect.id values, extract the first 5 characters (reading left to right) from the string
    ## and assign those values to a new object

S<-str_sub(string=first_5_unique, start=1, end=5)

#Importing data stored in different file types (e.g. .csv, .txt. , .xlsx) into 'R' ----

#36) Import the following files into 'R' and assign each data set its own unique object.
  #These data sets were shared with you in an accompanying zip file.

  #"aurelia_15minCell_statareas.Rdata"       "aurelia_15minCell_statareas.txt"         "Aurelia_SEAMAP_2012-2018_30minCell.xlsx"
  #"ENVREC.csv"                              "OST14_1E_d5_frames.csv"

load("test1_data_2020/aurelia_15minCell_statareas.Rdata") #import r data

ENVREC <- read.csv(file="test1_data_2020/ENVREC.csv",header = TRUE,stringsAsFactors = FALSE) #import csv file

ost<- read.csv(file="test1_data_2020/OST14_1E_d5_frames.csv", header= TRUE, stringsAsFactors = FALSE) #import csv file
  #correction: please add the 'skip=2' argument to exclude the first 2 lines
  ost2<- read.csv(file="test1_data_2020/OST14_1E_d5_frames.csv", skip=2, stringsAsFactors = FALSE) #import csv file

au <- read.table(header = T, skip = 10, sep = "\t","test1_data_2020/aurelia_15minCell_statareas.txt", stringsAsFactors = FALSE)#import txt file

  #correction: - 0.5 point
  #no need to use the 'skip=10' argument; also the delimiter is not a tab, it is a comma ","
  au2 <- read.table(header = T, sep = ",","test1_data_2020/aurelia_15minCell_statareas.txt",
                    stringsAsFactors = FALSE)#import txt file
  head(au2)

install.packages("readxl")
(readxl)
aurelia <- read_xlsx(file="test1_data_2020/Aurelia_SEAMAP_2012-2018_30minCell.xlsx") #import excel file


#Dates----
#37) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., East Coast) time zone.
t <- "9/17/2020 12:05:32"

z<-strptime("9/17/2020 12:05:32", "%m/%d/%Y %H:%M:%S")


pac_time_zone<- as.POSIXct(z,tz="US/Pacific")

