#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#   https://shiny.posit.co/
#+ This app is creating the figure of a lion using ggplot2 after pushing 
#+ show me button

library(shiny)
library(ggplot2)
library(gridExtra)

# create the page
ui <- fluidPage(
  titlePanel("Lion"),
  sidebarLayout(
    sidebarPanel(
      actionButton("show", "Show me")
    ),
    mainPanel(
      plotOutput("lion")
    )
  )
)

# create the server
#+ the server will create a simple figure
#+ of a lion using ggplot2

server <- function(input, output) {
  output$lion <- renderPlot({
    if(input$show == 0) return()
    ggplot() +
      geom_point(aes(x = 1:10, y = 1:10), size = 10) +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1) +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      geom_point(aes(x = 1:10, y = 1:10), size = 10, shape = 1, color = "white", fill = "black") +
      
      theme_void()
  })
}
