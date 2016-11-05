#If the R objects datetime and gaP are not present in the global environment, first run 
#plot1.R to create them. 

#plot plot2.png in png device.
png(file = "plot2.png", width = 480, height = 480)
plot(datetime, gaP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()