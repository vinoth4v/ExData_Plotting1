##RUN ME FIRST##

getData <- function() {
        cachefile <- "plot_data.csv"
        if(file.exists(cachefile)) {
                tabledata <- read.csv(cachefile)
                tabledata$DateTime <- strptime(tabledata$DateTime, "%Y-%m-%d %H:%M:%S")
        }
        else {
                file <- downloadFileFunc("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_extractfilesumption.zip", "household_power_extractfilesumption.zip")
                extractfile <- unz(file, "household_power_extractfilesumption.txt")
                tabledata <- read.table(extractfile, header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
                tabledata <- tabledata[(tabledata$Date == "1/2/2007") | (tabledata$Date == "2/2/2007"),]
                tabledata$DateTime <- strptime(paste(tabledata$Date, tabledata$Time), "%d/%m/%Y %H:%M:%S")
                write.csv(tabledata, cachefile)
        }
        tabledata
}


downloadFileFunc <- function(fileURL, file) {
        if(!file.exists(file)) {
                download.file(fileURL, destfile=file, method="curl")
        }
        file
}