library(ggplot2)

data(state)
states <- data.frame(state.x77)
states$Region <- state.region
states$Division <- state.division

server <- function(input, output) {
    output$finalPlot <- renderPlot({
        finalPlot <- ggplot(states, aes(HS.Grad, Income, color = states[[input$select]])) +
            xlab("High School Graduation Percentage") + ylab("Per Capita Income") +
            ggtitle("US States, Educational Attainment vs. Income") + 
            geom_point(size = 3) + labs(color = input$select)
        finalPlot
        
    })
}