
# Read data from file
hpc <- read.table("household_power_consumption.txt", 
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table(
                    "household_power_consumption.txt",
                    nrow = 1, header = TRUE, sep=";")))

# Plot of sub metering levels (1, 2 or 3) vs time
hpc$datetime <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
png(file="plot3.png", width=480, height=480, bg="transparent")
with(hpc, {
  plot(datetime, Sub_metering_1, type="l", col = "Black", xlab = "", ylab = "Energy sub metering")
  points(datetime, Sub_metering_2, type="l", col = "Red")
  points(datetime, Sub_metering_3, type="l", col = "Blue")
})
legend("topright", lty=c(1,1,1), col = c("Black", "Red", "Blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
