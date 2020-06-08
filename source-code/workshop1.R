setwd("C:/Users/carol/Desktop/freshman year/spring/DATA 100/WickedProblems")

x <- 1:10
y <- 1:10

plot(x, y,
     type = "o",
     main = "Path of a Running Boy",
     sub = "Distance (meters)",
     xlab = "longitude",
     ylab = "latitude",
     lty = 2,
     lwd = 1.25, 
     col = "blue",
     pch = 0,
     cex = 1.5)

png("plot3.png")
plot(x, y,
     type = "o",
     main = "Path of a Running Boy",
     sub = "Distance (meters)",
     xlab = "longitude",
     ylab = "latitude",
     lty = 2,
     lwd = 1.25, 
     col = "blue",
     pch = 0,
     cex = 1.5)
dev.off()
