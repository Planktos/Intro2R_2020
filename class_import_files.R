#2020-09-01:

#read CSV ----
#load libraries
library("tidyverse")

  install.packages("tidyverse")

  c <- read.csv(file = "Lab4_import_save/Lab4_import_save/lg_camera_class_groupings_20170113_phylo_orderd.csv", header = T, stringsAsFactors = FALSE)

#read Excel -----

  install.packages("readxl")
  library(readxl)

  e <- read_xlsx(path = "Lab4_import_save/Lab4_import_save/NameTranslator_table20140330.xlsx")

#read TXT files ----

  ##note: the order of the arguments does not matter in 'R'; for ease of reading, most folks tend to input the arguments in the same order each time
  ## this is why I always put the 'file=' or 'path=' argument first when using these functions. That order makes my brain happy, but each person is different :)

  i <- read.table(header = T, skip = 10, sep = "\t", file = "Lab4_import_save/Lab4_import_save/ISIIS_physical/ISIIS201405281105.txt", stringsAsFactors = F)

  #if you have a very large .csv or .txt file

#read netCDF files ----

  #data source (I had to make a profile to download the data)
  browseURL(url = "https://oceancolor.gsfc.nasa.gov/l3/")
  # you can play around with the time period and resolution

  ## we will go over this in class again, but I wanted you guys to have a chance to practice this a bit
  library(ncdf4)
  d <- nc_open(filename = "T20201532020182.L3m_MO_CHL_chl_ocx_9km.nc")

  #print the file's metadata to the working directory
  {
    sink('T20201532020182.L3m_MO_CHL_chl_ocx_9km.ncmetadata.txt')
    print(d)
    sink()
  }
  #get the lat and lon coordinates for each pixel in the raster file
  lon <- ncvar_get(d, "lon")
  lat <- ncvar_get(d, "lat", verbose = F)

  #read in the chlorophyll values and store them in an array
  chl_ocx.array <- ncvar_get(d, "chl_ocx") # store the data in a 2-dimensional array
  dim(chl_ocx.array) #2 dimensions are returned

  #get the 'no data' value
  fillvalue <- ncatt_get(d, "chl_ocx", "_FillValue")
  print(fillvalue)

  #close the nc file
  nc_close(d)

  #let's plot the data, but first we need to clean it up a bit
  ## set the fill values to NAs
  chl_ocx.array[chl_ocx.array == fillvalue$value] <- NA

  #transform the values so they show up better on the plot
  chl_ocx.array.log <- log(chl_ocx.array)

  library(raster)
  r <- raster(t(chl_ocx.array.log), xmn=min(lon), xmx=max(lon), ymn=min(lat), ymx=max(lat),
              crs=CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs+ towgs84=0,0,0"))
  plot(r)


  ## we will go over this in class again, but I wanted you guys to have a chance to practice this a bit
  library(ncdf4)
  d <- nc_open(filename = "A20200322020060.L3m_MO_CHL_chl_ocx_9km.nc")

  #print the file's metadata to the working directory
  {
    sink('A20200322020060.L3m_MO_CHL_chl_ocx_9km.ncmetadata.txt')
    print(d)
    sink()
  }
  #get the lat and lon coordinates for each pixel in the raster file
  lon <- ncvar_get(d, "lon")
  lat <- ncvar_get(d, "lat", verbose = F)

  #read in the chlorophyll values and store them in an array
  chl_ocx.array <- ncvar_get(d, "chl_ocx") # store the data in a 2-dimensional array
  dim(chl_ocx.array) #2 dimensions are returned

  #get the 'no data' value
  fillvalue <- ncatt_get(d, "chl_ocx", "_FillValue")
  print(fillvalue)

  #close the nc file
  nc_close(d)

  #let's plot the data, but first we need to clean it up a bit
  ## set the fill values to NAs
  chl_ocx.array[chl_ocx.array == fillvalue$value] <- NA

  #transform the values so they show up better on the plot
  chl_ocx.array.log <- log(chl_ocx.array)

  library(raster)
  r <- raster(t(chl_ocx.array.log), xmn=min(lon), xmx=max(lon), ymn=min(lat), ymx=max(lat),
              crs=CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs+ towgs84=0,0,0"))
  plot(r)