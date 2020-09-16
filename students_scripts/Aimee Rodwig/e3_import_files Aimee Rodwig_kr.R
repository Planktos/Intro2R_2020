#Exercise #3: Importing different types of files

#directions: provide code to import each file type in the 'e3 practice files' and 'e3 practice netCDF' files

#set wd to e3_practice_files through session -> choose
install.packages("tidyverse")
library(tidyverse)

read.table(header = T, skip = 10, sep = "\t", file = "ISIIS201405281609.txt")

read.csv("lg_camera_class_groupings_20170113_phylo_orderd.csv")

readxl::read_excel("NameTranslator_table20140330.xlsx")

#set new wd to e3_nc_files
install.packages("ncdf4")
library(ncdf4)

nc_open(filename = "A20200322020060.L3m_MO_CHL_chl_ocx_9km.nc")
