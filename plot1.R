setwd("~/data-workspace/exploring_data")

#I truncated household_power_consumption.txt by hand into a 
#file called trunc_hpc.txt according the appropriate dates.
#I included this file in the repo for good measure.

data <- read.table("trunc_hpc.txt", header=TRUE, sep=";")

par(mar = rep(2, 4))

hist(
  data$Global_active_power, 
  main="Global Active Power", 
  col="red",
  breaks=12,
  xlab="Global Active Power (kilowatts)"
)

