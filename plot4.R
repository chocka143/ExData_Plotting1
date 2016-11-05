#If the R objects datetime, gaP, sm1, sm2, and sm3 are not present in the global 
#environment, first run plot1.R and plot3.R

grP <- as.numeric(power$Global_reactive_power)
volt <- as.numeric(power$Voltage)

#Open the png graphic device and set mfrow to 2x2.
png(file = "plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

#plot 1x1
plot(datetime, gaP, type="l", xlab="", ylab="Global Active Power")

#plot 1x2
plot(datetime, volt, type="l", xlab="datetime", ylab="Voltage")

#plot 2x1
plot(datetime, sm1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, sm2, type="l", col="red")
lines(datetime, sm3, type="l", col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#plot 2x2
plot(datetime, grP, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
