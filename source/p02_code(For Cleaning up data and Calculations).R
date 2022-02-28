library(dplyr)
#install.packages("countrycode")
library(countrycode)


#Clean up Wage Gap Data
Wage_gap <- read.csv("../data/DP_LIVE_18022022014344236.csv") 
Index <- read.csv("../data/Gender Inequality Index (GII).csv")

WG_most_recent <- Wage_gap %>% 
  group_by(LOCATION) %>% 
  filter (
    TIME == max(TIME),
    SUBJECT == "EMPLOYEE"
    )
    
WG_new <- WG_most_recent %>% 
  mutate(Country = countrycode(LOCATION, origin = 'iso3c', 
                               destination = 'country.name',
                               warn = FALSE))

WG_for_join <- WG_new %>% 
  select(Country, INDICATOR, SUBJECT, TIME, Value)

#Clean up Index
Index_1 <- Index %>% 
  mutate(LOCATION = countrycode(Country, origin = 'country.name', destination = 'iso3c'))


#Join
Joined <- left_join(WG_for_join, Index_1, by = "LOCATION", rm.na = TRUE)

#New datafrome
Final <- Joined %>% 
  select(LOCATION, Country.x, HDI.Rank, TIME, Value, X2019) %>% 
  rename("Gender_Index_2019" = "X2019") %>% 
  rename("Wage_Gap_Value" = Value) %>% 
  arrange(HDI.Rank) %>%
  na.omit()
  

# write.csv(Final, "/Users/ciara/Desktop/Clean_up Data for p02.csv", row.names = FALSE)

#Calculations
#Average Wage_Gap_Value
Avg_wage_gap_value <- mean(Final$Wage_Gap_Value)
#Median Wage_Gap_Value
Median_wage_gap_value <- median(Final$Wage_Gap_Value)
#Average Gender Index in year 2019
average_gender_index <- mean(as.numeric(Final$Gender_Index_2019))
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
