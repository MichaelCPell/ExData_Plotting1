#1

  setwd("~/data-workspace/exploring_data")

  Truncated the hpc file by hand.

  data <- read.table("trunc_hpc.txt", header=TRUE, sep=";")

  par(mar = rep(2, 4))

  hist(
    datap$Global_active_power, 
    main="Global Active Power", 
    col="red",
    breaks=12,
    xlab="Global Active Power (kilowatts)"
  )
#1 End


#2     
  setwd("~/data-workspace/exploring_data/ExData_Plotting1")
  data <- read.table("trunc_hpc.txt", header=TRUE, sep=";")

  plot(
    strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),
    data$Global_active_power, 
    type="l",
    ylab="Global Active Power (kilowatts)",
    xlab= ""
  )
#2 end

#3
  plot(
    strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),
    data$Sub_metering_1, 
    type="l",
    ylab="Global Active Power (kilowatts)",
    xlab= ""
  )

  lines(
    strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"),
    data$Sub_metering_2,
    col="Red"
  )

  legend(2000,9.5, # places a legend at the appropriate place c("Health","Defense"), # puts text in the legend 

  lty=c(1,1), # gives the legend appropriate symbols (lines)

  lwd=c(2.5,2.5),col=c("blue","red")) # gives the legend lines the correct color and width

#3 end

