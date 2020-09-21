# Exam #1: Intro to "R" Programming
# Sept 2020

# All questions are worth 1 point each unless otherwise specified.

# You have 36h to take the exam. The exam will be due Friday, Sept. 18 at 9pm.

#----------------------------------------------------------------------------------

# Creating objects & using proper 'R' syntax ----

#1) please provide the commands that will show the data type of the following objects:

    x <- c(FALSE,TRUE,FALSE)

    class(x)

#2) Demonstrate the two ways you can assign a sequence of 10 numbers to a vector object. The sequence should start at 5.

    a = seq(5, 14, 1)
    b = 5:14


#3) Find the number of values assigned to one of the vector objects created in Question 2.

    length(a)

#4) Create 2 objects and assign each 5 values. (3 POINTS)
    d = c(1,3,5,7,9)
    e = c(2,4,6,8,10)

  #a) Perform inner and outer multiplication on these two objects
    d%*%e
    d%o%e

  #b) Find the mean and standard deviation of each object
    mean(d)
    mean(e)

    sd(d)
    sd(e)

#5)	Create four objects, each with a different data type: character, integer, double-numeric, and factor.
    ## The integer should have at least 3 values. The factor should have at least two levels.

    character = "Hello"
    interger = c(2L,4L,5L)
    Double = c(1,1.5,2,2.5)
    Factor =  factor(c("N","S","E","W"), levels = 4)


#6) Using indexing, extract the 1st and 7th values from a sequence your created in Question 2. (3 POINTS)

  # a) Assign the 1st and 7th values a new object.
    A = a[1]
    B = a[7]

  # b) Apply the "less-than"; "greater-than"; "greater-than-equal to" operators.
      A<B
      A>B
      A>=B


  # c) Complete the following operations where:

    # z = 1st value (see 6c);
    # y = 7th value (see 6c);
    # x = 5

      # (z plus x) * (z + y))/2

      # 10 * (x - y)

      Z=A
      Y=B
      x=5
      (Z+x)*(Z+Y)/2
      10*(x-Y)

# 7)	In comment, please tell me what is the “R” operator for ‘not’ (or negation)?

      #The operator for "not" is !. != means not equal.


# 8)	Using the two objects you created in Question 4, apply the following operators: %%, ^, %/%. (2 POINTS)
    # In a comment, please explain what each operator is doing.

    e%%d
    d^e
    d%/%e

    #The %% operator is giving me the remainders from dividing each of the numbers in the first vector by the numbers in the 2nd vector.
    #The ^ operator is taking the first vector and raising the values with in it by the corresponding values of the 2nd vector.
    #The %/% vector is dividing each of the values from the first vector by the corresponding value in the 2nd vector without any remainders or fractions.

#9)	Create an object with a left-to-right assignment operator.
    X = a<<-b


# 10)	Create 3 objects that each have a number assigned to them.
    ## The code for all three objects must exists a single line in the script.
    ## Print the values of those three objects.

    O1 = 1
    O2 = 2
    O3 = 3
    print(O1)
    print(O2)
    print(O3)


# 11) In a series of comments and code, describe and show examples of the special values Inf, -Inf, NaN, and NA.
    ZA = NA
    ZA = Inf/-Inf
    #Inf means infinity, -Inf means negative infiinity, NaN means not a number, and NA means that there is no data (this default fills matrices and data frames)
    #Ifinity divided by negative infinity is not a number (NaN)

# 12) Create a die with six sides and sample it with and without replacement.
    ## What is the difference between the two methods?

     die=c(1,2,3,4,5,6)
    sample(die, replace = FALSE)
    sample(die, replace = TRUE)

    #With replacements allows the same side of the die to be sampled while the false method does not allow for resampling.

# Creating data storage structures ------

# 13)	Create an array with 6 rows, 3 columns, and 2 sheets (or levels).
    AO = array(data = 1:36, dim = c(6, 3, 2))

# 14)	Create a matrix with 10 rows and 4 columns.
    MAT = matrix(1:40, nrow = 10, ncol = 4)

# 15)	In a comment, describe the difference between the two data structures.
    #Arrays are three dimensional in a similar fashion to a book while matrices are two dimensional.

# 16) Using indexing, extract the 2nd, 6th, and 9th values from the 3rd column of the matrix your created in Question 14.
    MAT[c(2,6,9),3]


# 17)	Create an object that extracts the second value from the second column in the second level (or sheet) in your array.
    OA = AO[2,2,2]

# 18) Create a data frame object with 5 rows and 3 columns. Give the columns the names of your three favorite foods.
    data.frame("Thai" = c(1,2,3,4,5), "Sushi" = c(1,2,3,4,5), "Mexican" = c(1,2,3,4,5))

# 19) Assign the formula for a linear regression to a new object using the following values: slope = 2, y-intercept = 0.5

    LR = as.formula(y~2*x+0.5)

# Working with data  --------
  # Use the data frame “test1_data.Rdata” into RStudio console for the following questions:

# 20) Print the structure of the data frame. Insert a comment that describes the five different data types are present.
    load("~/test1_data.Rdata")
    print(d)
    class(d)
    str(d)
    #The five types of data present are intergers, characters, Factors, date-time data, and numbers.

# 21) Show the the FIRST 6 rows of the data frame "d"?
  head(d)

# 22)	Find the number of rows in the data set.
 nrow(d)

# 23) Find the number of columns in the data set.
ncol(d)

# 24)	Change the ‘tow’ field from a character to a factor data type.
as.factor(d$tow)
is.factor(d$tow)

# 25)	Change the ‘haul’ field from a numeric to an integer data type.
as.integer(d$haul)
is.integer(d$haul)

# 26)	Remove the “sw.density” column from the data frame.
d$sw.density=NULL

# 27)	Print the data type of only the ‘transect.id’ column.
class(d$transect.id)

#Working with character strings -----
# Use the data frame “test1_data.Rdata” into RStudio console for the following questions:
library(stringr)

#30) Find the unique values of transect.id and assign those to a new object.
UV = unique(d$transect.id)

#31) Extract the last 10 unique, character strings from transect.id and assign those strings to a new object
length(UV)
UVII=UV[32:41]

#32) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.


TID=str_split_fixed(d$transect.id, pattern = "-", n=4)
OST = TID[,1]
N = TID[,2]
I = TID[,3]
L = TID[,4]
#There were 4 components seperated by "-" I seperated the 4th component as well.

#33) Recombine the three components into a single text string.
##Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").

R4=str_c(L, I, N, OST, sep = "_")
#I recombined placing the 4th component to the front.

#34) Using the first 5 unique transect.id values from transect.id, replace the dash ("-") with a underscore ('_')
SUB = gsub(UV[1:5], pattern = "-", replacement = "_")

#35) Using the first 5 unique transect.id values, extract the first 5 characters (reading left to right) from the string
    ## and assign those values to a new object
  NO = str_sub(UV[1:5], start = 1, end = 5)

#Importing data stored in different file types (e.g. .csv, .txt. , .xlsx) into 'R' ----

#36) Import the following files into 'R' and assign each data set its own unique object.
  #These data sets were shared with you in an accompanying zip file.

  #"aurelia_15minCell_statareas.Rdata"       "aurelia_15minCell_statareas.txt"         "Aurelia_SEAMAP_2012-2018_30minCell.xlsx"
  #"ENVREC.csv"                              "OST14_1E_d5_frames.csv"

  library(ncdf4)
  library(readxl)
  setwd ("C:/Users/Blaine/Downloads/test1_data_2020")

  B = load("C:/Users/Blaine/Downloads/test1_data_2020/aurelia_15minCell_statareas.Rdata")

  ENV = read.csv("C:/Users/Blaine/Downloads/test1_data_2020/ENVREC.csv")

  A15T = read.table("C:/Users/Blaine/Downloads/test1_data_2020/aurelia_15minCell_statareas.txt", header = T, stringsAsFactors = F, sep = ",")

  OST14 = read.csv("C:/Users/Blaine/Downloads/test1_data_2020/OST14_1E_d5_frames.csv", header = F)
  #I looked at this file outside of R using both Excel and Notepad, but I couldn't decide how to seperate the data to make it intelligible.

  AUR = read_xlsx("C:/Users/Blaine/Downloads/test1_data_2020/Aurelia_SEAMAP_2012-2018_30minCell.xlsx")


#Dates----
#37) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., East Coast) time zone.
t <- "9/17/2020 12:05:32"
d= as.POSIXct(strptime(x = t, format = "%m/%d/%Y %H:%M:%OS", tz="America/Los_Angeles" ))


