wage_gap <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/final-project-starter-ciagzb/main/data/Clean_up%20Data%20for%20p02.csv")

library(tidyverse)
library(maps)

library(forcats)
library(dplyr)
df <- wage_gap[order(wage_gap$Gender_Index_2019),] 
head(df)
Scater_plot3 <- ggplot(df, aes(x = Wage_Gap_Value, y = reorder(Country.x, Wage_Gap_Value)), position = Gender_Index_2019,) + geom_col()
Scater_plot3
