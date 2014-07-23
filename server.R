
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
data(iris)

shinyServer(function(input, output) {
  d <- reactive({
    tmp<-split(iris,iris$Species)
    tmp<-tmp[input$variable][[1]]
    tmp[,-5]
  })
  output$d= renderPrint({colMeans(d())})
  output$plot <- renderPlot({
    
    boxplot(d())
    
  })
  
})
