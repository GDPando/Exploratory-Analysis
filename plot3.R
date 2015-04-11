##Reading File and subsetting
electric <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
electricD <- electric[electric$Date %in% c("1/2/2007","2/2/2007") ,]
Power <- as.numeric(electricD$Global_active_power)
Meter1 <- as.numeric(electricD$Sub_metering_1)
Meter2 <- as.numeric(electricD$Sub_metering_2)
Meter3 <- as.numeric(electricD$Sub_metering_3)
datetime <- strptime(paste(electricD$Date, electricD$Time), "%d/%m/%Y %H:%M:%S")
##We can now plot
png("plot3.png", width=480, height=480)
plot(datetime, Meter1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, Meter2, type="l", col="red")
lines(datetime, Meter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lwd=1, col=c("black", "red", "blue"))
dev.off()
