#Exercise 3: Working with character strings and dates in 'R'
library(tidyverse)

#Load the following data set
load("data_sets/fish_data.Rdata")

#1) extract the 'transect.id' column from the data frame
d <- fish[,1]

#2) Find the unique values of transect.id and assign those to a new object.
##Hint: the function to use is in the question!
a <- unique(fish[,1])
a
#3) Extract the first 5 unique, character strings from transect.id and assign those to a new object
b <- a[1:5]
b
#Practing with character strings ----

#4) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.
c <- str_split_fixed(string = d, pattern = "-", n = 3)
library(stringr)
c
z <- c[,1]
y <- c[,2]
w <- c[,3]

#5) Recombine the three components into a single text string.
## Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").
paste(w, z, y, sep = "_") -> g
g

#6) Using the object with the first 5 unique, character strings from transect.id, replace the dash ("-") with a decimal point ('.')
b
f <- gsub(x = b, pattern = "-", replacement = ".")
f
#7) Using the object with the first 5 unique, character strings from transect.id, extract the first 5 values (reading left to right) and assign those values to a new object
b
b[1:5] -> v
v

# Modifying Column headers ----
#8) Extract the header (i.e., column names) from the fish data frame
n <- names(fish)
n

#9) Change the case of the letters from lower- to upper-case.
n <- toupper(n)
n

#10) Reassign these new, uppercase headers to be the column names of the fish data frame.
colnames(fish) <- n
fish

#11a) What function would you use to display the FIRST 6 rows of the data frame "fish"?
head(fish[1:6]) #technically not wrong, but redundant
#correction
head(fish)

#11b) What function would you use to display the LAST 6 rows of the data frame "fish"?
tail(fish[1:6])#technically not wrong, but redundant
tail(fish)

#Dates----
#12) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., Pacific) time zone.
time <- "2020-09-10 1:55:30"
timeP <- as.POSIXct(strptime(x=time, format= "%Y-%m-%d %H:%M:%OS",
                                  tz = "America/Los_Angeles"))
timeP
