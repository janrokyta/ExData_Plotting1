library(lubridate)
df <- read.csv("household_power_consumption.txt", sep = ";", na.strings="?", stringsAsFactors=FALSE)
df <- subset(df, (Date == "1/2/2007") | (Date == "2/2/2007"))
df$DateTime <- dmy_hms(paste(df$Date,df$Time))

Sys.setlocale("LC_ALL", "English") 
plot(df$DateTime, df$Global_active_power, type="n", main = "", xlab="", ylab="Global Active Power (kilowatts)")
lines(df$DateTime, df$Global_active_power, type="l") 