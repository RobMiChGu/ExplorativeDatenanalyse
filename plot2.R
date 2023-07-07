#Daten einlesen
dataFile <- "d:/Data Science Foundations using R/4 Explorative Datenanalyse/Woche 1/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#nur Daten von 2007-02-01 und 2007-02-02
datenbereich <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#datenbereich
datetime <- strptime(paste(datenbereich$Date, datenbereich$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

globalActivePower <- as.numeric(datenbereich$Global_active_power)

#Plot generieren mit 480x480 pixel
#Achtung Wochentage auf deutsch Do, Fr, Sa
png("d:/Data Science Foundations using R/4 Explorative Datenanalyse/Woche 1/plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
















