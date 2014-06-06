##Execute source.R First##

source("source.R")

myPlot1 <- function() {
        table <- getData()
        png(filename = "plot1.png", width = 500, height = 500, units = "px")
        hist(table$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab= "Frequency", col="red")
        dev.off()
}

myPlot1()