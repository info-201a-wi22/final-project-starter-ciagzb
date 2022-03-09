library(markdown)
library(shiny)
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


desc3 <- p("Purpose: This box plot visualized the distribution of the gender index of the countries in the data.
 Insight: From this distribution we can know a large part of the country has pretty low gender inequality index and 
 we can know to what extent is gender difference influencing the wage gap in the country")

summary <- p("Through primary investigations and research, 
our group established a project which aims to solve questions: 
Which countries in the world have the most equal gender pay? 
Which countries have the least? What is the trend of gender pay gap in the recent decades? 
Our project now contains enough data support and statistical analysis. 
By using plots and tables we have made, we are able to learn different countries' 
different wage situations. We have calculated some values regarding the gender wage 
gap and gender index statistics of the countries given in the data, and also, 
we calculated the average Gender Inequality Index and Wage Gap Value of the 
given countries. A lot of useful data is found. For example, Asian countries, 
such as South Korea and Japan, are the countries with the widest wage gap and 
Scandinavian countries tend to have lower gender inequality values and have narrower 
wage gaps as well. Also, by observing data from the graph of pay gaps in Norway, 
Mexico, and the United States from 2005 to 2020, we found the gender wage gap 
is decreasing in the past decade. Our work would be helpful for solving our questions, 
and finally come up with conclusions. Inevitably, there are still limitations 
to the results, due to the dataset we found is limited in the number of countries. 
This might not be comprehensive to analyze the overall trends in the world.")

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
  ),
  page4 <- tabPanel(
    "Summary Page",
    titlePanel("Summary"),
    summary
  ),
  page5 <- tabPanel(
    "Report",
    fluidPage(
      includeCSS("www/style.css"),
      column(
        12,
        includeMarkdown("docs/report.md")
      )
    )
  )
)