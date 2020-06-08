rm(list=ls(all=TRUE))

setwd("C:/Users/carol/Desktop/freshman year/spring/DATA 100")

library(tidyverse)
library(sf)

ukr_int <- sf::read_sf("Data/gadm36_UKR_shp/gadm36_UKR_0.shp")
ukr_adm1 <- sf::read_sf("Data/gadm36_UKR_shp/gadm36_UKR_1.shp")
ukr_adm2 <- sf::read_sf("Data/gadm36_UKR_shp/gadm36_UKR_2.shp")

ggplot() +
  geom_sf(data = ukr_adm1,
          color = "blue") +
  geom_sf(data = ukr_adm2,
          color = "gray",
          alpha = 0) +
  geom_sf(data = ukr_int,
          alpha = 0) 
  
  