setwd("~/data-workspace/exploring_data")

#I truncated household_power_consumption.txt by hand into a 
#file called trunc_hpc.txt according the appropriate dates.
#I included this file in the repo for good measure.

data <- read.table("trunc_hpc.txt", header=TRUE, sep=";")

par(mfrow = c(2,2))




par(mar= c(5,5,2,.2))
plot(
  strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),
  data$Global_active_power, 
  type="l",
  ylab="Global Active Power",
  xlab= "",
  cex.lab = .8
)

plot(
  strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),
  data$Voltage, 
  type="l",
  ylab="Voltage",
  xlab= "datetime",
  col = "black",
  cex.lab = .8
)
#Plot 3
plot(
  strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),
  data$Sub_metering_1, 
  type="l",
  ylab="Energy sub metering",
  xlab= "",
  col = "black",
  cex.lab = .8
)

lines(
  strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),
  data$Sub_metering_2,
  col="Red"
)

lines(
  strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),
  data$Sub_metering_3,
  col="blue"
)

legend("topright",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       lwd=2.5,
       col=c("black","red","blue"),
       cex=.5,
       text.width = 60000,
       bty="n"
)

#Plot 3 End

plot(
  strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),
  data$Global_reactive_power, 
  type="l",
  ylab="Global_reactive_power",
  xlab= "datetime",
  col = "black",
  cex.lab = .8
)