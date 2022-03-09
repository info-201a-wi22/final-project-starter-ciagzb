source("app_server.R")
df <- read.csv("./data/clean_data.csv")
wage <- read.csv("./data/DP_LIVE_18022022014344236.csv")
my_ui <- navbarPage(
  "Flying dragon",
  Introduction <- tabPanel(
    "Introduction Page",
    titlePanel("Developing the factors of Gender Wage gap"),
    h3("Have you ever wondered whether you are receiving the same pay as others? Check this out!"),
    mainPanel( 
      p("This project mainly focus on identifying the potential factors that can lead to a wage gap. After
      our data researching process, our group have decided to narrow down our docus on gender wage gap. We
      have proposed a several possible factors, such as country, location, and gender inequality level. We 
      are using the data from",
      a(href="https://data.oecd.org/earnwage/gender-wage-gap.htm", "OECD Gender Wage Gap"),
      "and",
      a(href="https://hdr.undp.org/en/indicators/68606","HDI Value"), 
      "for our cross-examination. The following part of this 
      App will lead you through our project"),
      
      img("", src = "https://media2.giphy.com/media/uEaT2Vk0AJKrj169Ji/giphy.gif")
      
    )
  ),
  page1 <- tabPanel(
    "Bargraph",
    titlePanel("WGV and GI "),
    sidebarLayout(      
      sidebarPanel(
        selectInput("type","Choose type",
                    choices = list("Wage_Gap_Value","Gender_Index_2019")),
      ),
      mainPanel(
        plotlyOutput("lineplot")  
      )
    )
  ),
  page2 <- tabPanel(
    "Linegraph",
    titlePanel("Situations in 3 countries"),
    sidebarLayout(      
      sidebarPanel(
        selectInput("LOCATION","Choose LOCATION",
                    choices = list("MEX","NOR","USA")),
      ),
      mainPanel(
        plotlyOutput("lineplot2")  
      )
    )
  ),
  page3 <- tabPanel(
    "Gender Index Distribution",
    titlePanel("Boxplot"),
    sidebarLayout(      
      sidebarPanel(
        selectInput("TIME","Choose year",
                    choices = list("2018", "2019", "2020")),
      ),
      mainPanel(
        plotlyOutput("boxplot")  
      )
    )
  )
)