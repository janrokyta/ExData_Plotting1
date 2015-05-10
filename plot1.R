
df <- read.csv("household_power_consumption.txt", sep = ";", na.strings="?", stringsAsFactors=FALSE)
df <- subset(df, (Date == "1/2/2007") | (Date == "2/2/2007"))
 
Sys.setlocale("LC_ALL", "English") 
hist(df$Global_active_power, main = "Global Active Power", xlab="Global Active Power (kilowatts)", col="orangered")