#Exercise #3: Importing different types of files

#directions: provide code to import each file type in the 'e3 practice files' and 'e3 practice netCDF' files
library("tidyverse")
a <- read.csv(file = "/Users/Prevost/Desktop/Intro to R/e3_practice_files/CRUISES.csv")

library("readxl")
install.packages(readxl)
b <- read_xlsx(path = "/Users/Prevost/Desktop/Intro to R/e3_practice_files/transect_towtime.xlsx")

c <- read.table(header = T, skip = 11, sep = "\t", file = "/Users/Prevost/Desktop/Intro to R/e3_practice_files/ISIIS201405281105.txt")
#i think R was having trouble reading the infinity signs in the table, so I skipped them

library(ncdf4)
d <- nc_open("/Users/Prevost/Desktop/Intro to R/e3_nc_files/A20200322020060.L3m_MO_CHL_chl_ocx_9km.nc")

