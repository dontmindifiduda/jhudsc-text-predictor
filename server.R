library(shiny)

source("./WordPredictor.R")
source("./Cleaner.R")

shinyServer(function(input, output) {
   
    textPredictor <- reactive({
        word_predict(input$text, pred_table_uni, pred_table_bi, pred_table_tri, pred_table_four)
    })
    
    corpora_url <- a("HC Corpora", href="http://corpora.epizy.com/?i=1")
    output$corpora_url_output <- renderUI({
        tagList(corpora_url)
    })
    
    output$wordPrediction1 <- renderPrint(textPredictor()[1])
    output$wordPrediction2 <- renderPrint(textPredictor()[2])
    output$wordPrediction3 <- renderPrint(textPredictor()[3])
    
    output$userInput <- renderText({input$text})
 
  
})
