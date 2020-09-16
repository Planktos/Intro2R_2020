#Exercise 4: Working with character strings and dates in 'R'
#Julia Sweet
# Sept 15, 2020

# Load Libray
library(tidyverse)

#Set working directory
setwd("~/Dropbox/JuliaSweet/ULL_PhD/Coursework/Fall_2020/R For Biologists/Homework")

#Load the following data set
load("fish_data.Rdata")

#1) extract the 'transect.id' column from the data frame
transect.ids <-fish$transect.id
 #or
transect.ids2<-fish[,1]

#2) Find the unique values of transect.id and assign those to a new object.
##Hint: the function to use is in the question!
unique_transects <-unique(transect.ids)

#3) Extract the first 5 unique, character strings from transect.id and assign those to a new object
first_5_unique <-unique_transects[1:5]

#Practing with character strings ----

#4) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.
comp_1 <- str_sub(string=transect.ids, start=1, end=5)
comp_2 <- str_sub(string=transect.ids,start=7, end=8)
comp_3 <- str_sub(string=transect.ids,start=10,end=10)

  #correction -0.5 points for not using the dash as instructed in the question
  n <- str_split_fixed(string = transect.ids, pattern = "-", n = 3)
  n1 <- n[,1]
  n2 <- n[,2]
  n3 <- n[,3]

  n1; n2; n3

#5) Recombine the three components into a single text string.
## Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").

transect.ids.rearranged <-str_c(comp_3,comp_1,comp_2, sep="_")

#6) Using the object with the first 5 unique, character strings from transect.id, replace the dash ("-") with a decimal point ('.')

first_5_unique_replaced<-str_replace_all(string = first_5_unique, pattern = "-", replacement = ".")

#7) Using the object with the first 5 unique, character strings from transect.id, extract the first 5 values (reading left to right) and assign those values to a new object
first5_of_first5 <-str_sub(first_5_unique, start=1, end=5)

# Modifying Column headers ----
#8) Extract the header (i.e., column names) from the fish data frame

fish_column_names <- names(fish)

#9) Change the case of the letters from lower- to upper-case.

fish_column_names <-toupper(fish_column_names)

#10) Reassign these new, uppercase headers to be the column names of the fish data frame.

fish_column_names <- make.names(fish_column_names) #Gives names that makes R happy

#Replace headers with cleaned up version
names(fish)<-fish_column_names

#11a) What function would you use to display the FIRST 6 rows of the data frame "fish"?
head(fish)

#11b) What function would you use to display the LAST 6 rows of the data frame "fish"?
tail(fish)

#Dates----
#12) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., Pacific) time zone.
d <- "2020-09-10"
d <-as.POSIXct(strptime(x=d, format="%Y-%m-%d", tz="America/Los_Angeles"))

# Look at str(d) to make sure that it is now formatted in the correct way
str(d)

