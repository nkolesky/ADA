library(dplyr) ### Load in the correct library 
Nicholass-MacBook-Pro-2:Desktop nkolesky$ git clone git@github.com:kijohnson/ADA-Fall-2021.git ### Clone data from Github
BRFSS2017_10percent_v <- read.csv("~/Desktop/ADA-Fall-2021/BRFSS2017_10percent_v.csv") ### Load in the correct dataset
View(BRFSS2017) ### Make typing the dataset name in easier
BRFSS2017%>%group_by(SEX)%>%summarise(median(ht_meters, na.rm=TRUE)) ### Find median height in meters sorted by sex
BRFSS2017%>%group_by(SEX)%>%summarise(mean(ht_meters, na.rm=TRUE)) ### Find mean height in meters sorted by sex
boxplot(ht_meters~SEX,data=BRFSS2017, Main="Median Height By Sex", xlab="Sex", ylab="Height in Meters") ### Boxplot of Height x Sex