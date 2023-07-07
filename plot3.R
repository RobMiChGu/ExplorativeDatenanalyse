#Daten einlesen
dataFile <- "d:/Data Science Foundations using R/4 Explorative Datenanalyse/Woche 1/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#nur Daten von 2007-02-01 und 2007-02-02
datenbereich <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#datenbereich
datetime <- strptime(paste(datenbereich$Date, datenbereich$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

globalActivePower <- as.numeric(datenbereich$Global_active_power)

#Legende definieren
subMetering1 <- as.numeric(datenbereich$Sub_metering_1)
subMetering2 <- as.numeric(datenbereich$Sub_metering_2)
subMetering3 <- as.numeric(datenbereich$Sub_metering_3)

#Grafik plotten
#Achtung Wochentage auf deutsch Do, Fr, Sa
png("d:/Data Science Foundations using R/4 Explorative Datenanalyse/Woche 1/plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy sub metering")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()

