#Daten einlesen
dataFile <- "E:/Data Science Foundations using R/4 Explorative Datenanalyse/Woche 1/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#nur Daten von 2007-02-01 und 2007-02-02
datenbereich <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#datenbereich
globalActivePower <- as.numeric(datenbereich$Global_active_power)

#Plot generieren mit 480x480 pixel
#Achtung Wochentage auf deutsch Do, Fr, Sa
png("E:/Data Science Foundations using R/4 Explorative Datenanalyse/Woche 1/plot1.png", width=480, height=480)

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()