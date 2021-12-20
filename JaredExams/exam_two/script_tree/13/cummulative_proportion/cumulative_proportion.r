#!/usr/bin/env RScript

convert_from_z_score <- function(z_score, sigma, mu){
        return ((z_score*sigma)+mu)
}

mu <- 1.7
sigma <- 0.5

# cumulative proprtion for n%

n_percent <- 0.08
cumulative_proportion <- 1 - n_percent

# lower tail
Z <- qnorm(cumulative_proportion)

# upper tail (same as above)

# qnorm(n_percent, lower.tail = F)


# three ways of showing the same thing
qnorm(cumulative_proportion, mean = mu, sd = sigma)

qnorm(n_percent, mean = mu, sd = sigma, lower.tail = FALSE)

convert_from_z_score(Z, sigma, mu)



############################################

# t stat
# given a confidence interval of 95%
# sample size of 4

C <- 0.95
alpha <- 1 - C
n <- 4
t_star <- qt(alpha/2, df = n-1, lower.tail = F)
