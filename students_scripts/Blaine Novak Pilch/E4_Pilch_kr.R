#Exercise 3: Working with character strings and dates in 'R'
library(tidyverse)

#Load the following data set
load("C:/Users/Blaine/Downloads/fish_data.Rdata")

#1) extract the 'transect.id' column from the data frame
TID = fish[,1]


#2) Find the unique values of transect.id and assign those to a new object.
##Hint: the function to use is in the question!
TIDII=unique(TID)


#3) Extract the first 5 unique, character strings from transect.id and assign those to a new object
TIDIII=TIDII[1:5]


#Practing with character strings ----

#4) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.
SEP=str_split_fixed(TID, pattern = "-", n=3)
OST = SEP[,1]
NL = SEP[,2]
L = SEP[,3]

#5) Recombine the three components into a single text string.
## Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").

R3=str_c(L, NL, OST, sep = "_")

#6) Using the object with the first 5 unique, character strings from transect.id, replace the dash ("-") with a decimal point ('.')
SUBTID=gsub(TIDIII, pattern = "-", replacement = ".")

#7) Using the object with the first 5 unique, character strings from transect.id, extract the first 5 values (reading left to right) and assign those values to a new object
SUBTIDII = str_sub(TIDIII,start = 1, end = 5)


# Modifying Column headers ----
#8) Extract the header (i.e., column names) from the fish data frame
fish_header = names(fish)


#9) Change the case of the letters from lower- to upper-case.
fish_header = toupper(fish_header)


#10) Reassign these new, uppercase headers to be the column names of the fish data frame.
names(fish)=fish_header


#11a) What function would you use to display the FIRST 6 rows of the data frame "fish"?
head(fish)

#11b) What function would you use to display the LAST 6 rows of the data frame "fish"?
tail(fish)

#Dates----
#12) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., Pacific) time zone.
d <- "2020-09-10"

t= strptime(x = d, format = "%Y-%m-%d", tz="America/Los_Angeles" )
t = as.POSIXct(t)
