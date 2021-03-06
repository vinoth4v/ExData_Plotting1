##Execute source.R First##

source("source.R")

myPlot4 <- function() {
        table <- getData()
        png(filename = "plot4.png", width = 500, height = 500, units = "px")
        
        par (mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
        with(table, {
                plot(DateTime, Global_active_power, xlab="", ylab="Global Active Power", type="l")
                plot(DateTime, Voltage, xlab="datetime", ylab="Voltage", type="l")
                
                cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
                plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
                lines(DateTime, Sub_metering_2, type="l", col="red")
                lines(DateTime, Sub_metering_3, type="l", col="blue")
                legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=cols, bty="n")
                
                plot(DateTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")        
        })    
        dev.off()
}

myPlot4()
