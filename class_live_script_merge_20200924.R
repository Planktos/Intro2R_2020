#warm-up
#practing if_else statements

y <- seq(2,120,4)
y
x <- seq(0,600,5)
x

length(x) <- length(y)

library(tidyverse)
ggplot() + geom_point(aes(x = x, y = y))

#work x vector data to set breaks for every 25

m <- max(x)
m #145 in the case

if(m > 100){

  breaks <- seq(from = 5, to = m, by = 25)

} else if(m <= 80){

  breaks <- seq(from = 0, to = m, by = 20)

} else {}


#adding custom breaks to the plot
ggplot() + geom_point(aes(x = x, y = y)) +
  scale_x_continuous(name = "eggs", breaks = breaks)

### merging data sets ----

load("fish_data.Rdata")

#subset the data to make a practice data set that is a little easier to work with
f <- fish[fish$transect.id == "OST14-1E-D" & fish$parcel.type == "patch",]
unique(f$transect.id) #check to make sure the subset was applied correctly

#split apart and then put back together (merge or join)

f1 <- f[,c("transect.id","parcel.id", "parcel.length.m")]

f2 <- f[,c("transect.id", "parcel.id", "parcel.start.time")]

#put the data frames f1 and f2 back togethere

f.merge <- merge(x = f1, y = f2, by = "parcel.id", all = T)
head(f.merge)

#transect.id is repeated 2x in the output; we can clean this up by making it part of the key
f.merge2 <- merge(x = f1, y = f2, by = c("transect.id","parcel.id"), all = T)
head(f.merge2)

#can you dictate the order of the columns returned using the order in the key (ie. by) argument?
f.merge3 <- merge(x = f1, y = f2, by = c("parcel.id","transect.id"), all = T)
head(f.merge3)
#the answer is 'yes'!

##using the 'join' function
library(dplyr)
browseURL("https://dplyr.tidyverse.org/reference/join.html")

inner_join(x = f1, y = f2, "parcel.id")

d <- fish[fish$transect.id=="OST14-1E-D" | fish$transect.id=="OST14-1W-S" ,]
d <- d[d$parcel.type=="patch",]

unique(d$transect.id)
unique(d$parcel.type)

head(f1)