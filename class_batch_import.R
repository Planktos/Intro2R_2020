#--------------------------------------------------------------------------
library("lubridate")
library("plyr")
library("stringr")
library("reshape2")
library("pastecs")

#load functions---

to.dec.2015 <- function(x) {
  # split in degree, minute, second
  pieces <- str_split_fixed(x, "°|'| ",3) #Can't make R split at the degree symbol
  deg <- substr(x = pieces[,1], start = 1, stop = 2)
  min <- pieces[,2]
  # extract orientation (S/N and E/W)
  orientation <- str_sub(pieces[,3], start = -1L, end = -1L)
  # remove orientation to only keep numbers
  sec <- str_replace(pieces[,3], pattern = "[NSEW]", replacement = "")
  # convert to decimal degrees
  dec <- as.numeric(deg) + as.numeric(min) / 60 + as.numeric(sec) / 3600 #replaced 'pieces' with 'deg', 'min', and 'sec'
  # orient the coordinate
  ifelse(orientation %in% c("S", "W"), -dec, dec)

  return(dec)
}


# list all the physical data files in a given directory
pfiles <- list.files("exercises/e3_batch_data/", full=TRUE, pattern = "ISIIS")

time.zone.change <- 1

#detect file encodings if needed
codepages <- setNames(iconvlist(), iconvlist())

x <- lapply(codepages, function(enc) try(read.table(pfiles[1],
                                                    fileEncoding=enc, skip=10,
                                                    header=TRUE, sep="\t"))) # you get lots of errors/warning here


# read them all
p <- adply(pfiles, 1, function(file) {

  # read the data
  d <- read.table(file, sep="\t", skip=10, header=TRUE, fileEncoding="ISO-8859-1",
                  stringsAsFactors=FALSE, quote="\"", check.names=FALSE, encoding="UTF-8",
                  na.strings="9999.99")

  # clean names
  head <- names(d)
  head <- str_replace(head, "\\(.*\\)", "")
  head <- str_trim(head)
  head <- make.names(head)
  head <- tolower(head)
  head <- str_replace(head, fixed(".."), ".")

  # assign names
  names(d) <- head

  # create a proper date + time format
  date <- scan(file, what="character", skip=1, nlines=1, quiet=TRUE)
  date <- date[2]
  mm <- str_sub(date,1,2)
  dd <- str_sub(date,4,5)
  dd <- as.numeric(dd)
  yy <- str_sub(date,7,8)

  # shift by one day when we cross midnight
  d$hour <- as.numeric(str_sub(d$time,1,2))
  d$date <- date
  d$dateTime <- str_c(d$date, d$time, sep=" ")
  d$dateTime <- as.POSIXct(strptime(d$dateTime, format="%m/%d/%y %H:%M:%OS", tz="America/New_York"))

  d$dateTime <- d$dateTime - time.zone.change * 3600

  d$date <- NULL

  # code in a transect number. Use the file name as a dummy variable for transect number. Will assign proper transect number later in the pipeline.
  d$transect <- basename(file)

  # reformat the lat and long in decimal degrees.
  names(d)[names(d)=="long"] <- "lon"
  d$lat <- to.dec.2015(d$lat)
  d$lon <- to.dec.2015(d$lon)

  d$lon <- -d$lon

  # columns that are all zero are not possible. They are actually missing data. Detect them
  totCol <- colSums(d[llply(d, class) == "numeric"])
  allZeroCols <- names(totCol)[which(totCol == 0)]
  d[,allZeroCols] <- NA # replace the content with NAs

  # rename some columns
  names(d)[names(d)=="horizontal.vel.in.water"] <- "horizontal.vel"
  names(d)[names(d)=="irrandiance"] <- "irradiance"

  # keep only interesting data
  d <- d[,c("transect", "dateTime","depth", "lat", "lon", "temp", "salinity", "pressure", "fluoro", "oxygen", "irradiance", "heading", "horizontal.vel", "vertical.vel", "pitch", "vol.imaged")]

  return(d)

}, .inform = T, .progress="text")


# remove adply crap
phy <- phy[,-1]