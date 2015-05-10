Sys.setlocale("LC_ALL", "English") 
df <- read.csv("household_power_consumption.txt", sep = ";", na.strings="?", stringsAsFactors=FALSE)
df <- subset(df, (Date == "1/2/2007") | (Date == "2/2/2007"))

png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(df$Global_active_power, main = "Global Active Power", xlab="Global Active Power (kilowatts)", col="orangered")
dev.off()