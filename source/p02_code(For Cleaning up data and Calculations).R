library(dplyr)
install.packages("countrycode")
library(countrycode)


#Clean up Wage Gap Data
Wage_gap <- read.csv("/Users/ciara/Desktop/data1.csv") 
Index <- read.csv("/Users/ciara/Desktop/Gender Inequality Index (GII).csv")
View(Gender_Index)

WG_most_recent <- Wage_gap %>% 
  group_by(LOCATION) %>% 
  filter (
    TIME == max(TIME),
    SUBJECT == "EMPLOYEE"
    )
    
WG_new <- WG_most_recent %>% 
  mutate(Country = countrycode(LOCATION, origin = 'iso3c', destination = 'country.name' ))

WG_for_join <- WG_new %>% 
  select(Country, INDICATOR, SUBJECT, TIME, Value)

#Clean up Index
Index_1 <- Index %>% 
  mutate(LOCATION = countrycode(Country, origin = 'country.name', destination = 'iso3c'))


#Join
Joined <- left_join(WG_for_join, Index_1, by = "LOCATION", rm.na = TRUE)

#New datafrome
Final <- Joined %>% 
  select(LOCATION, Country.x, HDI.Rank, TIME, Value, `2019`) %>% 
  rename("Gender_Index_2019" = "2019") %>% 
  rename("Wage_Gap_Value" = Value) %>% 
  arrange(HDI.Rank)

write.csv(Final, "/Users/ciara/Desktop/Clean_up Data for p02.csv", row.names = FALSE)

#Calculations
#Average Wage_Gap_Value
Avg_WGV <- mean(Final$Wage_Gap_Value)
#Median Wage_Gap_Value
Median_WGV <- median(Final$Wage_Gap_Value)
#Average Gender Index in year 2019
Avg_GI <- mean(Final$Gender_Index_2019)
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



  









