##Execute source.R First##

source("source.R")

myPlot2 <- function() {
        table <- getData()
        png(filename = "plot2.png", width = 500, height = 500, units = "px")
        plot(table$DateTime, table$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
        dev.off()
}

myPlot2()