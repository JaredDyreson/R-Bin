#!/usr/bin/env RScript

# Linearly transform a numerical variable

library(ggplot2)
library(dplyr)

trees_transform <- mutate(trees, height_new = 0.3048 * Height - 10)

summarize(trees_transform, mean_height_new = mean(height_new), sd_height_new = sd(height_new))
