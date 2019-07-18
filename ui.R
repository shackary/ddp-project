ui <- fluidPage(
    titlePanel("Play With Plot Colors!"),
    sidebarLayout(
        sidebarPanel(
            p("Each point on the figure to the right represents a US state. The 
              graph shows the relationship between high school graduation rate
              and income."),
            p("Use the dropdown menu below to change which variable is used to 
              color the points on the plot."),
            selectInput("select", "",
                        choices = c("Population (in thousands)" = "Population",
                                    "Region", "Division",
                                    "Illiteracy Percent" = "Illiteracy",
                                    "Murder Rate (per 100,000 pop.)" = "Murder",
                                    "Life Expectancy" = "Life.Exp")),
            a(href = "https://github.com/shackary/ddp-project", "View source 
              on GitHub")),
        mainPanel(
            plotOutput('finalPlot', width = "100%", height = "640px"),
            br(),
            em("About the data:"),
            br(),
            em("This app uses data from the 'states' dataset, which is included in base R.
               The data displayed were collected during the 1970s and should not be
               taken as up-to-date information.")
            
        )
    )
)
