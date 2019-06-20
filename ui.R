library(shiny)
library(shinythemes)


shinyUI(navbarPage("Johns Hopkins Data Science Capstone", 
        

        tabPanel("Text Predictor",
        
        fluidPage(theme=shinytheme("sandstone"),
                 
        fluidRow(
            
            column(1),
            column(4,
                   tags$div(textInput("text", 
                                      label = h3("Enter Text:"),
                                      value = ))
                            
            ),
            
            column(6,
                   tags$div(br(),
                            tags$hr(),
                            h3("Predicted Next Word:"),
                            tags$span(style="color:red",
                                      tags$strong(tags$h3(textOutput("wordPrediction1")))),
                            br(),
                            tags$hr(),
                            
                            h4("Second Choice:"),
                            tags$span(style="color:red",
                                      tags$strong(tags$h3(textOutput("wordPrediction2")))),
                            br(),
                            tags$hr(),
                            
                            h4("Third Choice:"),
                            tags$span(style="color:red",
                                      tags$strong(tags$h3(textOutput("wordPrediction3")))),
                            br(),
                            align="left")
            ),
            column(1)
        )
            )
        ),
                 
        tabPanel("About",
                 
            fluidRow(
            
                column(1),
                column(10,
                       
                    h2("Application Description"),
                    p("This application uses a text prediction model to predict the next word in a sequence of words entered by the user. 
                      The application was developed by performing data mining, tokenization, and predictive model development on a corpora
                      composed of text data collected from blogs, news articles, and tweets. The source of the data used to develop this
                      application can be found here:  "),
                    uiOutput("corpora_url_output"),
                    br(),
                    p("Development of this application was completed as the Capstone Project for the Johns Hopkins University Coursera
                      Data Science Specialization.")
                              
                ),
                column(1)
                 
                 
        )
        )        
        )

      

)
