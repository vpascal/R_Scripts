library(shiny)

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  
  df <- data.frame(country=c("US", "GB", "BR"),
                   val1=c(1,3,4),
                   val2=c(23,12,32))
  
  
  output$Bar1 <- renderGvis({
    gvisLineChart(df, xvar="country", yvar=c("val1", "val2"),)
 }) })
 
 