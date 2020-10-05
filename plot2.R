data <- read.csv('household_power_consumption.txt',sep=';')
data$Date <- as.Date(data$Date,format = '%d/%m/%Y')
data2 <- data[data$Date == '2007-02-01' | data$Date == '2007-02-02',]
days <- data2$Time
days <- strptime(days,format = "%H:%M:%S")
days[1:1440] <- format(days[1:1440],'2007-02-01 %H:%M:%S')
days[1441:2880] <- format(days[1441:2880],'2007-02-02 %H:%M:%S')
plot(days,data2$Global_active_power,type='l',xlab = '',ylab = 'Global Active Power (kilowatts)')
