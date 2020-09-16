#Exercise #3: Importing different types of files
#directions: provide code to import each file type in the 'e3 practice files' and 'e3 practice netCDF' files

#Making sure that all libraries are correctly loaded----
library(tidyverse)
library(ncdf4)
library(raster)
library(readxl)

#Ensuring working directory is correctly loaded and seeing how many files to load in as objects----
setwd("/Users/chris/Desktop/Fall 2020/Intro to R/Homework 3 files")
getwd()
list.files()
list.files(recursive=T)
  ##Working directory is set as "C:\Users\chris\Desktop\Fall 2020\Intro to R\Homework 3 files' which contains
    ##both example folders

files=matrix(data=c(2,3,5,2), ncol=4,nrow=1,dimnames=list(c("num_files"),c("nc","csv","txt","xlsx")))
files
  ##txt file ""e3_nc_files/e3_nc_files/T20201532020182.L3m_MO_CHL_chl_ocx_9km.ncmetadata.txt" is not a table, will
    ##not be loaded as object.

#CSV files----
Cruises.csv_1=read.csv(file="e3_practice_files/e3_practice_files/CRUISES.csv", header=T, stringsAsFactors = F)
Cruises.csv_1

Ctdrec.csv_2=read.csv(file="e3_practice_files/e3_practice_files/CTDREC.csv", header=T, stringsAsFactors = F)
Ctdrec.csv_2

Phylo.csv_3=read.csv(file="e3_practice_files/e3_practice_files/lg_camera_class_groupings_20170113_phylo_orderd.csv",
                     header=T, stringsAsFactors = F)
Phylo.csv_3

#XLSX files----
NameTranslator.xlsx_4=read_xlsx("e3_practice_files/e3_practice_files/NameTranslator_table20140330.xlsx")
NameTranslator.xlsx_4
head(NameTranslator.xlsx_4)

TowTime.xlsx_5=read_xlsx("e3_practice_files/e3_practice_files/transect_towtime.xlsx")
TowTime.xlsx_5
head(TowTime.xlsx_5)

#TXT filse----
I609txt_6=read.table(file="e3_practice_files/e3_practice_files/ISIIS201405281609.txt",
                          header=T, sep="\t", skip=10, stringsAsFactors = T)
head(I609txt_6)

I215txt_7=read.table(file="e3_practice_files/e3_practice_files/ISIIS201405281215.txt",
                     header=T, sep="\t", skip=10, stringsAsFactors = T)
head(I215txt_7)

I124txt_8=read.table(file="e3_practice_files/e3_practice_files/ISIIS201405281124.txt",
                     header=T, sep="\t", skip=10, stringsAsFactors = T, fill=T)
head(I124txt_8)

I105txt_9=read.table(file="e3_practice_files/e3_practice_files/ISIIS201405281105.txt",
                     header=T, sep="\t", skip=10, stringsAsFactors = T)
head(I105txt_9)

#NC files----
A60.nc_10=nc_open(filename="e3_nc_files/e3_nc_files/A20200322020060.L3m_MO_CHL_chl_ocx_9km.nc")
A60.nc_10

T20.nc_11=nc_open(filename="e3_nc_files/e3_nc_files/T20201532020182.L3m_MO_CHL_chl_ocx_9km.nc")
T20.nc_11
