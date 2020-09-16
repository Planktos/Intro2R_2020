#Exercise #3: Importing different types of files
#Julia Sweet
#9/8/2020

#directions: provide code to import each file type in the 'e3 practice files' and 'e3 practice netCDF' files

# First set my working directory to the folder where I have saved these files----
# For me this is /Users/juliasweet/Dropbox/JuliaSweet/ULL_PhD/Coursework/Fall_2020/R For Biologists/Homework

setwd("~/Dropbox/JuliaSweet/ULL_PhD/Coursework/Fall_2020/R For Biologists/Homework")

# Install necessary packages----
#install.packages("tidyverse")
#install.packages("readxl")
#install.package ("ncdf4")

# Load necessary libraries----
library(tidyverse)
library(readxl)
library(ncdf4)

# Open and import csv files----
# read CSV file in, need to assign it to an object, HIT TAB to navigate in folders
# header=TRUE, stringsAsFactors = FALSE)

a <-read.csv(file ="e3_practice_files/CRUISES.csv", header = TRUE, stringsAsFactors = FALSE )
b <-read.csv(file = "e3_practice_files/CTDREC.csv", header = TRUE, stringsAsFactors = FALSE )
c <- read.csv(file = "e3_practice_files/lg_camera_class_groupings_20170113_phylo_orderd.csv", header = TRUE, stringsAsFactors = FALSE)

# You can look at the structure, head and tail of these files by using the following:
head(c)
tail(c)
structure(c)

# Open and import excel files----
d <- read_xlsx (path = "e3_practice_files/NameTranslator_table20140330.xlsx")
e <- e <- read_xlsx (path = "e3_practice_files/transect_towtime.xlsx")

# Open and import txt files----
# Open file first with BBedit to have a look, for this one we can see that the information we are after does not start until the 11th line so that helps with telling R to skip lines on the import, we can also see what kinds of seperators are used
f <-read.table(file = "e3_practice_files/ISIIS201405281105.txt", sep = "\t", skip =10)
g <-read.table(file = "e3_practice_files/ISIIS201405281215.txt", sep = "\t", skip =10)
h <-read.table(file = "e3_practice_files/ISIIS201405281609.txt", sep = "\t", skip =10)

# This file caused some issued with importing, I kept getting the error "Error in scan(file = file, what = what, sep = sep, quote = quote, dec = dec,  : line 2 did not have 23 elements" even though I stipulated that I wanted the first 10 lines skipped. By adding fill=TRUE I was able to get the import to run

i <-read.table(file = "e3_practice_files/ISIIS201405281124.txt", sep = "\t", skip =10, fill = TRUE)

# Open and import nc files----
j <-nc_open(filename = "e3_nc_files/A20200322020060.L3m_MO_CHL_chl_ocx_9km.nc")
k <-nc_open(filename = "e3_nc_files/T20201532020182.L3m_MO_CHL_chl_ocx_9km.nc")

#Print the file's metadata to the working directory----
# I had to remove the parenthesis that Dr Robinson used in her code to get this to work.

sink ('e3_nc_files/A20200322020060.L3m_MO_CHL_chl_ocx_9km.ncmetadata.txt')
print(j)
sink()

sink ('e3_nc_files/T20201532020182.L3m_MO_CHL_chl_ocx_9km.ncmetadata.txt')
print(k)
sink()

#Get the lat and long coordinates for each pixel----

lon_j<-ncvar_get(j,"lon")
lat_j<-ncvar_get(j,"lat", verbose = F)

lon_k<-ncvar_get(k,"lon")
lat_k<-ncvar_get(k,"lat", verbose = F)

#Read in the Chla data----
#(From Metadata you know the value you want it chlaocx)

j_chla_ocx.array <-ncvar_get(j,"chl_ocx") # Store data ub a 2D array
dim(j_chla_ocx.array) #2Dimensions are returned

k_chla_ocx.array <-ncvar_get(k,"chl_ocx") # Store data ub a 2D array
dim(k_chla_ocx.array) #2Dimensions are returned
