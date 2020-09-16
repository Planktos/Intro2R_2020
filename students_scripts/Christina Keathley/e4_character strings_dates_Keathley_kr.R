#Exercise 3: Working with character strings and dates in 'R'
library(tidyverse)

#Load the following data set
load("fish_data.Rdata")

#1) extract the 'transect.id' column from the data frame
fish[,1]

#2) Find the unique values of transect.id and assign those to a new object.
##Hint: the function to use is in the question!
head(fish)
T_ID=fish$transect.id
T_ID

  #correction -0.75 points
  a <- unique(fish$transect.id)

#3) Extract the first 5 unique, character strings from transect.id and assign those to a new object
abc=fish[1,1] #these five objects are contain the same values; I am looking for unique values
bcd=fish[2,1]
cde=fish[3,1]
def=fish[4,1]
efg=fish[5,1]
x=c(abc,bcd,cde,def,efg)
x

  #correction: -0.5 points
  a <- unique(fish$transect.id)
  b <- a[1:5]
  b

#Practing with character strings ----

#4) Each value of transect.id has three components, separated by a dash ('-').
## Break these 3 components apart using the dash as the separator and assign each component to a new object.
ffirst=str_sub(string=T_ID, start=1, end=5)
ssecond=str_sub(string=T_ID, start=7, end=8)
tthird=str_sub(string=T_ID, start=10, end=10)

ffirst
ssecond
tthird

##or

split=str_split_fixed(string=T_ID, pattern="-", n=3)
split
a=split[,1]
b=split[,2]
c=split[,3]

a
b
c

#5) Recombine the three components into a single text string.
## Order the components so that the "D, M, S" component is first in the test string.
##Separate with a underscore ("_").
fish$transect.id=str_c(c,b,a,sep="_")
fish$transect.id

#6) Using the object with the first 5 unique, character strings from transect.id, replace the dash ("-") with a decimal point ('.')
?gsub
x.replaced=str_replace(string=x, pattern="-", replacement=".")
x.replaced2=str_replace(string=x.replaced, pattern="-", replacement=".")
x.replaced2

##or

x.new=gsub(x, pattern="-", replacement=".")
x.new

#correction: -0.25 points
#where have you defined object 'x'? The function you use and the syntax is correct, but the object 'x' is not defined and so 'R' throws an error.

#7) Using the object with the first 5 unique, character strings from transect.id, extract the first 5 values (reading left to right) and assign those values to a new object
x.sep=str_sub(x, start=1, end=5)
x.sep

#correction: -0.25 points
#where have you defined object 'x'? The function you use and the syntax is correct, but the object 'x' is not defined and so 'R' throws an error.


# Modifying Column headers ----
#8) Extract the header (i.e., column names) from the fish data frame
colnames(fish)
headfish=colnames(fish)


#9) Change the case of the letters from lower- to upper-case.
headfish=toupper(headfish)
headfish

#10) Reassign these new, uppercase headers to be the column names of the fish data frame.
names(fish)=headfish
fish

#11a) What function would you use to display the FIRST 6 rows of the data frame "fish"?
head(fish)

#11b) What function would you use to display the LAST 6 rows of the data frame "fish"?
tail(fish)

  Z#Dates----
#12) Convert the following date to a 'R' date-time object. Set it to be in the West Coast (i.e., Pacific) time zone.
d <- "2020-09-10"
d=as.POSIXct(strptime(x=d, format= "%Y-%m-%d", tz="America/Los_Angeles"))
  str(d2$dateTime)
d
