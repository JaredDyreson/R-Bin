#!/usr/bin/env RScript

#For a normal random variable/normal population distribution, find the probability of obtaining an individual value below a given value/above a given value/between two given values


# here we are using a Z SCORE

z_score_one <- -1.8
z_score_two <- -1

value_one <- pnorm(z_score_one)
value_two <- pnorm(z_score_two)

z_prob <- value_two - value_one

#############################################

# here we are using a NORMAL DISTRIBUTION CURVE

original_bottom_weight <- 0.8
original_top_weight <- 1.2

mu <- 1.7
sigma <- 0.5
a <- pnorm(original_bottom_weight, mean = mu, sd = sigma)
b <- pnorm(original_top_weight, mean = mu, sd = sigma)
prob <- b - a

# BOTH WILL YIELD THE SAME ANSWER

