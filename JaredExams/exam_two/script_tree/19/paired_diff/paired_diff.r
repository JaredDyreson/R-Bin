#!/usr/bin/env RScript

# please reference lab 19 for full procedure and answer template

library(ggplot2)
library(dplyr)

alpha  <- 0.05

check_p_value <- function(p_value){
        if(p_value > alpha){
                message("fail to reject the null")
        }else{
                message("reject the null")
        }
}

data_one <- read.csv("straight_jeans.csv")
data_two <- read.csv("straight_jeans2.csv")

initial_t_test <- t.test(maxWidthBack ~ menWomen, data = data_one)
inital_p_value <- initial_t_test$p.value
initial_t_stat <- initial_t_test$t

check_p_value(inital_p_value)

initial_plot <- ggplot(data_one, aes(x = maxWidthBack)) + geom_histogram(binwidth = 0.5, center = 12.25) + facet_grid(menWomen ~ .) + labs(title = "Comparing max width back between men and women")

# uncomment to create pdf histogram
# ggsave("initial_plot.pdf")

# Add a variable to the dataset containing paired differences

jeans_diff <- data_two %>% mutate(maxWidthBackDiff = maxWidthBackMens - maxWidthBackWomens, minWidthBackDiff = minWidthBackMens - minWidthBackWomens)

diff_plot <- ggplot(jeans_diff, aes(x = minWidthBackDiff)) + geom_histogram(binwidth = 0.5, center = 0.25) + labs(title = "Jeans Difference (Min -> Mens)")


# uncomment to create pdf histogram
#ggsave("diff_plot.pdf")

diff_t_test <- t.test(jeans_diff$minWidthBackDiff)
diff_p_value <- diff_t_test$p.value
diff_t_stat <- diff_t_test$t

check_p_value(diff_p_value)
