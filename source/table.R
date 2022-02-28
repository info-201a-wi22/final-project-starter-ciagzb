#Ciara Wang

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

#New dataframe
Final <- Joined %>% 
  select(LOCATION, Country.x, HDI.Rank, TIME, Value, X2019) %>% 
  rename("Gender_Index_2019" = "X2019") %>% 
  rename("Wage_Gap_Value" = Value) %>% 
  arrange(HDI.Rank) %>%
  mutate(Wage_Gap_Value = round(Wage_Gap_Value, 2),
         Gender_Index_2019 = as.numeric(Gender_Index_2019)) %>%
  na.omit
