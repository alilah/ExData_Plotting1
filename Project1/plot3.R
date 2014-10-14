#plot 3 R file

#read the data file
house_power = read.table("household_power_consumption.txt", header=FALSE, skip=66638, nrows=2878,sep=";")

#merge and create a date time column

house_power$DT = strptime(paste(house_power$V1, house_power$V2, sep=","), 
                           format= "%d/%m/%Y,%H:%M:%S")

#make the plot one at a time
	
	#sub_metering 1
plot(house_power$DT, house_power$V7, type="l", xlab="", ylab="Energy Sub Metering",col="black")
	
	#sub_metering 2
lines(house_power$DT, house_power$V8, type="l", xlab="", ylab="Energy Sub Metering",col="red")
	
	#sub_metering 3
lines(house_power$DT, house_power$V9, type="l", xlab="", ylab="Energy Sub Metering",col="blue")

#put legend
legend("topright", lty=1, col=c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#save to a png
dev.print(device=png, width=480, height=480, "plot3.png")