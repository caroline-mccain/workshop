rm(list=ls(all=TRUE))

setwd("C:/Users/carol/Desktop/freshman year/spring/DATA 100/Mongolia")

library(tidyverse)
library(sf)

mng_int <- sf::read_sf("gadm36_MNG_shp/gadm36_MNG_0.shp")
mng_adm1 <- sf::read_sf("gadm36_MNG_shp/gadm36_MNG_1.shp")
mng_adm2 <- sf::read_sf("gadm36_MNG_shp/gadm36_MNG_2.shp")

mng_tov <- mng_adm1 %>%
  filter(NAME_1 == "Töv")
mng_tov2 <- mng_adm2 %>%
  filter(NAME_1 == "Töv")

ggplot() +
  geom_sf(data = mng_adm2,
          fill = "dodgerblue3",
          size = .5,
          color = "firebrick2",
          alpha = .7) +
  geom_sf(data = mng_adm1,
          size = .75,
          color = "gold",
          alpha = 0) +
  geom_sf(data = mng_int,
          size = 1,
          color = "dodgerblue3",
          alpha = 0) +
  geom_sf_text(data = mng_adm1,
               aes(label = NAME_1),
               size = 3.25,
               color = "gold3") +
  geom_sf_text(data = mng_tov2,
               aes(label = NAME_2),
               size = 2,
               color = "firebrick3")
  
ggsave("tov.png")

