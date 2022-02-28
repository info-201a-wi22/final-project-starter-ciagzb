library(ggplot2)
df <- read.csv("../data/clean_data.csv") %>%
  na.omit()
# View(df)
plotbox <- ggplot(df, aes(x="", y=Gender_Index_2019)) + geom_boxplot()
plotbox

# Purpose: This box plot visualized the distribution of the gender index of the countries in the data.
# The mean gender inequality index is about 0.1 and the boundary is from about 0.05 to 0.2 with an outlier at about 0.4
# Insight: From this distribution we can know a large part of the country has pretty low gender inequality index and 
# we can know to what extent is gender difference influencing the wage gap in the country