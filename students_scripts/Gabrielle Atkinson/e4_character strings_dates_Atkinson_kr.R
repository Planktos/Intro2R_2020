#Exercise 3: Working with character strings and dates in 'R'
library(tidyverse)

#Load the following data set
load("data_sets/fish_data.Rdata")

#1) extract the 'transect.id' column from the data frame

transect.id= fish[,1]

#2) Find the unique values of transect.id and assign those to a new object.
##Hint: the function to use is in the question!

unique.id= unique(transect.id)

#3) Extract the first 5 unique, character strings from transect.id and assign those to a new object

unique.id.5= unique(transect.id)[1:5]


#Practing with character strings ----

#4) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.

transect.id.3= str_split_fixed(string = transect.id, pattern = "-", n= 3)
c1= transect.id.3[,1]
c2= transect.id.3[,2]
c3= transect.id.3[,3]

#5) Recombine the three components into a single text string.
## Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").

paste(c3,c1,c2, sep = "_")

transect.id.recombine= str_c() #this line of code returns empty vector because 'str_c' function not used on any existing object

#6) Using the object with the first 5 unique, character strings from transect.id, replace the dash ("-") with a decimal point ('.')

unique.id.5..= gsub(pattern = "-", replacement = ".", x= unique.id.5)

#7) Using the object with the first 5 unique, character strings from transect.id, extract the first 5 values (reading left to right) and assign those values to a new object

unique.id.5.5= str_sub(string = unique.id.5, start = 1, end = 5)

# Modifying Column headers ----
#8) Extract the header (i.e., column names) from the fish data frame

header= names(fish)

#9) Change the case of the letters from lower- to upper-case.

new.head= toupper(header)

#10) Reassign these new, uppercase headers to be the column names of the fish data frame.

colnames(fish)= new.head

#11a) What function would you use to display the FIRST 6 rows of the data frame "fish"?

head(fish[1:6]) #this works but is redundant because you don't need both the 'head' funtion AND the [1:6]
#correction
head(fish)


#11b) What function would you use to display the LAST 6 rows of the data frame "fish"?
  tail(fish[1:6])
  #this works but is redundant because you don't need both the 'tail' funtion AND the [1:6]
  #correction
  tail(fish)

#Dates----
#12) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., Pacific) time zone.
d <- "2020-09-10 2:00:00"

t= as.POSIXct(strptime(x = d, format = "%Y-%m-%d %H:%M:%OS", tz="America/Los_Angeles"))

