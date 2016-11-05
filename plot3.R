#If the R object datetime is not present in the global environment, first run plot1.R
#to create them. 

#Convert character vectors to numeric
sm1 <- as.numeric(power$Sub_metering_1)
sm2 <- as.numeric(power$Sub_metering_2)
sm3 <- as.numeric(power$Sub_metering_3)

#plot plot3.png in png device
png("plot3.png", width=480, height=480)
plot(datetime, sm1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, sm2, type="l", col="red")
lines(datetime, sm3, type="l", col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()