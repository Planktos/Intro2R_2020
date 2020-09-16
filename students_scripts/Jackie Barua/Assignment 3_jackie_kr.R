##Missing netCDF files to open -2 points

#assignment 3

#Exercise #3: Importing different types of files

#directions: provide code to import each file type in the 'e3 practice files' and 'e3 practice netCDF' files

read.csv(file = "assignment file A/e3_practice_files/CTDREC.csv", header = T, stringsAsFactors = FALSE)
read_xlsx(path = "assignment file A/e3_practice_files/NameTranslator_table20140330.xlsx")
read.table(header = T, skip = 10, sep = "\t", file = "assignment file A/e3_practice_files/ISIIS201405281609.txt", stringsAsFactors = F)

read.csv(file = "SHRREC.csv", header = T, stringsAsFactors = FALSE)
read.csv(file = "GLFREC.csv", header = T, stringsAsFactors = FALSE)
read_csv(file= "VESSELS.csv", header = T, stringAsFactors= FALSE)
read.csv(file = "GLFREC.csv", header = T, stringsAsFactors = FALSE)
read.csv(file = "CTDCASTREC.csv", header = T, stringsAsFactors = FALSE)
read.csv(file = "CTDCASTREC.csv", header = T, stringsAsFactors = FALSE)

read_xlsx(path = "transect_towtime.xlsx")
read.table(header = T, skip = 10, sep = "\t", file = "ISIIS201405281609.txt", stringsAsFactors = F)
read.table(header = T, skip = 10, sep = "\t", file = "ISIIS201405281215.txt", stringsAsFactors = F)
read.table(header = T, skip = 10, sep = "\t", file = "ISIIS201405281124.txt", stringsAsFactors = F)
read.table(header = T, skip = 10, sep = "\t", file = "ISIIS201405281105.txt", stringsAsFactors = F)

read_xlsx(path = "assignment file A/e3_practice_files/NameTranslator_table20140330.xlsx")
read.table(header = T, skip = 10, sep = "\t", file = "assignment file A/e3_practice_files/ISIIS201405281609.txt", stringsAsFactors = F)

install.packages("ncdf4")
library(ncdf4)
