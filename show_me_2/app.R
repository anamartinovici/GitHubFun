#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(grid)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("My Giraffe"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Cage exit:",
                        min = 1,
                        max = 10,
                        value = 5)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("giraffe")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    output$giraffe <- renderPlot({
      # Draw a simple circle and a box
      plot(1:10, 1:10, type = "n"
           , xlab = "", ylab = "")
      grid.circle(x = .5, y = .5, r = .1, gp = gpar(fill = "brown"))
      grid.circle(x = .35, y = .45, r = .05, gp = gpar(fill = "brown"))
      grid.rect(x = .4, y = .4, width = .1, height = .1, gp = gpar(fill = "brown"))
      grid.circle(x = .35, y = .3, r = .025, gp = gpar(fill = "brown"))
      grid.circle(x = .45, y = .3, r = .025, gp = gpar(fill = "brown"))
      
      abline(v=input$bins)
      
    })
    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white',
             xlab = 'Waiting time to next eruption (in mins)',
             main = 'Histogram of waiting times')
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
