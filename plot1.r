data <- read.table('data/household_power_consumption.txt', sep=';', header = TRUE)
gap <- as.numeric(as.vector(data$Global_active_power[2: nrow(data)]))
png('plot1.png', width = 480, height = 480, units = 'px', bg = 'transparent')
hist(x = gap, col="red")
dev.off()