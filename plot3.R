data <- read.csv('household_power_consumption.txt',sep=';')
data$Date <- as.Date(data$Date,format = '%d/%m/%Y')
data2 <- data[data$Date == '2007-02-01' | data$Date == '2007-02-02',]
days <- data2$Time
days <- strptime(days,format = "%H:%M:%S")
days[1:1440] <- format(days[1:1440],'2007-02-01 %H:%M:%S')
days[1441:2880] <- format(days[1441:2880],'2007-02-02 %H:%M:%S')
plot(days,data2$Sub_metering_1,type='l',xlab = '',ylab = 'Energy Sub Metering',col = 'black')
lines(days,data2$Sub_metering_2,col='red')
lines(days,data2$Sub_metering_3,col='blue')
legend("topright",col = c('black','red','blue'),legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=1, cex=1)

