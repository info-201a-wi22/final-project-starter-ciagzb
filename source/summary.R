Final <- read.csv("../data/clean_data.csv") %>%
  na.omit()

#Calculations
#Average Wage_Gap_Value
Avg_wage_gap_value <- round(mean(Final$Wage_Gap_Value), 2)
#Median Wage_Gap_Value
Median_wage_gap_value <- round(median(Final$Wage_Gap_Value),2)
#Average Gender Index in year 2019
average_gender_index <- round(mean(Final$Gender_Index_2019),2)
#Countries with above average Wage_Gap_Value)
C_aboveWGV <- Final %>% 
  select(LOCATION, Country.x, Wage_Gap_Value) %>% 
  filter(Wage_Gap_Value >= Avg_wage_gap_value) 

num_above_average<- nrow(C_aboveWGV)

# Country that has the lowest wap gap value (i.e. has the most equal pay) 
min_gap <- min(Final$Wage_Gap_Value)
country <- Final %>%
  filter(Wage_Gap_Value == min_gap) %>%
  pull(Country.x)

summary_info <- list(Avg_wage_gap_value,
                     Median_wage_gap_value, 
                     average_gender_index,
                     num_above_average,
                     min_gap)
