source("app_server.R")
df <- read.csv("./data/clean_data.csv")
wage <- read.csv("./data/DP_LIVE_18022022014344236.csv")

desc1 <- p("Purpose: To understand the increase/decrease in wage gap in Norway, 
USA, and Mexico in 2005, 2010, 2015, 2020. The Human Development Index rankings 
for the three countries are 1, 17, 74, respectively. We would like to investigate 
whether the gap is closing or widening for countries with different HDI ranks. 
Insights: It can be seen in the graphs that the US has the widest gap while Norway
           has the least gap percentage. This result contradicts the HDI ranking, 
           which means that although the US is a generally wealthy and developed country, 
           gender equality still has room for improvement here. Mexico, 
           though low in HDI ranking, has the largest decrease in gender wage gap, 
           from 16.67% in 2005 to 9.61% in 2020.")

desc2 <- p("Purpose : The bar chart contains the wage gap value and the gender 
          index adding up together according to each country in the dataset so that we can 
          know which country has the lowest wage gap value and the lowest gender index together.
          Insights: Because when the wage gap value and gender index are both small will 
           indicate that place has the least wage gap overall, 
           including gender differences. Therefore, Costa Rica and Columbia will 
           have the least wage gap followed by Romania, New Zealand and Norway in my data.")


desc3 <- p("Purpose: This bar chart records the wage gap value per country in a descending order. 
As we can see in the chart, different countries vary greatly in wage gap values. 
For example, in Korea, the index is more than 30 while in New Zealand, it is less than 10. 
This chart gives us a general idea of the distribution of wage gaps around the world and how 
different countries vary.
Insights: As we can see in the chart, there is a huge gap between the biggest wage gap value 
           and the least wage gap value. North Korea, Israel and Japan have the biggest wage gap value. 
           Columbia, Costa Rica and Bulgaria have the smallest wage gap values.")

my_ui <- navbarPage(
  "Flying Tiger",
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
        plotlyOutput("lineplot"),
        desc2
      )
    )
  ),
  page2 <- tabPanel(
    "Linegraph",
    titlePanel("Situations in 3 countries"),
    sidebarLayout(      
      sidebarPanel(
        selectInput("place","Choose LOCATION",
                    choices = list("MEX","NOR","USA")),
      ),
      mainPanel(
        plotlyOutput("lineplot2"),
        desc1
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
        plotlyOutput("boxplot"),
        desc3
      )
    )
  )
)