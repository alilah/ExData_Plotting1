#Plotting plot 4 R file

#reading the file 

house_power<- read.table("household_power_consumption.txt", header= FALSE, skip=66638,
				nrows =2878, sep=";")

#merge and create a datetime variable

house_power$DT <- strptime(paste(house_power$V1, house_power$V2, sep=","),
				   format= "%d/%m/%Y,%H:%M:%S")

par(mfrow=c(2,2)

#topleft plotting
plot(house_power$DT, house_power$V3, xlab="", ylab="Global Active Power", type="l",lty=1)

#topright ploting
plot(house_power$DT, house_power$V5, xlab="datetime", ylab="Voltage", type="l", lty=1)

#bottom left plotting
plot(house_power$DT, house_power$V7, xlab="", ylab="Energy Sub metering",type="l",lty=1)

lines(house_power$DT, house_power$V8, xlab="", ylab="Energy Sub metering", type="l",col="red",lty=1)	

lines(house_power$DT, house_power$V9, xlab="", ylab="Energy Sub metering", type="l",col="blue",lty=1)	  