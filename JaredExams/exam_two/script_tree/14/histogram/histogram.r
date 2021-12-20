#!/usr/bin/env RScript

# create a histogram and print to a file called "histogram.pdf"

library(ggplot2)
library(dplyr)

tree_height_plot <- ggplot(data = trees, mapping = aes(x = Height))
tree_height_histogram <- tree_height_plot + geom_histogram(binwidth = 5, center = 67.5) + labs(title = "Height of 31 Black Cherry Trees", x = "Height (feet)", y = "Number of Trees")

ggsave("histogram.pdf")
