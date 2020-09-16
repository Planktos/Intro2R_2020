#Great job! +2 Extra credit points

#Exercise #3: Importing different types of files

#directions: provide code to import each file type in the 'e3 practice files' and 'e3 practice netCDF' files



#read CSV ----

install.packages("tidyverse")
library("tidyverse")

a <- read.csv(file = "Lab4_import_save/Lab4_import_save/lg_camera_class_groupings_20170113_phylo_orderd.csv", header = T, stringsAsFactors = FALSE)

#read Excel -----

install.packages("readxl")
library(readxl)

b <- read_xlsx(path = "Lab4_import_save/Lab4_import_save/NameTranslator_table20140330.xlsx")

#read TXT files ----

k <- read.table(header = T, skip = 10, sep = "\t", file = "Lab4_import_save/Lab4_import_save/ISIIS_physical/ISIIS201405281105.txt", stringsAsFactors = F)


#read netCDF files ----

install.packages("ncdf4")
library(ncdf4)
d <- nc_open(filename = "T20201532020182.L3m_MO_CHL_chl_ocx_9km.nc")

#print the file's metadata to the working directory

  sink('T20201532020182.L3m_MO_CHL_chl_ocx_9km.ncmetadata.txt')
  print(d)
  sink()

#get the lat and lon coordinates for each pixel in the raster file
lon <- ncvar_get(d, "lon")
lat <- ncvar_get(d, "lat", verbose = F)

#read in the chlorophyll values and store them in an array
chl_ocx.array <- ncvar_get(d, "chl_ocx")
dim(chl_ocx.array)

#get the 'no data' value
fillvalue <- ncatt_get(d, "chl_ocx", "_FillValue")
print(fillvalue)

#close the nc file
nc_close(d)

#plot data
## set the fill values to NAs
chl_ocx.array[chl_ocx.array == fillvalue$value] <- NA

#transform the values
chl_ocx.array.log <- log(chl_ocx.array)

library(raster)
r <- raster(t(chl_ocx.array.log), xmn=min(lon), xmx=max(lon), ymn=min(lat), ymx=max(lat),
            crs=CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs+ towgs84=0,0,0"))
plot(r)
