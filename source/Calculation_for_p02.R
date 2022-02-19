#Calculations
#Average Wage_Gap_Value
Avg_WGV <- mean(Final$Wage_Gap_Value)
#Median Wage_Gap_Value
Median_WGV <- median(Final$Wage_Gap_Value)
#Highest Gender Index in year 2019
Highest_GI <- max(Final$Gender_Index_2019, na.rm = TRUE)
#Lowest Gender Index in year 2019
Lowest_GI <- min(Final$Gender_Index_2019, na.rm = TRUE)
#Countries with above average Wage_Gap_Value
C_aboveWGV <- Final %>% 
  select(LOCATION, Country.x, Wage_Gap_Value) %>% 
  filter(Wage_Gap_Value >= Avg_WGV) 

num_c_aboveWGV <- nrow(C_aboveWGV)
#Is the country that has the lowest wage gap value has the highest HDI.Rank?
HDI_low <- Final %>% 
  filter(min_val == min(Wage_Gap_Value)) %>% 
  pull(HDI.Rank) 
Country <- Final$Country.x[Final$HDI.Rank == HDI_low]
HDI_high <- Final$Country.x[Final$HDI.Rank == min(Final$HDI.Rank, na.rm = TRUE)] 

#info_list
Info_list <- list(Avg_WGV, Median_WGV, Highest_GI, Lowest_GI, num_c_aboveWGV, HDI_low)
