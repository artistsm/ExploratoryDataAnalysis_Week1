dat <- read.table("household_power_consumption.txt", header = TRUE, sep = ';')
dat$Date <- as.Date(dat$Date, format = "%d/%m/%Y")
dat_use <- subset(dat, Date >= "2007-02-01" & Date <= "2007-02-02")

png(file = "plot1.png")
hist(as.numeric(as.character(dat_use$Global_active_power)), col = 'red', xlab = "Global active power(kilowatts)" , main = "Global Active Power", xlim = c(0,6))
dev.off()