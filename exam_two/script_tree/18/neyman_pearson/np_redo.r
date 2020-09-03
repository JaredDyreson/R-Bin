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

regular_np <- function() {
        alpha <- 0.05
        mu_naught <- 1.3
        mu_alternate <- 1.5
        sigma <- 0.5
        s <- 0.174
        n <- 50
        df <- n-1

        # get the data
        data <- iris %>% filter(Species == "setosa") %>% select(Petal.Length)

        # find the mean from the data
        mean_from_data <- mean(data$Petal.Length, na.rm = T)

        # get the p-value
        p_value <- pnorm(mean_from_data, mu_naught, sigma/sqrt(n), lower.tail = F)

        # make a decision based on the p-value
        if(p_value > alpha){
                message("fail to reject null")
        }else{  
                message("we reject the null")
        }
}


t_np <- function(){

        alpha <- 0.05
        mu_naught <- 1.3
        mu_alternate <- 1.5
        sigma <- 0.5

        n <- 50
        df <- degrees_of_freedom(n)
        data <- iris %>% filter(Species == "setosa") %>% select(Petal.Length)

        crit_region <- qnorm(alpha, mean = mu_naught, sd = sigma/sqrt(n), lower.tail = FALSE)
        t_s <- qt((1-alpha), df = df)

        if(t_s >= crit_region){
                message("We accept alternative")
        }else{
                message("We accept null")
        }
        s <- sd(data$Petal.Length)
        power <- power.t.test(n = n, delta = abs(mu_naught - mu_alternate), sd = s, sig.level = alpha, type = "one.sample", alternative = "one.sided")$power
        beta <- 1-power
        if(power >= 0.8){
                message("large enough sample")
        }else{
                message("not a large enough sample")
        }
        if(beta == 0){
                message("we have no chance of making a type 2 error")
        }else{
                print(beta)
        }
}

t_np()
