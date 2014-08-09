data <- read.table('data/household_power_consumption.txt', sep=';', header = TRUE)
data$Date <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")

png('plot4.png', width = 480, height = 480, units = 'px', bg = 'transparent')

par(mfrow=c(2,2))
plot(y=data$Global_active_power, type="l", x=data$Date, col="black",  xlab = '', ylab = 'Energy sub metering')

plot(y=data$Voltage, type='l', x=data$Date, col="black",  xlab = '', ylab = 'Voltage')

plot(y=data$Sub_metering_1, type="l", x=data$Date, col="black",  xlab = '', ylab = 'Energy sub metering')
lines(y=data$Sub_metering_2, x=data$Date, col="red")
lines(y=data$Sub_metering_3, x=data$Date, col="blue")
legend("topright", pch=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)

plot(y=data$Global_reactive_power, type='l', x=data$Date, col="black",  xlab = '', ylab = 'Global_reactive_power')

dev.off()