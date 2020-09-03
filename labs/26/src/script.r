#!/usr/bin/env RScript

library(GGally)
icecream <- read.csv("icecream.csv")
#ggpairs(icecream, lower = list(continuous = "smooth"), upper = list(continuous = "smooth"))
lm_all <- lm(IC ~ price + income + temp + Year, data = icecream)
#summary(lm_all)
lm2 <- update(lm_all, .~. -income)
lm3 <- update(lm2, .~. -price)
summary(lm3)
new_data_frame <- data.frame(price = 0.280, income = 85, temp = 68, Year = 1)
predict(lm3, newdata = new_data_frame)
