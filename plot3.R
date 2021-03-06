d <- read.csv("household_power_consumption.txt", header = FALSE, sep = ";", nrows = 2880, skip = 66637)
colnames(d) = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Globa_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
a <- seq(as.POSIXct("2007/2/1"), as.POSIXct("2007/2/3"), "mins")
png(filename = "plot3.png")
plot(a[1:2880], d$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(a[1:2880], d$Sub_metering_2, col = "red")
lines(a[1:2880], d$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red" , "blue"))
dev.off()