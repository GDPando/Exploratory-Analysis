electric <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
electricD <- electric[electric$Date %in% c("1/2/2007","2/2/2007") ,]
Power <- as.numeric(electricD$Global_active_power)
##Once subsetting is done we can plot
png("plot1.png", 480, 480)
hist(Power, col="red", main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
