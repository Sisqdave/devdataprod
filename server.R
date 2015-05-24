library(shiny)
# shinyServer(
#         function(input,output) {
#                 output$oid1 <- renderPrint({input$id1})
#                 output$oid2 <- renderPrint({input$id2})
#                 output$odate <- renderPrint({input$date})
#         }
# )
library(caret)
data(iris)
library(e1071)
#modlda <- train(Species ~ ., data = iris, method="lda")
#modelAccuracy <- round(modlda$results$Accuracy, 3)
shinyServer(
        function(input, output) {
                

                answer <- reactive({
                         modlda <- train(Species ~ Petal.Width + Petal.Length, data = iris, method="lda") 
                         sample <- data.frame(input$PL, input$PW)
                         names(sample) <- names(iris)[3:4]
                         as.character(predict(modlda, sample ))
                })

                output$text3 <- renderText({paste("The Petal Length sample measurement is",input$PL, "cm")})
                output$text4 <- renderText({paste("The Petal Width sample measurement is",input$PW, "cm")})
#                output$modelAccuracy <- renderText({paste("The accuracy of this model is ", modelAccuracy)})
                output$answer <- renderText({paste("The Species is most likely ", answer())})
        }
)