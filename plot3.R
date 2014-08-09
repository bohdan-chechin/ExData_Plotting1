data <- read.table('data/household_power_consumption.txt', sep=';', header = TRUE)
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")

png('plot3.png', width = 480, height = 480, units = 'px', bg = 'transparent')

plot(y=data$Sub_metering_1, type="l", x=data$Date, col="black",  xlab = '', ylab = 'Energy sub metering')
lines(y=data$Sub_metering_2, x=data$Date, col="red")
lines(y=data$Sub_metering_3, x=data$Date, col="blue")
legend("topright", pch=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

dev.off()