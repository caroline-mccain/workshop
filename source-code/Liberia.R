rm(list=ls(all=TRUE))

# install.packages("tidyverse")
# install.packages("sf")

setwd("C:/Users/carol/Desktop/freshman year/spring/DATA 100/Data")

library(tidyverse)
library(sf)

libr_int <- sf::read_sf("gadm36_LBR_shp/gadm36_LBR_0.shp")
libr_adm1 <- sf::read_sf("gadm36_LBR_shp/gadm36_LBR_1.shp")
libr_adm2 <- sf::read_sf("gadm36_LBR_shp/gadm36_LBR_2.shp")

st_geometry(libr_adm1)

ggplot() +
  geom_sf(data = libr_adm2,
          size = .5,
          color = "black",
          fill = "dodgerblue",
          alpha = .2) +
  geom_sf(data = libr_adm1,
          size = .5,
          color = "darkslategray4",
          alpha = 0) +
  geom_sf(data = libr_int,
          size = 1.25,
          color = "deepskyblue4",
          alpha = 0) +
  geom_sf_text(data = libr_adm1,
               aes(label = NAME_1),
               size = 3,
               color = 'darkslategray4') +
  geom_sf_text(data = libr_int,
               aes(label = NAME_0),
               size = 5,
               color = "deepskyblue4")

