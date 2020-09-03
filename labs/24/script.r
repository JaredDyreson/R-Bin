#!/usr/bin/env RScript

as <- anscombe
library(ggplot2)

old_x1y1_plot <- ggplot(as, mapping = aes(x = x1, y = y1)) + geom_point()
old_2 <- ggplot(as, mapping = aes(x = x2, y = y2)) + geom_point()
old_3 <- ggplot(as, mapping = aes(x = x3, y = y3)) + geom_point()
old_4 <- ggplot(as, mapping = aes(x = x4, y = y4)) + geom_point()

lm_x1y1 <- lm(y1 ~ x1, data = as)
lm_2 <- lm(y2 ~ x2, data = as)
lm_3 <- lm(y3 ~ x3, data = as)
lm_4 <- lm(y4 ~ x4, data = as)

coef_x1y1 <- coef(lm_x1y1)
coef_2 <- coef(lm_2)
coef_3 <- coef(lm_3)
coef_4 <- coef(lm_4)

new_x1y1_plot <- old_x1y1_plot + geom_abline(intercept = coef_x1y1[1], slope = coef_x1y1[2])
#ggsave("one_1.pdf")

new_2 <- old_2 + geom_abline(intercept = coef_x1y1[1], slope = coef_x1y1[2])
#ggsave("one_2.pdf")
new_3 <- old_3 + geom_abline(intercept = coef_x1y1[1], slope = coef_x1y1[2])
#ggsave("one_3.pdf")
new_4 <- old_4 + geom_abline(intercept = coef_x1y1[1], slope = coef_x1y1[2])
#ggsave("one_4.pdf")

#print(new_2)
#print(new_3)
#print(new_4)

#print(new_x1y1_plot)
#summary(lm_x1y1)
#plot(lm_x1y1, which = 1)

#plot(lm_x1y1, which = 2)

#plot(lm_2, which = 1)
#plot(lm_3, which = 1)
#plot(lm_4, which = 1)

#plot(lm_2, which = 2)
#plot(lm_3, which = 2)
plot(lm_4, which = 2)
