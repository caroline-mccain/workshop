# Project 3: Accessibility to Health Care through Transportation Facilities

## Part 1: De Facto Description of Human Settlements and Urban Areas

![](dar_pop15.png)
This plot shows where the population is per grid cell according to World Pop.
![](dar_ppp.png)
This represents an estimate as to where every individual is located.
![](dar_density.png)
This is a visual representation of the probability of a particular population density in each pixel.
![](density_w_multiline.png)
This is where the first weird thing started. The above image shows just one sub-polygon line, yet below, it shows multiple sub-polygons.
![](subpolys.png)
![](subpolys_filtered.png)
Then, when you filter the sub-polygons, it loses one of the areas indicated to be more dense.
![](ggplotDarhan.png)
Also, it kept claiming that there were no inside polygons, but that means the above plot it done incorrectly.
![](ggplot_w_points.png)
It also would not let me add a density column to the object plotted here.
I'm still working on debugging and trying to figure out what went wrong with this first part of the project. 
