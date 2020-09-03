#!/usr/bin/env RScript

# conduct a NHST t-test

library(dplyr)

# get the data
data <- iris %>% filter(Species == "setosa") %>% select(Petal.Length)

# define all parameters

# size of sample
n <- 50
# degrees of freedom
df <- n-1

# the mu's. the value of mu in this framework cannot be exactly equal, it can be  < , > or != but never =

mu_naught <- 1.3
mu_alternate <- 1.5
alpha <- 0.05
# dependent on the data set
standard_deviation <- sd(data$Petal.Length)

# p-value: the probability of obtaining the observed results of a test, assuming that the null hypothesis is correct.
# we get it from our t.test()

p_value <- t.test(data$Petal.Length, mu = 1.3, alternative = "g")$p.value
print(p_value)

# identify the p-value
# here it is 1.401e-08
# compare it to alpha

if(p_value <= alpha){
        message("We reject the null")
}else{
        message("we fail to reject the null")
}

# determine if our power is enough to make a decision
power <- power.t.test(n = n, delta = abs(mu_naught - mu_alternate), sd = standard_deviation, sig.level = alpha, type = "one.sample", alternative = "two.sided")$power

if(power >= 0.8){
        # we confidently accept the null
        message("large enough sample size")
}else{
        message("we need a bigger sample")
}
