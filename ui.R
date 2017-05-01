
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("BMI Calculator"),

  # Sidebar with a slider input forheight in inches
  sidebarLayout(
    sidebarPanel(
      sliderInput("inches",
                  "Height in inches:",
                  min = 1,
                  max = 80,
                  value = 69),
      sliderInput("weight",
                  "Weight in Lbs:",
                  min = 1,
                  max = 350,
                  value = 175)
    ),


    # Show a plot of the generated distribution
    mainPanel(
      p(h5("Your BMI is: ")),
      textOutput("BMIVal")
    )
  )
))
