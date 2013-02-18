######################
# Merge, final clean and save
# Christopher Gandrud
# 17 February 2013
######################

## This file merges two data frames created by:
## Gather1.R, Gather2.R
## The data frames have the names:
## FertConsumpData, UDSData

# Load libraries
library(gdata)
library(reshape)
library(xtable)
library(knitr)

# Merge FertConsumpData with UDSData
MergedData <- merge(FertConsumpData, UDSData,
                    union("iso2c", "year"),
                    all = FALSE)

# Created a data frame of duplicated country-years
DataNotDuplicates <- MergedData[!duplicated(
                                MergedData[, 1:2]), ]

# Save data frame as a CSV file
# Note that following command saves the file in the current working 
# directory. In the example from the book (Figure 4.1) it is saved
# in the Data directory. 
write.csv(FinalCleanedData, file = "MainData.csv")

#### Create variable description file ####
# Vector of variable namess
Variable <- names(FinalCleanedData)

# Vector of variable descriptions
Description <- c("ISO 2 letter country code",
                 "observation year",
                 "country name",
                 "Fertilizer consumption (kilograms per hectare of arable land)",
                 "Unified Democracy Score (mean)"
                 )

# Vector of variable sources
Sources <- c("",
             "",
             "",
             "World Bank Development Indicators",
             "Pemstein (2010)"
             )

# Combine vectors into a table
DescriptionsBound <- cbind(Variable, Description, Sources)

# Create an xtable object from Descriptions
DescriptionsTable <- xtable(DescriptionsBound)

# Format table in HTML
DescriptTable <- print.xtable(DescriptionsTable, type = "html")

cat("# Reproducible Research Example Data Set Variable Descriptions/Sources \n",
    DescriptTable,
    file = "MainData_VariableDescriptions.md"
)

# Run README.Rmd to record session information
## Load other packages used in the Gather files
library(countrycode)
library(WDI)
library(RCurl) 

# Knit README file
knitr::knit("README.Rmd")

