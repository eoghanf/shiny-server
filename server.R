#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  selectedNoDefaults <- reactive({
    MIdata.notdefault[,c(input$X.var, input$Y.var)]
  })
  
  SelectedDefaults <- reactive({
    MIdata.default[,c(input$X.var, input$Y.var)]
  })
   
  output$plot1 <- renderPlot({
    
    # draw the scatterplot
    plot(selectedNoDefaults(), col="darkgrey", pch=16)
    points(SelectedDefaults(), col="red", pch=16)
    
  })
  
})
