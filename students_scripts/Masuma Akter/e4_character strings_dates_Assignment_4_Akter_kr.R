#Exercise 4: Working with character strings and dates in 'R'

#submitted late -1 point

library(tidyverse)
getwd()
#Load the following data set
load("fish_data_Assignment_4.Rdata")

#1) extract the 'transect.id' column from the data frame
fish[1]

#2) Find the unique values of transect.id and assign those to a new object.
##Hint: the function to use is in the question!
unique(fish, incomparables = FALSE)
unique((fish$transect.id), incomparables = FALSE,nmax = NA)
#assign those to a new object
find_unique_value<-unique((fish$transect.id), incomparables = FALSE,nmax = NA)

length(unique(fish$transect.id))
  # not part of the answer to the question;
  # purpose?? -0.25 point

#3) Extract the first 5 unique, character strings from transect.id and assign those to a new object

  #not answered -1 point
  f <- find_unique_value[1:5]

#Practing with character strings ----
str_replace(string = (fish$transect.id), pattern = "\\(.*\\)", replacement = "")

#4) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.

  #not answered -1 point
  a <- str_split_fixed(find_unique_value, pattern = "-", n=3)
  a

  b <- a[,1]
  c <- a[,2]
  d <- a[,3]

#5) Recombine the three components into a single text string.
  ## Order the components so that the "D, M, S" component is first in the test string.
  ##Separate with a underscore ("_").

  #not answered -1 point
  e <- str_c(d,b,c,sep = "_")

#6) Using the object with the first 5 unique, character strings from transect.id, replace the dash ("-") with a decimal point ('.')

  #not answered -1 point
  find_unique_value<-unique(fish$transect.id)
  f <- find_unique_value[1:5]
  g <- gsub(pattern = "-",replacement = ".", x = f)
  g

#7) Using the object with the first 5 unique, character strings from transect.id, extract the first 5 values (reading left to right) and assign those values to a new object

  #not answered -1 point
  h <- str_sub(string = f, start = 1, end = 5)
  h

# Modifying Column headers ----
#8) Extract the header (i.e., column names) from the fish data frame

  #not answered -1 point
  names(fish) -> y
  y

#9) Change the case of the letters from lower- to upper-case.

  #not answered -1 point

  y <- toupper(y)

#10) Reassign these new, uppercase headers to be the column names of the fish data frame.

  #not answered -1 point

  colnames(fish) <- y
  names(fish)

#11a) What function would you use to display the FIRST 6 rows of the data frame "fish"?
head(fish,row(1:6)) #returns an error

  #correction -0.5 point
  head(fish)

#11b) What function would you use to display the LAST 6 rows of the data frame "fish"?

  #not answered -1 point
  tail(fish)

#Dates----
#12) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., Pacific) time zone.
d <- "2020-09-10"
d$dateTime <- as.POSIXct(strptime(x=d$dateTime, format= "%Y-%m-%d %H:%M:%OS",tz = "America/New_York"))

  #you are 99% there except there is no data frame 'd' (line 98). Running link 98 returns an error message "rror in d$dateTime : $ operator is invalid for atomic vectors"
  #'d' is currently an object with a single character string. Also, there is no time hr:min:sec in  'd'

  #correction -0.5 point
  d <- "2020-09-10"
  d <- as.POSIXct(strptime(x=d, format= "%Y-%m-%d",tz = "America/New_York"))
  d
