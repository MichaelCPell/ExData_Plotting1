plot(
  strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),
  data$Sub_metering_1, 
  type="l",
  ylab="Global Active Power (kilowatts)",
  xlab= ""
)