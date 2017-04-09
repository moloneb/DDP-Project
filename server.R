#
# This is the server logic of a Shiny web application for calculating BMI
#

library(shiny)
BMI <- function(weight, height)
  weight/(height^2)


# Define server logic required .....
shinyServer(function(input, output) {
  data <- reactive({input$BMIrange})
  output$weight <- renderPrint({input$weight})
  output$height <- renderPrint({input$height})
  output$BMI <- renderPrint({BMI(input$weight, input$height)})

    })
 

