#!/usr/bin/env RScript

# https://www.youtube.com/watch?v=66z_MRwtFJM

summary(longley)

library(ggplot2)
data <- longley # response variable (y value) -> GNP, unemployed (x value) is a function of GNP

data_plot <- ggplot(data, mapping = aes(x = Unemployed, y = GNP)) + geom_point()

#ggsave("graph_one.pdf")

longley_lm <- lm(GNP ~ Unemployed, data = data)
#summary(longley_lm)

#anova(longley_lm)

new_data_frame <- data.frame(Unemployed = c(187, 200, 308))
longley_precictions <- predict(longley_lm, newdata = new_data_frame)

longley_predictions_CI <- predict(longley_lm, newdata = new_data_frame, interval = "confidence", level = 0.95)

longley_predictions_PI <- predict(longley_lm, newdata = new_data_frame, interval = "prediction", level = 0.95)

longley_CI_df <- data.frame(new_data_frame, longley_predictions_CI)
longley_PI_df <- data.frame(new_data_frame, longley_predictions_PI)

print(longley_CI_df)
print(longley_PI_df)

plot(longley_lm, which = c(1, 2))
