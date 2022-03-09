library(shiny)
library(plotly)
library(ggplot2)
library(tidyr)
library(markdown)
my_server <- function(input, output) {
  
  output$lineplot2 <- renderPlotly({
    
    three_countries <- three_countries %>% 
      filter(LOCATION == input$LOCATION) %>% 
      drop_na()
    
    ggplot(three_countries, aes(x=TIME, y=Value)) +
      geom_line() +
      geom_point() +labs(title ="Compare Gender Wage Gap by Year in Norway, US, Mexico ", x =" Year", y = "Wage Gap Percentage")
  })
  #chart1graoh 
  lineplot_data <- reactive({
    data <- read.csv("./data/clean_data.csv", stringsAsFactors = FALSE)
    temp <- data %>% 
      select(Country.x, y = input$type)
    return(temp)
  })
  
  output$lineplot <- renderPlotly({
    
    lineplot_data2 <- lineplot_data() %>% 
      drop_na()
    
    ggplot(lineplot_data2, aes(x=Country.x, y=y)) + 
      geom_bar(stat = "identity",color="yellow") + coord_flip() +
      xlab("Country")+ labs(title = "Wage gap value or Gender index vary by country", y ="Value")})
  #chart2graph
  output$boxplot <- renderPlotly({
    
    boxplot_data2 <- df %>% 
      group_by(TIME) %>% 
      filter(TIME == input$TIME) %>% 
      drop_na()
    
    plot <- ggplot(boxplot_data2, aes(x="", y=Gender_Index_2019)) + geom_boxplot() + 
      ylab(paste0("Wage Gap Value in ", input$TIME)) + labs(title = "Boxplot of gender index")
  })
  #chart3graph
  # output$markdown <- renderUI({
  #   HTML(markdown::markdownToHTML(knit("index.rmd",quiet = TRUE)))
  # })
  
  }