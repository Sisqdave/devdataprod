library(shiny)

shinyUI(fluidPage(
        titlePanel("Iris classification using petal and sepal size"),
        
        sidebarLayout(
            sidebarPanel(
                    helpText("Use the sliders to select petal and sepal measurements(in centimeters) to classify the type of iris
                             based on an LDA model"),
                   
                    sliderInput('SL', 'Sepal Length',  value = 4, min = 4, max = 8, step = .1),
                    sliderInput('SW', 'Sepal Width',  value = 2, min = 2, max = 4.5, step = .1),
                    sliderInput('PL', 'Petal Length',  value = 1, min = 1, max = 7, step = .1),
                    sliderInput('PW', 'Petal Width', value = 0.1, min = 0.1, max = 2.5, step = .1)
        ),
        
        mainPanel(
                textOutput("text1"),
                textOutput("text2"),
                textOutput("text3"),
                textOutput("text4"),
                textOutput("modelAccuracy"),
                textOutput("answer")
        )
        )
))