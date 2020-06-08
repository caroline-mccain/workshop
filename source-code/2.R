remove(list = ls(all = TRUE))

setwd("C:/Users/carol/Desktop/freshman year/spring/DATA 100")

# longitude and lattitude
x <- 1:100
y <- 1:100

east <- sample(x, size = 10, replace = TRUE)
north <- sample(y, size = 10, replace = TRUE)
symbols(east, north, squares = rep(.75, 10), inches = FALSE)

#symbols(obj, obj, arg)
symbols(sample(x, 10, replace = TRUE),
        sample(y, 10, replace = TRUE),
        circles = rep(.75, 10),
        inches = FALSE,
        fg = 'green',
        add = TRUE)

symbols(sample(x, 10, replace = TRUE),
        sample(y, 10, replace = TRUE),
        circles = rep(1.5, 10),
        inches = FALSE,
        fg = 'green4',
        bg = 'beige',
        add = TRUE)

#rows: observations, columns: variables
dwellings <- cbind.data.frame(id = 1:10, east, north)

# lines(x = dwellings$east,
#       y = dwellings$north,
#       lty = 2,
#       lwd = .75,
#       col = 'blue')

#text(x = dwellings$east,
 #    y = dwellings$north + 5,
  #   labels = dwellings$id)

locs <- sample(1:10, 7, replace = FALSE)

# lines(x = dwellings[locs, 2],
#       y = dwellings[locs, 3],
#       lty = 2, 
#       lwd = .75,
#       # col = 'blue')

text(x = dwellings[locs, 2],
     y = dwellings[locs, 3] + 5,
     labels = dwellings[locs, 1])

xspline(x = dwellings[locs, 2],
        y = dwellings[locs, 3],
        shape = -1,
        lty = 2)

title(main = "Path of a Newspaper Deliveryman")
