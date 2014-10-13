#project 1
#read the data

housePower <- read.table("household_power_consumption.txt", header=FALSE,
				colClasses=c(NA, NA, NA),skip=66638, nrows=2878, sep=";")

#convert the subset to numeric
power <- as.numeric(housePower$V3)

#make the plot
hist(power, col="Red", main="Global Active Power", xlab="Global Active Power (kilowatts))

#print the plot to png
dev.print(device=png, width=480, height=480, "plot1.png")
dev.off