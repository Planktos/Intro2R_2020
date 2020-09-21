# Exam #1: Intro to "R" Programming
# Sept 2020

# All questions are worth 1 point each unless otherwise specified.

# You have 36h to take the exam. The exam will be due Friday, Sept. 18 at 9pm.

#----------------------------------------------------------------------------------

# Creating objects & using proper 'R' syntax ----

#1) please provide the commands that will show the data type of the following objects:

    x <- c(FALSE,TRUE,FALSE)
    class(x)
    typeof(x)

#2) Demonstrate the two ways you can assign a sequence of 10 numbers to a vector object. The sequence should start at 5.

    a2=c(5:14)
    b2=c(5,6,7,8,9,10,11,12,13,14)
    a2
    b2

#3) Find the number of values assigned to one of the vector objects created in Question 2.

    length(a2)
    length(b2)

#4) Create 2 objects and assign each 5 values. (3 POINTS)

    a3=c(1:5)
    b3=c(2:6)

  #a) Perform inner and outer multiplication on these two objects

      #Inner:
      c3=a3%*%b3
      c3
      #Outer
      d3=a3%o%b3
      d3

  #b) Find the mean and standard deviation of each object

      e3=mean(a2)
      e3
      f3=mean(b3)
      f3
      g3=mean(c3)
      g3
      h3=mean(d3)
      h3

      i3=sd(a3)
      j3=sd(b3)
      k3=sd(c3, na.rm=TRUE)
         ##It's important to note that R returns standard deviations for objects
          #with a length of 1 as "NA"
      l3=sd(d3)

#5)	Create four objects, each with a different data type: character, integer, double-numeric, and factor.
    ## The integer should have at least 3 values. The factor should have at least two levels.

    a_character=c("puppies","kittens","tadpoles")
    typeof(a_character)

    b_integer=c(2L,3L,4L)
    typeof(b_integer)

    c_dnumeric=c(2,3,4)
    typeof(c_dnumeric)

    factor.data=c("a","b","c","d","e",1:4,1,1,1)
    d_factor=factor(factor.data)
    d_factor
    class(d_factor)

#6) Using indexing, extract the 1st and 7th values from a sequence your created in Question 2. (3 POINTS)

   b2[1]
   b2[7]

  # a) Assign the 1st and 7th values a new object.

      a6=b2[1]
      b6=b2[7]

  # b) Apply the "less-than"; "greater-than"; "greater-than-equal to" operators.

      a6<b6
      b6>a6
      b6>=a6

  # c) Complete the following operations where:

      # z = 1st value (see 6c);
      z=a6
      # y = 7th value (see 6c);
      y=b6
      # x = 5
      x=5
      # (z plus x) * (z + y))/2
      (z+x)*(z+y)/2
      # 10 * (x - y)
      10*(x-y)

# 7)	In comment, please tell me what is the “R” operator for ‘not’ (or negation)?

      ##The operator for not is "!", such as "!=" is "not equal"
      3=4 #Error, invalid
      3!=4 #TRUE

# 8)	Using the two objects you created in Question 4, apply the following operators: %%, ^, %/%. (2 POINTS)
    # In a comment, please explain what each operator is doing.

      a3%%b3
      #R states that this is "a3 mod b3"- I believe it is returning a remainder after
        #dividing a3 by b3

      a3^b3
      #It is raising the values of a3 by their respective values in b3

      a3%/%b3
      #This is the same as saing "a3 divided by b3", and then rounding the results down to an integer

# 9)	Create an object with a left-to-right assignment operator.

      rtol.word="pudding"
      rtol = str_sub(string=rtol.word, start=4,end=8)
      rtol

      #correction: -1 point
      rtol.word ->"pudding"


# 10)	Create 3 objects that each have a number assigned to them.
    ## The code for all three objects must exists a single line in the script.
    ## Print the values of those three objects.

      threeobjects=c((one=1),(two=2),(three=3))
      print(one)
      print(two)
      print(three)
      print(threeobjects)

      #NOTE: your code is technically correct but I was looking for was:
      one; two; three

# 11) In a series of comments and code, describe and show examples of the special values Inf, -Inf, NaN, and NA.

      big=c(1+Inf)
      broken=(3/0)
      broken
      big
      is.finite(big)
      is.finite(broken)
        #Inotanumbernf stands for infinity, and is returned for very very large numbers, or numbers divided by 0
        #In R, large=the largest number a computer can store

      small=(1-Inf)
      small
      is.finite(small)
        #-Inf is used for very very small numbers. ("Negative infinity")

      notanumber=(0/0)

      is.nan(notanumber)
        #NaN stands for "Not a Number" and is returned when R does not have a numerical value

      nas=c(1:3)
      nas[4]
        #NA stands for "not applicable" and means there is lacking data
        #In the above example, I assigned a vector with three numbers and asked for the fourth
        #Because the fourth does not exist, it returns NA

# 12) Create a die with six sides and sample it with and without replacement.
    ## What is the difference between the two methods?

      die=c(1:6)
      sample(x=die, size=6,replace = T)
      sample(x=die, size=6, replace = F)
      #If replace is set to T, then R will not return the same value if asked to sample multiple times.
      #If replace is set to F, the same number has an euqal chance of being returned again if multiple
          #selections are requested

# Creating data storage structures ------

# 13)	Create an array with 6 rows, 3 columns, and 2 sheets (or levels).

    aray=array(data = 1:36, dim = c(6,3,2))
    aray

# 14)	Create a matrix with 10 rows and 4 columns.

    square=matrix(data=1:40,nrow=10,ncol=4)
    square

# 15)	In a comment, describe the difference between the two data structures.

    #Matrix has rows and columns (You could think of it like books on a shelf)
    #Array has rows and columns plus an additional level of organization (books on a shelves, multiple shelves
        #to choose from)

# 16) Using indexing, extract the 2nd, 6th, and 9th values from the 3rd column of the matrix your created in Question 14.

    square[2,3]
    square[6,3]
    square[9,3]

# 17)	Create an object that extracts the second value from the second column in the second level (or sheet) in your array.

    aisle=aray[,2,2]
    aisle
    aray

# 18) Create a data frame object with 5 rows and 3 columns. Give the columns the names of your three favorite foods.

    dff=data.frame("pasta"=(1:5),"samosa"=(6:10),"pizza"=(11:15))
    dff

# 19) Assign the formula for a linear regression to a new object using the following values: slope = 2, y-intercept = 0.5

    mathy=as.formula(y~2*x+0.5)


# Working with data  --------
  # Use the data frame “test1_data.Rdata” into RStudio console for the following questions:

# 20) Print the structure of the data frame. Insert a comment that describes the five different data types are present.

    #My R gives me a fatal error if I attempt to open any of the files you gave us- perhaps corrupted?
    #I tried redownloading the zip file, R, and RStudio, but that didn't work either. I also tried loading them in a blank script.
    #I looked into it (apparently it's a common problem?) and installed miceadds so that I could load the Rdata files via script
    #Instead of through window prompts. I hope that's ok.

install.packages(miceadds)
library(miceadds)
load.Rdata("test1_data_2020/test1_data.Rdata", "d")

str(d)
    #1. Character- a string of letters
    #2. integer- a number, typically denoted in the script with "L"
    #3. Factor- data sorted into levels
    #4. num- number, not denoted by L
    #5. POSIXct- this is a date and time format recognized by R

# 21) Show the the FIRST 6 rows of the data frame "d"?
head(d)

# 22)	Find the number of rows in the data set.
nrow(d)

# 23) Find the number of columns in the data set.
ncol(d)

# 24)	Change the ‘tow’ field from a character to a factor data type.
str(d$tow)
  #According to the above line, it is already a factor type...

# 25)	Change the ‘haul’ field from a numeric to an integer data type.
str(d$haul)
  #Mine also already shows d$haul as an integer...

# 26)	Remove the “sw.density” column from the data frame.
dnew=d[-c(18)] #clever use of syntax: +0.25 points
dnew
  #or consider
  d$sw.density <- NULL

# 27)	Print the data type of only the ‘transect.id’ column.
typeof(df$transect.id)
  #correcton: -0.5 points
  #there is no 'df' data frame object and so running this command returns an error
  typeof(d$transect.id)

#Working with character strings -----
# Use the data frame “test1_data.Rdata” into RStudio console for the following questions:
library(stringr)

#30) Find the unique values of transect.id and assign those to a new object.

    unique(d$transect.id)

#31) Extract the last 10 unique, character strings from transect.id and assign those strings to a new object

    d$transect.id
    uni_id=unique(d$transect.id)[32:41]

#32) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.

    uni_ID=str_split_fixed(string=uni_id,pattern="-",n=4)
    uni_ID

    OST=uni_ID[,1]
    OST
    spat=uni_ID[,2]
    spat
    numlet=uni_ID[,3]
    numlet
    final=uni_ID[,4]
    final

#33) Recombine the three components into a single text string.
##Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").

    uni_new=str_c(final,numlet,OST,spat, sep="_")
    uni_new

#34) Using the first 5 unique transect.id values from transect.id, replace the dash ("-") with a underscore ('_')

    uni5=unique(d$transect.id)[1:5]
    uni5n=str_replace(string=uni5, pattern="-", replacement="_")
    uni5n=str_replace(string=uni5n, pattern="-", replacement="_")
    uni5n=str_replace(string=uni5n, pattern="-", replacement="_")
    uni5n=str_replace(string=uni5n, pattern="-", replacement="_")
    uni5n

#35) Using the first 5 unique transect.id values, extract the first 5 characters (reading left to right) from the string
    ## and assign those values to a new object

    unniext=str_sub(string = uni5n,start = 1,end = 5)
    unniext

#Importing data stored in different file types (e.g. .csv, .txt. , .xlsx) into 'R' ----

#36) Import the following files into 'R' and assign each data set its own unique object.
  #These data sets were shared with you in an accompanying zip file.

  #"aurelia_15minCell_statareas.Rdata"       "aurelia_15minCell_statareas.txt"         "Aurelia_SEAMAP_2012-2018_30minCell.xlsx"
  #"ENVREC.csv"                              "OST14_1E_d5_frames.csv"


library(tidyverse)
library(readxl)

load.Rdata(filename = "test1_data_2020/aurelia_15mincell_statareas.Rdata", "a")
a

aurelitxt=read.table(file = "test1_data_2020/aurelia_15minCell_statareas.txt",header = T,sep = ",")
head(aurelitxt)
colnames(aurelitxt)

excel=read_xlsx(path="test1_data_2020/Aurelia_SEAMAP_2012-2018_30minCell.xlsx")
excel

envreccsv=read.csv(file="test1_data_2020/ENVREC.csv")
envreccsv

framescsv=read.csv(file="test1_data_2020/OST14_1E_d5_frames.csv")
framescsv

# correction: -0.25 point
  # the first two lines needed to be skipped
  framescsv=read.csv(file="test1_data_2020/OST14_1E_d5_frames.csv", skip=2)
  head(framescsv)

#Dates----
#37) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., East Coast) time zone.
t <- "9/17/2020 12:05:32"

t=as.POSIXct(strptime(x=t, format= "%m/%d/%Y %H:%M:%OS", tz="America/Los_Angeles"))
str(t)
t
