rm(list=ls(all=TRUE))

setwd("C:/Users/carol/Desktop/freshman year/spring/DATA 100/Mongolia")

library(tidyverse)
library(sf)

mng_int <- sf::read_sf("gadm36_MNG_shp/gadm36_MNG_0.shp")
mng_adm1 <- sf::read_sf("gadm36_MNG_shp/gadm36_MNG_1.shp")
mng_adm2 <- sf::read_sf("gadm36_MNG_shp/gadm36_MNG_2.shp")

khov_adm1 <- mng_adm1 %>%
  filter(NAME_1 == "Hövsgöl")
khov_adm2 <- mng_adm2 %>%
  filter(NAME_1 == "Hövsgöl")

dar_adm1 <- mng_adm1 %>%
  filter(NAME_1 == "Darhan-Uul")
dar_adm2 <- mng_adm2 %>%
  filter(NAME_1 == "Darhan-Uul")

# ggplot() +
#   geom_sf(data = mng_adm2,
#           fill = "dodgerblue3",
#           size = .5,
#           color = "firebrick2",
#           alpha = .7) +
#   geom_sf(data = mng_adm1,
#           size = .75,
#           color = "gold",
#           alpha = 0) +
#   geom_sf(data = mng_int,
#           size = 1,
#           color = "dodgerblue3",
#           alpha = 0) +
#   geom_sf_text(data = mng_adm2,
#                aes(label = NAME_2),
#                size = 1.25,
#                color = "firebrick3") +
#   geom_sf_text(data = mng_adm1,
#                aes(label = NAME_1),
#                size = 3.25,
#                color = "gold3")
#   
# ggsave("mongolia.png")


mng_adm2 %>%
  filter(NAME_1 == "Hövsgöl") %>%
  ggplot() +
  geom_sf(data = khov_adm2,
          fill = "dodgerblue3",
          size = .5,
          color = "firebrick2",
          alpha = .7) +
  geom_sf(data = khov_adm1,
          size = .75,
          color = "gold",
          alpha = 0) +
  geom_sf_text(data = khov_adm2,
               aes(label = NAME_2),
               size = 1.25,
               color = "firebrick3") +
  geom_sf_text(data = khov_adm1,
               aes(label = NAME_1),
               size = 3.25,
               color = "gold3")  
mng_adm2 %>%
  filter(NAME_1 == "Darhan-Uul") %>%
  ggplot() +
  geom_sf(data = mng_int) +
  geom_sf(data = dar_adm2,
          fill = "dodgerblue3",
          size = .5,
          color = "firebrick2",
          alpha = .7) +
  geom_sf(data = dar_adm1,
          size = .75,
          color = "gold",
          alpha = 0) +
  geom_sf_text(data = dar_adm1,
               aes(label = NAME_1),
               size = 3.25,
               color = "gold3")  

ggplot() +
  geom_sf(data = mng_int) +
  geom_sf(data = khov_adm2,
          fill = "dodgerblue3",
          size = .5,
          color = "firebrick2",
          alpha = .7) +
  geom_sf(data = khov_adm1,
          size = .75,
          color = "gold",
          alpha = 0) +
  geom_sf(data = dar_adm2,
          fill = "dodgerblue3",
          size = .5,
          color = "firebrick2",
          alpha = .7) +
  geom_sf(data = dar_adm1,
          size = .75,
          color = "gold",
          alpha = 0) +
  geom_sf_text(data = khov_adm1,
               aes(label = NAME_1),
               size = 3.25,
               color = "gold3") +
  geom_sf_text(data = dar_adm1,
               aes(label = NAME_1),
               size = 3.25,
               color = "gold3")  

#ggsave("Hovsgol.png")

