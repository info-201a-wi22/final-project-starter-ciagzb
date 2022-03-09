#Chart 
#install.packages("dplyr")
#install.packages("ggplot2")
#install.packages("plotly")

library(dplyr)
library(ggplot2)
library(plotly)
library(shiny)
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
# 
# plot1 <- ggplot(data = three_countries, 
#         aes(x = TIME, y = Value, color = LOCATION)) +
#     geom_point() +
#     geom_line()+
#     labs(
#     title = "Compare Gender Wage Gap by Year in Norway, US, Mexico ",
#     x = "Year",
#     y = "Wage Gap Percentage",
#     color = "Country"
#   ) +
#   facet_wrap(~LOCATION)
# 
# plot1

my_server <- function(input, output) {
  
  output$lineplot <- renderPlotly({
    
    three_countries <- three_countries %>% 
      filter(LOCATION == input$LOCATION) %>% 
      drop_na()
    
    ggplot(three_countries, aes(x=TIME, y=Value)) +
      geom_line() +
      geom_point() +labs(title ="Compare Gender Wage Gap by Year in Norway, US, Mexico ", x =" Year", y = "Wage Gap Percentage")
  })
}

ui <- fluidPage(
page2 <- tabPanel(
  "Visualization",
  titlePanel("Linegraph"),
  sidebarLayout(      
    sidebarPanel(
      selectInput("LOCATION","Choose LOCATION",
                  choices = list("MEX","NOR","USA")),
    ),
    mainPanel(
      plotlyOutput("lineplot")  
    )
  )
)
)

shinyApp(server = my_server, ui = ui)
