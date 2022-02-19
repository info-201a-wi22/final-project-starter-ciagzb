install.packages("plotly")
install.packages("reshape2")
library(ggplot2)
library(reshape2)
df <- read.csv("/Users/mac/Desktop/Clean_up_Data_for_p02.csv")
View(df)
#plot <- ggplot(df, aes(x=Country.x, y=Gender_Index_2019+Wage_Gap_Value)) + 
#  geom_bar(position="stack", stat = "identity") +
#  coord_flip()
df3 <- df %>% 
  select(Country.x, Wage_Gap_Value, Gender_Index_2019)
df2 <- melt(df3, id.vars="Country.x")

plot <- ggplot(df2, aes(x=Country.x, y=value, fill=variable)) + geom_bar(stat = "identity") + coord_flip()
plot
