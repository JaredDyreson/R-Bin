#!/usr/bin/env RScript

# For a t-distributed random variable, find the probability of obtaining a t-statistic below a given value/above a given value/between two given values


standard_error <- function(sig_naught, sample_size) {
  return (sig_naught/(sample_size)^0.5)
}

t_stat <- function(sample_mean, mu, std_error) {
  return ((sample_mean - mu)/std_error)
}

degrees_of_freedom <- function(n) {
  return(n-1)
}

# given the statement:
# P (t > 2) + P (t < −2)

# what is the probability of obtaining a sample mean at least 2 standard errors away from the population mean (t > 2 or t < -2)

n_standard_deviation <- 2
n <- 4
df <- degrees_of_freedom(n)

a <- pt(n_standard_deviation, df, lower.tail = FALSE)
b <- pt(-n_standard_deviation, df)

probability <- a+b

# above function usage
# s <- 0.609
# sample_mean <- 2.0745
# mu <- 1.7

# se <- standard_error(s, n)
# t <- t_stat(sample_mean, mu, se)
