#Exercise #3: Importing different types of files

#directions: provide code to import each file type in the 'e3 practice files' and 'e3 practice netCDF' files
setwd("C:/Users/Blaine/Documents/e3_practice_files/")

library("tidyverse")
library("ncdf4")
library("readxl")

#CSV Documents
c=read.csv(file = "~/lg_camera_class_groupings_20170113_phylo_orderd.csv", header = TRUE, stringsAsFactors = FALSE)
print(c)

#Reading Excel
e = read_xlsx(path = "NameTranslator_table20140330.xlsx")
print(e)

#Text Document

i = read.table(file ="ISIIS201405281105.txt", header = TRUE, sep = "\t", skip = 10, stringsAsFactors = FALSE)
print(i)

##missing netCDF file -2 points








