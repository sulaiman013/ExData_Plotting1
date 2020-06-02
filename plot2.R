

data <- read.table("C:\\Users\\HTCA\\Desktop\\Study\\coursera\\exdata_data_household_power_consumption\\household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
maindata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


datetime <- strptime(paste(maindata$Date, maindata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(maindata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
