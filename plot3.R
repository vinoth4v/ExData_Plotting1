##Execute source.R First##

source("source.R")

myPlot3 <- function() {
        table <- getData()
        png(filename = "plot3.png", width = 500, height = 500, units = "px")
        cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
        plot(table$DateTime, table$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(table$DateTime, table$Sub_metering_2, type="l", col="red")
        lines(table$DateTime, table$Sub_metering_3, type="l", col="blue")
        legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols)
        dev.off()
}

myPlot3()