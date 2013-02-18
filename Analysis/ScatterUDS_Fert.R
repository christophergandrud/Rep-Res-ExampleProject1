############
# Create plot of UDS vs. Fertilizer Consumption
# Christopher Gandrud
# Updated 17 February 2013
###########

# Load packages
library(ggplot2)

# Load data
MainData <- read.csv("/Rep-Res-ExampleProject1/Data/MainData.csv")

# Graph FertilizerConsumption and UDS
# Remove values of FertilizerConsumption less than 0.1
MainData <- subset(MainData, FertilizerConsumption > 0.1)

# Create Plot
UDSFert <- ggplot(MainData, aes(x = log(FertilizerConsumption), y = UDS)) +
        geom_point(alpha = I(0.1)) +
        stat_smooth(size = 2, method = "lm") +
        ylab("Democracy Score\n") + xlab("\nLog Fertilizer Consumption") + 
        theme_bw()

print(UDSFert)