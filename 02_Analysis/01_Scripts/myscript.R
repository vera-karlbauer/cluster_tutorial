### Test script for cluster tutorial ###
# Author: Vera N. Karlbauer
# Contact: vera_karlbauer@psych.mpg.de
# Date created: 19-06-2024
# What this script does: Imports mtcars data, gets xxx means, exports output
# To be run on psycl via run_myscript.sh

## Setup
# load packages
install.packages("tibble")
library(dplyr)
library(tibble)

# import data
mydata <- read.csv("01_Data/02_Clean/testdata.csv", col.names = TRUE)
mydata <- mydata %>%
  rownames_to_column(var = "cartype")

## Get mean mpg for each nr of gears
mydata <- mydata %>%
  group_by(gear) %>%
  summarise(mean_mpg = mean(mpg))

## Export data
write.csv(mydata, file = "02_Analysis/02_Results/testoutput.csv", row.names = FALSE)
