library(shiny)

shinyUI(fluidPage(
        titlePanel("Iris classification using petal width and length measurements"),
        
        sidebarLayout(
            sidebarPanel(
                    helpText("Use the sliders to select petal length and width measurements(in centimeters) to 
                              classify the type of iris based on an LDA model"),
                    
                    sliderInput('PW', 'Petal Width', value = 0.1, min = 0.1, max = 2.5, step = .1),                   
                    sliderInput('PL', 'Petal Length',  value = 1, min = 1, max = 7, step = .1)

        ),
        
        mainPanel(
                h3("Using the slider bars in the left column, select the petal width and length of the Iris petal sample"),
                h5("Here are some examples you can try:"), 
                h5("Setosa- width 0.5cm, length 1.5cm"),
                h5("Versicolor - width 1.2cm, length 4.0cm"),
                h5("Virginica - width 2.5cm, length 6.0cm"),
                textOutput("pwidth"),
                textOutput("plength"),
                h5("Using a LDA model on the famous (Fisher's or Anderson's) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica."),
                textOutput("modelAccuracy"),
                textOutput("answer")
        )
        )
))