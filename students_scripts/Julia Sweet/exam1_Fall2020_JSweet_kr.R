# Exam #1: Intro to "R" Programming
# Sept 2020
# Julia Sweet

# All questions are worth 1 point each unless otherwise specified.

# You have 36h to take the exam. The exam will be due Friday, Sept. 18 at 9pm.

#----------------------------------------------------------------------------------

# Creating objects & using proper 'R' syntax ----

#1) please provide the commands that will show the data type of the following objects:

    x <- c(FALSE,TRUE,FALSE)

#Structure and typeof, are the commands that will show the data type
str(x) # Returns the following:    logi [1:3] FALSE TRUE FALSE
typeof(x) # Returns the following: [1] "logical"


#2) Demonstrate the two ways you can assign a sequence of 10 numbers to a vector object. The sequence should start at 5.
sequence_1 <- c(5,10,15,20,25,30,35,40,45,50) #Manualy enter the values for the vector
sequence_2 <- seq(5,500,50)  #Creates a sequence from 5 to 500 by 50's


#3) Find the number of values assigned to one of the vector objects created in Question 2.
length(sequence_1) # Returns: [1] 10     indicating that I have 10 values assigned to this object


#4) Create 2 objects and assign each 5 values. (3 POINTS)
a<-c(1,2,3,4,5)
b<-c(6,7,8,9,10)

  #a) Perform inner and outer multiplication on these two objects
      #inner mulitplication, this is the sum of the element wise multiplication (1*6 +2*7 etc)
      a%*%b
      #returns answer
      #[,1]
      #[1,]  130

      #outer multiplication, this gives a matrix of each possible element multiplication pairing
      a%o%b
      #returns answer
      #      [,1] [,2] [,3] [,4] [,5]
      #[1,]    6    7    8    9   10
      #[2,]   12   14   16   18   20
      #[3,]   18   21   24   27   30
      #[4,]   24   28   32   36   40
      #[5,]   30   35   40   45   50


  #b) Find the mean and standard deviation of each object
      mean(a) #equals 3
      mean(b) #equals 8
      sd(a)   #equals 1.581139
      sd(b)   #equals 1.581139


#5)	Create four objects, each with a different data type: character, integer, double-numeric, and factor.
    ## The integer should have at least 3 values. The factor should have at least two levels.
      dog_breeds <-c("labrador", "collie", "pug", "pitbull") #character data
      test_scores <-c(99L,96L,100L,98L)                      #integer data
      average_mph <-c(55.872, 77.476, 66.856, 75.233)        #double numeric
      sports<- factor(c("surfing", "basketball", "soccer", "tennis", "football")) # this changes it from a character string to a factor with 5 levels


#6) Using indexing, extract the 1st and 7th values from a sequence your created in Question 2. (3 POINTS)
      sequence_2[1]
      sequence_2[7]

  # a) Assign the 1st and 7th values a new object.
      d<-sequence_2[1]
      e<-sequence_2[7]

  # b) Apply the "less-than"; "greater-than"; "greater-than-equal to" operators.
      d<e # Is d less than e
          # [1] TRUE
      e>d # Is e less than d
          #[1] TRUE
      d>=e # Is d greater than or equal to e
           #[1] FALSE

      # c) Complete the following operations where:

      # z = 1st value (see 6c); --> d
      # y = 7th value (see 6c); --> e
      # x = 5

      # (z plus x) * (z + y))/2
      ((d+5)*(d+e))/2

      # 10 * (x - y)
      10*(5-e)

# 7)	In comment, please tell me what is the “R” operator for ‘not’ (or negation)?
      # ! is R's way of saying "not"

# 8)	Using the two objects you created in Question 4, apply the following operators: %%, ^, %/%. (2 POINTS)
     a%%b
     a^b
     a%/%b

    # In a comment, please explain what each operator is doing.

     # %% is the modulus operator. This is essentially asking for what is leftover after  "a"  is divided by " b".
     #Since for my objects a = (1,2,3,4,5) and b = (6,7,8,9,10) "b" is never able to be divided into "a" so the remainder or modulus is simply       the original number i.e 6 is able to be divided into 1 zero times with 1 as the leftover, 7 is able to be divided into 2 zero times with       2 as the leftover and so on..
     # a%%b
     # [1] 1 2 3 4 5

     # ^ is raising  the first element of "a" to the exponent of the first element in "b". ie. 1 to the sixth power is 1, 2 to the seventh           power is 128, 3 to the sith power is 6561 and so on
     #  a^b
     # [1]       1     128    6561  262144 9765625

     # %/%  is performing integer division of a by b, that is the (whole) integer portion of the division. For example 5 divided by 4 would          yield 1. For the objects that I created none of the elements on "a" are able to be divided by "b"  so my results are all zero.
      # a%/%b
      # [1] 0 0 0 0 0

# 9)	Create an object with a left-to-right assignment operator.
      ?Syntax # Gives the following information for assignments
      # -> ->>	rightwards assignment
      # <- <<-	assignment (right to left)
      # =	assignment (right to left)

"my dog's name"->>Sawyer

# 10)	Create 3 objects that each have a number assigned to them.
    ## The code for all three objects must exists a single line in the script.
ages <- list(Matt=33, Alice=20, George=40)

    ## Print the values of those three objects.

ages$Matt
ages$Alice
ages$George

  #correction: -0.5 points
  ages$Matt; ages$Alice; ages$George

# 11) In a series of comments and code, describe and show examples of the special values Inf, -Inf, NaN, and NA.
    # Inf and -Inf stand for infinity and negative infinity and is the result of either a large number or division by zero
    # NA is a logical constant of length 1 and is an indicator for a missing value, stands for not available.
    #NaN stands for Not A Number and is a logical vector of a length 1 and applies to numerical values, as well as real and imaginary parts of     complex values, but not to values of integer vector. NaN is a reserved word.

10000000000^1000000000000
# [1] Inf

1/0
#[1] Inf

-100000000000000^10000000000000
#[1] -Inf

#creating a vector of 5 values, then setting it to have a length of 10 will result in the 5 empyt spaces being assigned NA
example <-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
length(example) <-20
#[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 NA NA NA NA NA

0/0
# [1] NaN


# 12) Create a die with six sides and sample it with and without replacement.
    ## What is the difference between the two methods?

die<-1:6
sample(die,1) # 1 number from die without replacement
sample(die,2) # 2 numbers from die without replacement
sample(die,2,replace = T) # 2 numbers from die WITH replacement

#Without replacement, means that whatever number is selected will be removed from the pool permanently and connot be selected again. With replacement means that the number goes back into the pool after being selected and is available to be drawn a second time.

# Creating data storage structures ------

# 13)	Create an array with 6 rows, 3 columns, and 2 sheets (or levels).
ray <- array(data = 1:18, dim=c(6,3,2))
ray

# 14)	Create a matrix with 10 rows and 4 columns.
m<-matrix(data = 1:40, nrow=10, ncol=4,
          dimnames=list(c("r1","r2", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10"), c("c1", "c2", "c3", "c4")))
m

# 15)	In a comment, describe the difference between the two data structures.
# A matrix is an extension of a vector, it has 2 dimensions, and can only have data of a single type
# An array can hold somthing like NASA satalite data where you have a lat and a long, then multiple data types for example sea surface temp (SST) or Salinity


# 16) Using indexing, extract the 2nd, 6th, and 9th values from the 3rd column of the matrix your created in Question 14.
m[2,3]
m[6,3]
m[9,3]

# 17)	Create an object that extracts the second value from the second column in the second level (or sheet) in your array.

sub_ray<-ray[2,2,2]


# 18) Create a data frame object with 5 rows and 3 columns. Give the columns the names of your three favorite foods.
df<-data.frame(Sushi=c(1,2,3,4,5), Chocolate=c(10,20,30,40,50), Pancakes=c(100,200,300,400,500))
df

# 19) Assign the formula for a linear regression to a new object using the following values: slope = 2, y-intercept = 0.5
lin.reg.formula <- as.formula(y~2*x + 0.5)

# Working with data  --------
  # Use the data frame “test1_data.Rdata” into RStudio console for the following questions:
setwd("~/Dropbox/JuliaSweet/ULL_PhD/Coursework/Fall_2020/R For Biologists/Exams/Exam 1")
load("test1_data_2020/test1_data.Rdata")

# 20) Print the structure of the data frame. Insert a comment that describes the five different data types are present.
str(d)
# Character "chr"  <--This is a character, in the instance of this data this is some type of label for instance transect.id
# Integer "int"  <-- this is a whole number value
# Factor (with 3 levels) "Factor w/3 levels"  <-- this is a factor which has three levels. For this data it is identifying the tow as either m, s, or und
# Number "num"  <-- This is a numerical value with a decimal
# POSIXct  <-- This is a date and time

# 21) Show the the FIRST 6 rows of the data frame "d"?
head(d)


# 22)	Find the number of rows in the data set.
tail(d)
    # read the last row number which is 5034111

    # Correction: -0.5 point
    # Yes, this is the manual way to do it but will not be efficient in the long-run (how would you call this automatically?)
    nrow(d)

# 23) Find the number of columns in the data set.
length(d)
# [1] 18

# 24)	Change the ‘tow’ field from a character to a factor data type.
d$tow<-as.factor(d$tow)
typeof(d$tow)

# 25)	Change the ‘haul’ field from a numeric to an integer data type.
d$haul <-as.integer(d$haul)

# 26)	Remove the “sw.density” column from the data frame.
d$sw.density <-NULL

# 27)	Print the data type of only the ‘transect.id’ column.
transect_id <-d$transect.id
typeof(transect_id)
# [1] "character"

#Working with character strings -----
# Use the data frame “test1_data.Rdata” into RStudio console for the following questions:
library(stringr)

#30) Find the unique values of transect.id and assign those to a new object.
unique_transects <-unique(d$transect.id)

#31) Extract the last 10 unique, character strings from transect.id and assign those strings to a new object

last_10_unique <-unique_transects[32:41]
last_10_unique

  #consider this way next time; let 'R' do the work for you and the answer will always be correct even if the total number of unique transects changes
  last_10_unique2 <- unique_transects[(length(unique_transects)-10):length(unique_transects)]

#32) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.
n <- str_split_fixed(string = d$transect.id, pattern = "-", n = 4)
n1 <- n[,1]
n2 <- n[,2]
n3 <- n[,3]
n4 <- n[,4]


#33) Recombine the three components into a single text string.
##Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").
transect.ids.rearranged <-str_c(n4,n1,n2,n3, sep="_")
transect.ids.rearranged
# Performed this putting the X first


#34) Using the first 5 unique transect.id values from transect.id, replace the dash ("-") with a underscore ('_')
first_5_unique <- unique_transects[1:5]
first_5_unique

  #correction -1 point
  first_5_unique <- gsub(x=first_5_unique, pattern = "-", replacement = "_")


#35) Using the first 5 unique transect.id values, extract the first 5 characters (reading left to right) from the string
    ## and assign those values to a new object

first5_of_first5 <-str_sub(first_5_unique, start=1, end=5)

#Importing data stored in different file types (e.g. .csv, .txt. , .xlsx) into 'R' ----

#36) Import the following files into 'R' and assign each data set its own unique object.
  #These data sets were shared with you in an accompanying zip file.

  #"aurelia_15minCell_statareas.Rdata"       "aurelia_15minCell_statareas.txt"         "Aurelia_SEAMAP_2012-2018_30minCell.xlsx"
  #"ENVREC.csv"                              "OST14_1E_d5_frames.csv"

# R Data
load("test1_data_2020/aurelia_15minCell_statareas.Rdata") # This is already assigned to the unique object a
  #well done! +0.25 points

# Txt File
txt1<-read.table(file="test1_data_2020/aurelia_15minCell_statareas.txt", sep = ",", header = T)

# Excel File
library(readxl)
excl1 <-read_xlsx (path = "test1_data_2020/Aurelia_SEAMAP_2012-2018_30minCell.xlsx")

#csv files
csv.1 <-read.csv(file = "test1_data_2020/ENVREC.csv", header = TRUE, stringsAsFactors = FALSE)
csv.2 <-read.csv(file = "test1_data_2020/OST14_1E_d5_frames.csv", stringsAsFactors = FALSE, header = TRUE)

  # correction -0.25 point
  # you need to provide 'R' with the 'skip' argument to exclude the first 2 lines
  csv.2 <-read.csv(file = "test1_data_2020/OST14_1E_d5_frames.csv", stringsAsFactors = FALSE, header = TRUE, skip=2)


#Dates----
#37) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., East Coast) time zone.
t <- "9/17/2020 12:05:32"

t <-as.POSIXct(strptime(x=t, format="%m/%d/%Y %H:%M:%OS", tz="America/Los_Angeles"))

#I was confused by West Coast (i.e East Coast) so I made the time West Coast by using Los Angeles
# Look at str(d) to make sure that it is now formatted in the correct way
str(t)

