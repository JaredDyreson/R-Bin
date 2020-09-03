#!/usr/bin/env RScript

library(ggplot2)
library(dplyr)

standard_error <- function(sig_naught, sample_size) {
  return (sig_naught/(sample_size)^0.5)
}

t_stat <- function(sample_mean, mu, std_error) {
  return ((sample_mean - mu)/std_error)
}

degrees_of_freedom <- function(n) {
  return(n-1)
}

alpha <- 0.05
mu_naught <- 1.3
mu_alternate <- 1.5
sigma <- 0.5
s <- 0.174

n <- 50
df <- degrees_of_freedom(n)

crit_region <- qnorm(alpha, mean = mu_naught, sd = sigma/sqrt(n), lower.tail = FALSE)
t_s <- qt(0.95, df = df)

if(t_s >= crit_region){
        message("We accept alternative")
}else{
        message("We accept null")
}

data <- iris %>% filter(Species == "setosa") %>% select(Petal.Length)

# when given a set of data, use the summary() function to find the mean of the data
# summary(data)

mean_of_data <- 1.462

value <- t_stat(mean_of_data, mu_naught, standard_error(s, n))
probability_of_getting_sample <- pt(value, df = df, lower.tail = F)

# the alternative hypothesis: the average is more than mu_naught

#t.test(data, mu = mu_naught, alternative = "g")

# g <- because we have a > symbol in the alternative hypothesis

# compare the probability_of_getting_sample variable and the p-value given by the t test

# then you need to run a power analysis

s <- sd(data$Petal.Length)
power.t.test(n = n, delta = abs(mu_naught - mu_alternate), sd = s, sig.level = alpha, type = "one.sample", alternative = "one.sided")

# check the power from the command above
# anything equal or more than 80% means that the sample size is enough to make an accurate decision

# we run the t-test again with a different alternative hypothesis, the one that cannot be mu_naught

t.test(data$Petal.Length, mu = mu_naught, alternative = "t")

# we get the same p-value to the first  time we ran the t.test() function

# run another power test

power.t.test(n = n, delta = abs(mu_naught - mu_alternate), sd = s, sig.level = alpha, type = "one.sample", alternative = "two.sided")

# this power is the same as it was the first time we ran the power.t.test() function

# we can conclude that a sample size of 50 is enough to detect a difference between mu_naught and mu_alternative because we have 100% power and the p-value is
# infintesmal
