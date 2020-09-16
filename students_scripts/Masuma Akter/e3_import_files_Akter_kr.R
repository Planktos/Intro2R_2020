#Exercise #3: Importing different types of files

#directions: provide code to import each file type in the 'e3 practice files' and 'e3 practice netCDF' files
getwd()
#read csv, txt and excel files from e3 practise file ----

cruises <- read.csv(file="e3_practice_files/CRUISES.csv",header = TRUE,stringsAsFactors = FALSE)

Ctdrec<-read.csv(file="e3_practice_files/CTDREC.csv", header= TRUE, stringsAsFactors = FALSE)

ISIIS_txt <- read.table(header = T, skip = 10, sep = "\t","e3_practice_files/ISIIS201405281105.txt", stringsAsFactors = FALSE)

install.packages("readxl")
library(readxl)
Nametranslator <- read_xlsx(file="e3_practice_files/NameTranslator_table20140330.xlsx")


#'e3 practice netCDF' files
getwd()
library(ncdf4)

NC_data <- nc_open(file="e3_nc_files/A20200322020060.L3m_MO_CHL_chl_ocx_9km.nc")
