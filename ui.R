#
# This is the shiny app for the Developing Data Products course project.
# 

library(shiny)

# Define UI that takes the inputs of weight and height

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Body Mass Index (BMI) calculator"),
  h4('BMI is calculated by dividing weight in kg by height in metres squared:'),
  code('weight/(height^2)'),
  h4('It gives some indication of whether a person is in a healthy weight range.'),
  h4('Follow the 3 steps below to calculate your BMI'),
  p(),
sidebarLayout(
  sidebarPanel(
    sliderInput("weight", "Step 1. Select weight in kilograms:",
                min=20, max = 200, value = 70),

  sliderInput("height", "Step 2. Select height in metres:",
              min=0.7, max = 2.50, value = 1.7),
  submitButton('Step 3. Submit'),
  h5('Ideal BMI is between 18.5 to 25'),
  h5('More than 25 is overweight'),
  h5('Less than 18.5 is underweight')
  
          
        ),

mainPanel(
  h3('Result of BMI calculation'),
  h4('For a weight of '),
  verbatimTextOutput("weight"),
  h4('For a height of '),
  verbatimTextOutput("height"),
  h4('BMI calculated is: '),
  verbatimTextOutput("BMI")
  
)
)
)
)


