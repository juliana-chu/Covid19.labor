#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput(inputId = "plotType",
                        label = "Plot Type",
                        choices = c("Rate",
                                    "Percentage")),
            selectInput(inputId = "time",
                        label = "Time",
                        choices = c("Monthly",
                                    "Total")),
            selectInput(inputId = "group",
                        label = "Group",
                        choices = c("Income",
                                    "Ethno-Racial Group"))
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("plot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {
    output$distPlot <- renderPlot({
        if(input$plotType == 'Rate') {
            if(input$time == 'Monthly'){
                if(input$group == 'Income'){
                    p <- Covid19.labor::plotIncMonthyCase()
                }else{
                    p <- Covid19.labor::plotERMonthlyCase()
                }
            }else{
                if(input$group == 'Income'){
                    p <- Covid19.labor::plotIncomeCase()
                }else{
                    p <- Covid19.labor::plotERPopCase()
                }
            }
        }else{
            if(input$time == 'Monthly'){
                if(input$group == 'Income'){
                    p <- Covid19.labor::plotIncMonthyPer()
                }else{
                    p <- Covid19.labor::plotERMonthlyPer()
                }
            }else{
                if(input$group == 'Income'){
                    p <- Covid19.labor::plotIncomePer()
                }else{
                    p <- Covid19.labor::plotERPopPer()
                }
            }
        }
        print(p)
    })
}

# Run the application
shinyApp(ui = ui, server = server)
