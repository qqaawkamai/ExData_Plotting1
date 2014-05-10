
# Read data from file
hpc <- read.table("household_power_consumption.txt", 
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table(
                    "household_power_consumption.txt",
                    nrow = 1, header = TRUE, sep=";")))

# Plot of Global active power versus time
hpc$datetime <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
png(file="plot2.png", width=480, height=480, bg="transparent")
plot(hpc$datetime, hpc$Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)")
dev.off()
