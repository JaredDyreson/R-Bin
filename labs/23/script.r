#!/usr/bin/env RScript

library(ggplot2)

a_data <- read.csv("~/Downloads/armstrength.csv")
arm_plot <- ggplot(data = a_data, mapping = aes(x = Nondominant, y = Dominant)) + geom_point() + labs(title = "Bone Strength Comparision", x = "Non-dominant", y = "Dominant")

#ggsave("arm_plot.pdf")

model_one <- lm(Dominant ~ Nondominant, data = a_data)
coefs <- coef(model_one)
#summary(model_one)

arm_plot_two <- arm_plot + geom_abline(aes(intercept = coefs[1], slope = coefs[2]))

#ggsave("arm_plot_two.pdf")

# 1.382817 <- slope
# y-intercept <- -1.853414

# y = 1.382817x - 1.853414

arm_plot3 <- ggplot(data = a_data, mapping = aes(x = Nondominant, y = Dominant, color = Group, shape = Group)) + geom_point() + labs(title = "Baseball Comparison", x = "Nondominant", y = "Dominant")
arm_plot_color <- arm_plot3 + scale_color_manual(values = c("blue", "pink")) + scale_shape_manual(values = c(12, 23))
arm_plot_group <- arm_plot_color + geom_smooth(method = "lm", se = FALSE)

ggsave("arm_plot_three.pdf")
