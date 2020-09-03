#!/usr/bin/env RScript

# For a sampling distribution of sample mean, find the probability of obtaining a sample mean value below a given value/above a given value/between two given values

library(ggplot2)
library(dplyr)

set.seed(338)

theoretical_standard_deviation <- function(sig_naught, sample_size) {
  return (sig_naught/(sample_size)^0.5)
}


# inital information given

n <- 4
mu <- 1.7
sigma <- 0.5

# run a mini simulation

normal_draws <- rnorm(n = n, mean = mu, sd = sigma)

# compute the mean and standard deviation of the data

m <- mean(normal_draws)
standard <- sd(normal_draws)


# Much larger simulation

n_samples <- 1000

normal_matrix <- matrix(0, nrow = n_samples, ncol = n)

# reset the seed

set.seed(338)

for(i in 1:n_samples){
    normal_matrix[i,] <- rnorm(n = n, mean = mu, sd = sigma)
}

mean_vec <- apply(normal_matrix, 1, mean)
sd_vec <- apply(normal_matrix, 1, sd)

# find the actual mean and standard deviation of the simulations

actual_mean <- mean(mean_vec)
actual_standard_deviation <- sd(sd_vec)

# find approximate probability of obtaining the a sample weight between 0.8 and 1.2
# NOTE
# might need to change values HERE

original_bottom_weight <- 0.8
original_top_weight <- 1.2

mean_sample_means <- mu # this is going to be the same as the mu given

sd_sample_means <- theoretical_standard_deviation(sigma, n)

## this actually computes the probability

bottom <- pnorm(original_bottom_weight, mean = mean_sample_means, sd = sd_sample_means)
top <- pnorm(original_top_weight, mean = mean_sample_means, sd = sd_sample_means)
percent_range <- top - bottom

print(percent_range)

# CONCLUSION
# probability for the weight to be in between 1.2 pounds and 0.8 pounds given the sample size of four squirrels
