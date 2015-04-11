##Reading File and subsetting
electric <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
electricD <- electric[electric$Date %in% c("1/2/2007","2/2/2007") ,]
Power <- as.numeric(electricD$Global_active_power)
datetime <- strptime(paste(electricD$Date, electricD$Time), "%d/%m/%Y %H:%M:%S")
##Plotting
png("plot2.png", 480, 480)
plot(datetime, Power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
