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

ten_one = c(5:14)
ten_two = seq(5, 50, 5)


#3) Find the number of values assigned to one of the vector objects created in Question 2.

length(ten_one)


#4) Create 2 objects and assign each 5 values. (3 POINTS)

drums = 1:5
bass = 6:10

#a) Perform inner and outer multiplication on these two objects

drums%*%bass
drums%o%bass

  #b) Find the mean and standard deviation of each object

mean(drums)
sd(drums)

mean(bass)
sd(bass)

#5)	Create four objects, each with a different data type: character, integer, double-numeric, and factor.
    ## The integer should have at least 3 values. The factor should have at least two levels.
chars = c("Aimee", "Regina", "Chochy,", "Isabella")
numbs = c(9:15)
double_numb = c(3, 5.5, 7, 8)
factor_cymbals = factor(c("china", "splash", "trash"), levels = c("china", "splash", "trash", "ride"))


#6) Using indexing, extract the 1st and 7th values from a sequence your created in Question 2. (3 POINTS)


  # a) Assign the 1st and 7th values a new object.
first = ten_two[1]
seventh = ten_two[7]

# b) Apply the "less-than"; "greater-than"; "greater-than-equal to" operators.

first < seventh
first > seventh
first == seventh

  # c) Complete the following operations where:

    # z = 1st value (see 6c);
    # y = 7th value (see 6c);
    # x = 5

z = first
y = seventh
x = 5
  # (z plus x) * (z + y))/2
  ((z + x)*(z + y))/2

      # 10 * (x - y)
  10*(x-y)


# 7)	In comment, please tell me what is the “R” operator for ‘not’ (or negation)?

    ##The operator that means "not" is the exclamation point. For example, you can type !=
    ##which means "not equal to", or 5 != 6, which is true because 5 does not equal 6



# 8)	Using the two objects you created in Question 4, apply the following operators: %%, ^, %/%. (2 POINTS)
    # In a comment, please explain what each operator is doing.
  drums%%bass
      #this gives the remainder of drums divided by bass.
      #it divides the corresponding terms in each object and gives the remainder
  drums^bass
      #this takes the terms in drums and raises them to the power of the corresponding term in drums
  drums%/%bass
      #this is taking the terms in drums and dividing them by the corresponding terms in bass
      #and then rounding down the answer. Each one comes out to a decimal less than one, so it rounds down to 0



# 9)	Create an object with a left-to-right assignment operator.
c(1, 2, 3) -> left_to_right

#------
#10)	Create 3 objects that each have a number assigned to them.
    ## The code for all three objects must exists a single line in the script.
    ## Print the values of those three objects.
sev = 7; niner = 9; tenth = 10
print(sev)
print(niner)
print(tenth)

# 11) In a series of comments and code, describe and show examples of the special values Inf, -Inf, NaN, and NA.
#NA means "not available" and results when R doesn't have a value for what you requested. For example:

a = c(1:3)
a[1:5]    ##the last two numbers show up as NA because there is nothing defined for them

## NaN means "not a number" and is shown when a numeric value is not a number. Example:
0/0

##Inf and -Inf are infinity and negative infinity. Example:
pi/0 # equals Inf
-pi/0 #equals -Inf

# 12) Create a die with six sides and sample it with and without replacement.
    ## What is the difference between the two methods?
die = 1:6
sample(die, 2)
sample(die, 2, TRUE)
## Replacement is the equivalent of putting the first number you get back into the rotation
##of numbers to be chosen from, giving you a chance of pulling multiple of the same number

# Creating data storage structures ------

# 13)	Create an array with 6 rows, 3 columns, and 2 sheets (or levels).

golden_sun = array(data = 1:36, dim = c(6,3,2))


# 14)	Create a matrix with 10 rows and 4 columns.

matrix_percussion = matrix(data = 1:40, nrow = 10, ncol = 4)


# 15)	In a comment, describe the difference between the two data structures.
  ##An array is an object where multiple matrices are "stacked" on top of each other.
  ##An array is 3D and a matrix is 2D

# 16) Using indexing, extract the 2nd, 6th, and 9th values from the 3rd column of the matrix your created in Question 14.

matrix_percussion[2,3]
matrix_percussion[6,3]
matrix_percussion[9,3]


# 17)	Create an object that extracts the second value from the second column in the second level (or sheet) in your array.

twos = golden_sun[2,2,2]


# 18) Create a data frame object with 5 rows and 3 columns. Give the columns the names of your three favorite foods.

fave_foods = data.frame(Kale = c(1:5),
                        Smores = c(6:10),
                        Cookie_dough = c(11:15))


# 19) Assign the formula for a linear regression to a new object using the following values: slope = 2, y-intercept = 0.5

linreg = as.formula(y~2*x + 0.5)


# Working with data  --------
  # Use the data frame "test1_data.Rdata" into RStudio console for the following questions:
load("test1_data_2020/test1_data.Rdata")

# 20) Print the structure of the data frame. Insert a comment that describes the five different data types are present.
str(d)
##I see characters, numeric values, integers, factors, and date/time values?

# 21) Show the the FIRST 6 rows of the data frame "d"?

head(d)

# 22)	Find the number of rows in the data set.

nrow(d)


# 23) Find the number of columns in the data set.

ncol(d)


# 24)	Change the "tow" field from a character to a factor data type.
d$tow = as.factor(d$tow)



# 25)	Change the "haul" field from a numeric to an integer data type.
d$haul = as.integer(d$haul)


# 26)	Remove the "sw.density" column from the data frame.

d$sw.density = NULL


# 27)	Print the data type of only the "transect.id" column.

typeof(d$transect.id)


#Working with character strings -----
# Use the data frame "test1_data.Rdata" into RStudio console for the following questions:
library(stringr)

#30) Find the unique values of transect.id and assign those to a new object.

unique_transect = unique(d$transect.id)


#31) Extract the last 10 unique, character strings from transect.id and assign those strings to a new object

new_trans = tail(unique_transect, n = 10)

#32) Each value of transect.id has four components, separated by a dash ('-').
## Break these 4 components apart using the dash as the separator and assign each component to a new object.

sections = str_split_fixed(pattern = "-", string = d$transect.id, n = 4)

DMS = sections[,4]
V1 = sections[,1]
V2 = sections[,2]
V3 = sections[,3]

#33) Recombine the three components into a single text string.
##Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").

single_string = str_c(DMS, V3, V2, V1, sep = "_")


#34) Using the first 5 unique transect.id values from transect.id, replace the dash ("-") with a underscore ('_')
first_5 = head(unique_transect, n = 5)
gsub(pattern = "-", replacement = "_", x = first_5)

#35) Using the first 5 unique transect.id values, extract the first 5 characters (reading left to right) from the string
    ## and assign those values to a new object

five_trans_chars = str_sub(string = first_5, start = 1L, end = 5L)


#Importing data stored in different file types (e.g. .csv, .txt. , .xlsx) into 'R' ----

#36) Import the following files into 'R' and assign each data set its own unique object.
  #These data sets were shared with you in an accompanying zip file.

  #"aurelia_15minCell_statareas.Rdata"       "aurelia_15minCell_statareas.txt"         "Aurelia_SEAMAP_2012-2018_30minCell.xlsx"
  #"ENVREC.csv"                              "OST14_1E_d5_frames.csv"

R_elia = load("test1_data_2020/aurelia_15minCell_statareas.Rdata")
relia_txt = read.table("test1_data_2020/aurelia_15minCell_statareas.txt", stringsAsFactors = FALSE)
envrec = read.csv("test1_data_2020/ENVREC.csv", stringsAsFactors = FALSE)
OST = read.csv("test1_data_2020/OST14_1E_d5_frames.csv", stringsAsFactors = FALSE)
seamap = readxl::read_excel("test1_data_2020/Aurelia_SEAMAP_2012-2018_30minCell.xlsx")


#Dates----
#37) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., East Coast) time zone.
t <- "9/17/2020 12:05:32"

westcoast = as.POSIXct(strptime(x = t, format = "%Y/%m/%d %H:%M:%OS", tz = "America/Los_Angeles"))
  ##Okay Dr. Robinson, I have tried this multiple ways and even copy/pasted from my notes code that had worked.
  ##I cannot get this dang time change to run. I typed it out, I copied and pasted, I closed it and took a nap
  ## and still cannot get it to return anything but NA! I hope it works for you!!!
