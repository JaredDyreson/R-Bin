#!/usr/bin/env RScript

# create a boxplot and save it to boxplot.pdf

library(ggplot2, warn.conflicts = FALSE)
library(dplyr, warn.conflicts = FALSE)

tree_height_plot <- ggplot(data = trees, mapping = aes(x = Height))

tree_height_boxplot <- tree_height_plot + geom_boxplot(aes(x = "", y = Height, group = NA))+labs(title = "31 Black Cherry Trees", x = "", y = "Height (feet)")

ggsave("boxplot.pdf")
