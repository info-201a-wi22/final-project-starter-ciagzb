#Chart 
#install.packages("dplyr")
#install.packages("ggplot2")
#install.packages("plotly")

library(dplyr)
library(ggplot2)
library(plotly)
wage <- read.csv("../data/DP_LIVE_18022022014344236.csv")

# Understand the increase/decrease in wage gap in Norway, USA, and Mexico
# in 2005, 2010, 2015, 2020.
# The Human Development Index ranks for the three countries are 1, 17, 74, respectively.
# We would like to investigate whether the gap is closing or widening
# for countries with different HDI ranks.
# Wage gap percentage = (median wage of men - median wage of women)/median wage of men

three_countries <- wage %>%
  filter(LOCATION == "NOR"|LOCATION =="USA"|LOCATION =="MEX", 
         SUBJECT == "EMPLOYEE") %>%
  filter(TIME == 2005|TIME == 2010|TIME == 2015|TIME ==2020)

plot1 <- ggplot(data = three_countries, 
        aes(x = TIME, y = Value, color = LOCATION)) +
    geom_point() +
    geom_line()+
    labs(
    title = "Compare Gender Wage Gap by Year in Norway, US, Mexico ",
    x = "Year",
    y = "Wage Gap Percentage",
    color = "Country"
  ) +
  facet_wrap(~LOCATION)

# It can be seen in the graphs that the US has the widest gap while Norway
# has the least gap percentage. This result contradicts the HDI ranking, 
# which means that although the US is a generally wealthy and developed country, 
# gender equality still has room for improvement here. Mexico has the largest
# decrease in gender wage gap, from 16.67% in 2005 to 9.61% in 2020.
