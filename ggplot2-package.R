library(ggplot2)
qplot(displ, hwy, data = mpg, color = drv)
qplot(displ, hwy, data = mpg, geom = c("point", "smooth"))
str(maacs)
View(maacs)
qplot(logpm25, NocturnalSympt, data = maacs, facets = . ~bmicat, geom = 
        c("point", "smooth"), method= "lm")

