# sets working directory
setwd("C:/Users/carol/Desktop/freshman year/spring/DATA 100/getting started/data")

# x & y are objects; <- is the assignment operator
x <- 1:10
y <- 10:1

ls()
plot(x, y, type = "o",
main = "path of a runner",
sub = "meters",
xlab = "longitude",
ylab = 'latitude')
