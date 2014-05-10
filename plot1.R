
# Read data from file
hpc <- read.table("household_power_consumption.txt", 
                  skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table(
                                        "household_power_consumption.txt",
                                        nrow = 1, header = TRUE, sep=";")))

# Create histogram of global active power
png(file="plot1.png", width=480, height=480, bg="transparent")
hist(hpc$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "Red")
dev.off()
