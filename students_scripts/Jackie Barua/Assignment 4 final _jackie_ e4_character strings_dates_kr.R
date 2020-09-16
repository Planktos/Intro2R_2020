#Exercise 3: Working with character strings and dates in 'R'
library(tidyverse)

#Load the following data set
load("data_sets/fish_data.Rdata")
load("assignment 4 fish_data.Rdata")
get(load("assignment 4 fish_data.Rdata"))
a<- get(load("assignment 4 fish_data.Rdata"))
a

#1) extract the 'transect.id' column from the data frame

a$transect.id

#2) Find the unique values of transect.id and assign those to a new object.
##Hint: the function to use is in the question!
unique(a$transect.id)
b= unique(a$transect.id)
b

#3) Extract the first 5 unique, character strings from transect.id and assign those to a new object

#Practing with character strings ----
b[1:5]
f<- b[1:5]
f



#4) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.


g<- a%>%
  separate(transect.id,c ("col1","col2", "col3"), "-")

g



#5) Recombine the three components into a single text string.
## Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").

paste0(g$col3,"-", g$col2,"-",g$col1)
g$newcol<- paste0(g$col3,"-", g$col2,"-",g$col1)
g

#6) Using the object with the first 5 unique, character strings from transect.id, replace the dash ("-") with a decimal point ('.')

f
h<-str_replace_all(f,"-",".")
h


#7) Using the object with the first 5 unique, character strings from transect.id, extract the first 5 values (reading left to right) and assign those values to a new object

substr(a$transect.id, 1,5)
j<-substr(a$transect.id, 1,5)
j

# Modifying Column headers ----
#8) Extract the header (i.e., column names) from the fish data frame
a
colnames(a)


#9) Change the case of the letters from lower- to upper-case.

upperCase<- toupper(colnames(a))
upperCase


#10) Reassign these new, uppercase headers to be the column names of the fish data frame.

colnames(a)<- upperCase
colnames(a)

#11a) What function would you use to display the FIRST 6 rows of the data frame "fish"?
head(a,6)

#11b) What function would you use to display the LAST 6 rows of the data frame "fish"?

tail(a,6)

#Dates----
#12) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., Pacific) time zone.
d <- "2020-09-10"

pac_time_zone<- as.POSIXct(d,tz="US/Pacific")
pac_time_zone

#suggest using the function 'strptime' with 'as.POSIXct' to specify the time format for 'R'
