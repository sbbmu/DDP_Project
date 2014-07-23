
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(
  
  pageWithSidebar(
  
  # Application title
  headerPanel("Fisher's Iris Data"),
  # Sidebar with a slider input for number of bins
  sidebarPanel(
    helpText("This famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.
This app will give you the measurements when you choose a species in the form of a boxplot and means."),
    
    h4("Choose a species. I will give you the sepal and petal sizes of the species."),
    selectInput("variable", "Species:",
                c("Setosa" = "setosa",
                  "Versicolor" = "versicolor",
                  "Virginica" = "virginica"                  
                ))
  ),
  
  # Show a plot of the generated distribution
  mainPanel(
    h3("Lengths and widths of sepals and petals:"),
    h5("The averages are:"),
    verbatimTextOutput("d"),
    plotOutput("plot")
  )
))
