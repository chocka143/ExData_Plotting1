#We will execute this script first to clean the data and create the R objects power, gaP,
#and datetime. 

#clean the environment.
rm(list = ls())

library(dplyr)

df <- read.table("household_power_consumption.txt", header = TRUE, 
                 stringsAsFactors = FALSE, sep = ";")

#Create the required dataframe (power), gaP numeric vector, and datetime (of class date, time)
power <- filter(df, Date == "1/2/2007" | Date == "2/2/2007")
gaP <- as.numeric(power$Global_active_power)
datetime <- strptime(paste(power$Date, power$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#Open the png device and store the histogram in plot1.png
png("plot1.png", width=480, height=480)
hist(gaP, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
