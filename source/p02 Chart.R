# Hao Chen
# install.packages("plotly")
# install.packages("reshape2")
library(ggplot2)
library(reshape2)
library(dplyr)
df <- read.csv("../data/clean_data.csv")

# View(df)
#plot <- ggplot(df, aes(x=Country.x, y=Gender_Index_2019+Wage_Gap_Value)) + 
#  geom_bar(position="stack", stat = "identity") +
#  coord_flip()
df3 <- df %>% 
  select(Country.x, Wage_Gap_Value, Gender_Index_2019) %>%
  na.omit

countries <- read.csv("../data/clean_data.csv", stringsAsFactors = FALSE) %>% 
  group_by(Country.x) %>% 
  summarize() %>% 
  pull(Country.x)

plot2 <- ggplot(df3, aes(x=Country.x, y=y)) + 
  geom_bar(stat = "identity",color="yellow") + coord_flip() +
  xlab("Country")

my_server <- function(input, output) {
  
lineplot_data <- reactive({
  data <- read.csv("../data/clean_data.csv", stringsAsFactors = FALSE)
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

}

ui <- fluidPage(
  page2 <- tabPanel(
    "Visualization",
    titlePanel("Bargraph"),
    sidebarLayout(      
      sidebarPanel(
        selectInput("type","Choose type",
                    choices = list("Wage_Gap_Value","Gender_Index_2019")),
      ),
      mainPanel(
        plotlyOutput("lineplot")  
      )
    )
  )
)

shinyApp(server = my_server, ui = ui)



