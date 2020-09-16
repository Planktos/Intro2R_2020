#Exercise 3: Working with character strings and dates in 'R'
library(tidyverse)

#Load the following data set
load("fish_data (1).Rdata")
load("data_sets/fish_data.Rdata")

#1) extract the 'transect.id' column from the data frame
fish[,1]

#2) Find the unique values of transect.id and assign those to a new object.
uniquetransect = unique(fish[,1])
##Hint: the function to use is in the question!

#3) Extract the first 5 unique, character strings from transect.id and assign those to a new object
newlength = uniquetransect[1:5]

#Practicing with character strings ----

#4) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.

subtransect = str_split_fixed(pattern = "-", string = newlength, n = 3 )

DMS = subtransect[,3]
part2 = subtransect[,2]
OST = subtransect[,1]

#5) Recombine the three components into a single text string.
## Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").
single_string = str_c(DMS, part2, OST, sep = "_")


#6) Using the object with the first 5 unique, character strings from transect.id, replace the dash ("-") with a decimal point ('.')
gsub(pattern = "-", replacement = ".", x = newlength)


#7) Using the object with the first 5 unique, character strings from transect.id, extract the first 5 values (reading left to right) and assign those values to a new object
first5 = str_sub(string = newlength, start = 1L, end = 5L)


# Modifying Column headers ----
#8) Extract the header (i.e., column names) from the fish data frame
headers = colnames(fish)


#9) Change the case of the letters from lower- to upper-case.
toupper(headers)



#10) Reassign these new, uppercase headers to be the column names of the fish data frame.
headers = toupper(headers)

  #close but not quite -0.5 point
  colnames(fish) <- toupper(headers)


#11a) What function would you use to display the FIRST 6 rows of the data frame "fish"?
fish[1:6,] #this works but I am looking for a function; -0.25 point
  #correction
  head(fish)

#11b) What function would you use to display the LAST 6 rows of the data frame "fish"?
fish[2021:2026,] #this works but I am looking for a function; -0.25 point
  #correction -0.25 point
  tail(fish)

#Dates----
#12) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., Pacific) time zone.
d <- "2020-09-10"

as.POSIXlt(d, tz = "America/Los_Angeles") #this works but another way to consider with informing 'R' of the time format

  #correction
  y <- as.POSIXct(strptime(x = d, format = "%Y-%m-%d", tz = "America/Los_Angeles"))
