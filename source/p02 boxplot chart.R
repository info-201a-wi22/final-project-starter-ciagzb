install.packages("plotly")
install.packages("reshape2")
library(ggplot2)
library(reshape2)
df <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/final-project-starter-ciagzb/main/data/Clean_up%20Data%20for%20p02.csv")
View(df)
#plot <- ggplot(df, aes(x=Country.x, y=Gender_Index_2019+Wage_Gap_Value)) + 
#  geom_bar(position="stack", stat = "identity") +
#  coord_flip()
df3 <- df %>% 
  select(Country.x, Wage_Gap_Value, Gender_Index_2019)
df2 <- melt(df3, id.vars="Country.x")

plot <- ggplot(df2, aes(x=Country.x, y=value, fill=variable)) + geom_bar(stat = "identity") + coord_flip()
plot
