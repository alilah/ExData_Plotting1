#plot 2

#read data
house_Power("household_power_consumption.txt", header=False, colClasses=c(NA,NA,NA),
		skip=66638, nrows=2878, sep=";")

#convert, merge and add date and time column to the subset
house_Power$DT <-strptime(paste(house_Power$V1,house_Power$, sep=","), format="%d/%m/%Y,%H:%M:%S")

#save to png
dev.print(device=png, width=480, height=480, "plot2.png")
dev.off
