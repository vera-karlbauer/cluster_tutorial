### Test script for cluster tutorial ###
# Author: Vera N. Karlbauer
# Contact: vera_karlbauer@psych.mpg.de
# Date created: 19-06-2024
# What this script does: Imports mtcars data, gets summary stats, exports output
# To be run on psycl via run_myscript.sh

## Setup
# import data
mydata <- read.csv("01_Data/02_Clean/testdata.csv")

## Get mean mpg for each nr of gears
mydata <- aggregate(mpg ~ gear, data = mydata, FUN = mean)
names(mydata)[names(mydata) == "mpg"] <- "mean_mpg"

## Export data
write.csv(mydata, file = "02_Analysis/02_Results/testoutput.csv", row.names = FALSE)
