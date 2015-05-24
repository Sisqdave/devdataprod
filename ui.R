library(shiny)
# diabetesRisk <- function(glucose) glucose/200
# shinyUI(pageWithSidebar(
#         headerPanel("Illustraing inputs"),
#         sidebarPanel(
#                 numericInput('id1', 'Numeric input, labeled id1', 0, min = 0, max = 10, step = 1),
#         checkboxGroupInput("id2", "Checkbox", 
#                            c("Value 1" = "1",
#                              "Value 2" = "2",
#                              "Value 3" = "3")),
#         dateInput("date", "Date:")
#         ),
#         mainPanel(
#                 h3('Illustrating Outputs'),
#                 h4('You entered'),
#                 verbatimTextOutput("oid1"),
#                 h4('You entered'),
#                 verbatimTextOutput("oid2"),
#                 h4('You entered'),
#                 verbatimTextOutput("odate")
#         )
# ))

shinyUI(pageWithSidebar(
        headerPanel("Example plot"),
        sidebarPanel(
                sliderInput('mu', 'Guess at the mu',value = 70, min = 60, max = 80, step = 0.05,)
        ),
        mainPanel(
                plotOutput('myHist')
        )
))