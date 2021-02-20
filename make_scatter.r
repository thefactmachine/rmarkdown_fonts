library(ggplot2)
library(tidyverse)


p <- ggplot(mtcars, aes(wt, mpg))
p <- p + geom_point()
p <- p + geom_point(aes(colour = factor(cyl)))
p <- p + xlab("Weight of the motor car")
p <- p + ylab("Miles per gallon")
p <- p + theme_minimal(base_family = "helveticaregular")

saveRDS(p, file = "graph_example.rds")