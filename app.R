# Import Library
library(shiny)
library(rsconnect)

# lLod Server and UI
source("app_server.R")
source("app_ui.R")

# Build a Shiny Application
shinyApp(ui = my_ui, server = my_server)