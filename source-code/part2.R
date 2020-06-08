rm(list=ls(all=TRUE))

setwd("C:/Users/carol/Desktop/freshman year/spring/DATA 100")

library(tidyverse)
library(sf)
library(raster)


mng_pop19 <- raster::raster("Mongolia/mng_ppp_2019.tif")

mng_int <- sf::read_sf("Mongolia/gadm36_MNG_shp/gadm36_MNG_0.shp")
mng_adm1 <- sf::read_sf("Mongolia/gadm36_MNG_shp/gadm36_MNG_1.shp")
mng_adm2 <- sf::read_sf("Mongolia/gadm36_MNG_shp/gadm36_MNG_2.shp")

# Khövsgöl
khov_adm1 <- mng_adm1 %>%
  filter(NAME_1 == "Hövsgöl")
khov_adm2 <- mng_adm2 %>%
  filter(NAME_1 == "Hövsgöl")

 khov_pop19 <- mask(mng_pop19, khov_adm1)
 khov_pop19 <- crop(khov_pop19, khov_adm1)
 
 save(khov_adm1, khov_pop19, file = "khov_sf_pop19.RData")

load("khov_sf_pop19.RData")

plot(khov_pop19)
plot(st_geometry(khov_adm1), add = TRUE)

# plot(mng_pop19)
# plot(st_geometry(mng_adm1), add = TRUE)
# 
# install.packages("doParallel")
# install.packages("snow")

library(snow)
library(doParallel)

ncores <- detectCores() - 1
beginCluster(ncores)
pop_vals_khov1 <- raster::extract(khov_pop19, khov_adm1, df = TRUE)
endCluster()

save(pop_vals_khov1, file = "pop_vals_khov1.RData")

load("pop_vals_khov1.RData")

