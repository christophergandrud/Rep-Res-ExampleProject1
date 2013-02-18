#############
# Download and clean Pemstein (2010) Unified Democracy Score Data
# Christopher Gandrud
# Updated 17 February 2013 
# Data downloaded from http://www.unified-democracy-scores.org/
#############

# Load library
library(countrycode)
library(plyr)

#### # For simplicity, store the shortened URL in an object called url. 
url <- "http://bit.ly/S0vxk2"

# Create a temporary file called 'temp' to put the zip file into. 
temp <- tempfile()

# Create a temporary file called 'temp' to put the zip file into. temp <- tempfile()
# Download the compressed file into the temporary file.
download.file(url, temp)

# Decompress the file and convert it into a dataframe class object called data.
UDSData <- read.csv(gzfile(temp, "uds_summary.csv"))

# Delete the temporary file.
unlink(temp)

# Created standardized country ID numbers based on iso 2 character codes
UDSData$iso2c <- countrycode(UDSData$country, 
							 origin = "country.name",
							 destination = "iso2c")

# Keep only country, year, iso2c, and mean (UDS) variables
UDSData <- UDSData[, c("iso2c", "year", "mean")]

# Rename mean -> UDS
UDSData <- plyr::rename(UDSData, c("mean" = "UDS"))