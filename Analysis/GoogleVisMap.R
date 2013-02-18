##################
# Create a gvisGeoMap of Global Fertilizer Consumption
# Christopher Gandrud
# 7 January 2012
##################

#### Load data used in this document #### 
# Load package
library(googleVis)

# Load data
MainData <- read.csv("/Rep-Res-ExampleProject1/Data/MainData.csv")

# Subset MainData so that it only includes 2003
SubData <- subset(MainData, year == 2003)

# Remove values of FertilizerConsumption less than 0.1
SubData <- subset(SubData, FertilizerConsumption > 0.1)

# Find the natural logarithm of FertilizerConsumption.
## Round the results to one decimal digit.
SubData$LogConsumption <- round(log(SubData$FertilizerConsumption),
                                digits = 1)

# Make a map of Fertilizer Consumption
FCMap <- gvisGeoMap(data = SubData,
                    locationvar = "iso2c",
                    numvar = "LogConsumption",
                    options = list(
                      colors = "[0xECE7F2, 0xA6BDDB, 0x2B8CBE]",
                      width = "780px",
                      height = "500px"))

# Print FCMap
print(FCMap, tag = "chart")