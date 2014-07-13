setwd("~/data-workspace/exploring_data")

#I truncated household_power_consumption.txt by hand into a 
#file called trunc_hpc.txt according the appropriate dates.
#I included this file in the repo for good measure.

data <- read.table("trunc_hpc.txt", header=TRUE, sep=";")

plot(
  strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),
  data$Global_active_power, 
  type="l",
  ylab="Global Active Power (kilowatts)",
  xlab= ""
)
