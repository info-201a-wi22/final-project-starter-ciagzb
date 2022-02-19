wage_gap <- read.csv("/Users/haochen/Desktop/Clean_up\ Data\ for\ p02.csv")

library(tidyverse)
library(maps)

library(forcats)
library(dplyr)
df <- wage_gap[order(wage_gap$Gender_Index_2019),] 
head(df)
Scater_plot3 <- ggplot(df, aes(x = Wage_Gap_Value, y = reorder(Country.x, Wage_Gap_Value)), position = Gender_Index_2019,) + geom_col()
Scater_plot3
