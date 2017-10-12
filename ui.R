
library(shiny)

choices <- c('Face.Value', 'Price.Grade', 'Expected.Duration', 'Advance.Pct',
             'Previous.Defaulted', 'Previous.Trades')

# Define UI for application that draws a scattergraph
shinyUI(fluidPage(
  
  # Application title
  titlePanel("MarketInvoice Data"),
  
  # Sidebar selectors for X- and Y- axes
  sidebarPanel(
    selectInput(inputId = "X.var",
                choices=choices,
                selected="Expected.Duration",
                label = "X Axis:"
    ),
    selectInput(inputId = "Y.var",
                choices=choices,
                selected="Face.Value",
                label = "Y axis:"
    )
  ),
  
  mainPanel(
      plotOutput('plot1')
  )
  
))
