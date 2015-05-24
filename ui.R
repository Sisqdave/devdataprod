library(shiny)


shinyUI(fluidPage(
        titlePanel("Iris classification using petal and sepal size"),
        
        sidebarLayout(
            sidebarPanel(
                    helpText("Select petal and sepal measurements"),
                   
                    sliderInput('SL', 'Sepal Length',  value = 4, min = 4, max = 8, step = .1),
                    sliderInput('SW', 'Sepal Width',  value = 2, min = 2, max = 4.5, step = .1),
                    sliderInput('PL', 'Petal Length',  value = 1, min = 1, max = 7, step = .1),
                    sliderInput('PW', 'Petal Width', value = 0.1, min = 0.1, max = 2.5, step = .1)
        ),
        
        mainPanel(
                plotOutput('myHist')
        )
        )
))