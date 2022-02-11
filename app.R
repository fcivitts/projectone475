library(shiny)

ui <- fluidPage(
 
   plotOutput("timeSeries")
)

server <- function(input, output, session) {
  
  output$timeSeries <- renderPlot ({
    library(fpp3)
    data("tourism")
    SUB <- subset(tourism, 
                  Region == "Melbourne")
    autoplot(SUB)  
    
  }) 
  
}

shinyApp(ui, server)
