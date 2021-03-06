setwd("~/data-workspace/exploring_data")

#I truncated household_power_consumption.txt by hand into a 
#file called trunc_hpc.txt according the appropriate dates.
#I included this file in the repo for good measure.

data <- read.table("trunc_hpc.txt", header=TRUE, sep=";")

plot(
  strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),
  data$Sub_metering_1, 
  type="l",
  ylab="Energy sub metering",
  xlab= "",
  col = "black"
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
       lwd=c(2.5,2.5),
       col=c("black","red","blue"),
       cex=.5,
       text.width = 30000
       )