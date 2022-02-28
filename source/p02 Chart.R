# Hao Chen
# install.packages("plotly")
# install.packages("reshape2")
library(ggplot2)
library(reshape2)
library(dplyr)
df <- read.csv("../data/clean_data.csv")

# View(df)
#plot <- ggplot(df, aes(x=Country.x, y=Gender_Index_2019+Wage_Gap_Value)) + 
#  geom_bar(position="stack", stat = "identity") +
#  coord_flip()
df3 <- df %>% 
  select(Country.x, Wage_Gap_Value, Gender_Index_2019) %>%
  na.omit

df2 <- melt(df3, id.vars="Country.x")

plot2 <- ggplot(df2, aes(x=Country.x, y=value, fill=variable)) + 
  geom_bar(stat = "identity") + coord_flip()
