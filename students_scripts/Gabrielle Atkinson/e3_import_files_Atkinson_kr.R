#Exercise #3: Importing different types of files

#directions: provide code to import each file type in the 'e3 practice files' and 'e3 practice netCDF' files

#-1 point for not using the argument "StringsAsFactors = FALSE"

#change working directory to downloads

cruises= read.csv(file = "e3_practice_files/CRUISES.csv")

cdtrec= read.csv(file = "e3_practice_files/CTDREC.csv")

isiis201405281105= read.table(header = T,sep = "\t",
  file = "e3_practice_files/ISIIS201405281105.txt")

isiis201405281124= read.table(header = T, sep = "\t",
                              file = "e3_practice_files/ISIIS201405281124.txt")

isiis201405281215= read.table(header = T, sep = "\t",
                              file = "e3_practice_files/ISIIS201405281215.txt")

isiis201405281609= read.table(header = T, sep = "\t",
                              file = "e3_practice_files/ISIIS201405281609.txt")

ig_camera_class= read.csv(file = "e3_practice_files/lg_camera_class_groupings_20170113_phylo_orderd.csv")

library(readxl)

name_translator= read_xlsx(path = "e3_practice_files/NameTranslator_table20140330.xlsx")

transect_towtime= read_xlsx(path = "e3_practice_files/transect_towtime.xlsx")

library(ncdf4)

a= nc_open(filename = "e3_nc_files/A20200322020060.L3m_MO_CHL_chl_ocx_9km.nc")

t= nc_open(filename = "e3_nc_files/T20201532020182.L3m_MO_CHL_chl_ocx_9km.nc")

