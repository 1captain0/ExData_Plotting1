data <- read.csv('household_power_consumption.txt',sep=';')
data$Date <- as.Date(data$Date,format = '%d/%m/%Y')
data2 <- data[data$Date == '2007-02-01' | data$Date == '2007-02-02',]
global_power <- as.numeric(data2$Global_active_power)
hist(global_power,main = 'Global Active Power',xlab = 'Global Active Power (kilowatts)',col = 'red')