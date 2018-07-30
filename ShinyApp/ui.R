################# ~~~~~~~~~~~~~~~~~ ######## ~~~~~~~~~~~~~~~~~ #################
##                                                                            ##
##                        Data Science Capstone Project                       ##
##                                                                            ##            
##                              Yash Deshpande                                ##
##                                                                            ##
##           Github Repo: https://github.com/yashd94/DS_Capstone              ##
##                                                                            ##
################# ~~~~~~~~~~~~~~~~~ ######## ~~~~~~~~~~~~~~~~~ #################

suppressPackageStartupMessages(c(
        library(shinythemes),
        library(shiny),
        library(tm),
        library(stringr),
        library(markdown),
        library(stylo)))

shinyUI(navbarPage("Coursera Data Science Capstone", 
                   
                   theme = shinytheme("united"),
                   
############################### ~~~~~~~~1~~~~~~~~ ##############################  
## Tab 1 - Prediction

tabPanel("SwiftKey- Prediction Application",
         
         tags$head(includeScript("./js/ga-shinyapps-io.js")),
         
         fluidRow(
                 
                 column(3),
                 column(6,
                        tags$div(textInput("text", 
                                  label = h3("Enter your text here*:"),
                                  value = ),
                        tags$span(style="color:grey",("*English only.")),
                        br(),
                        tags$hr(),
                        h4("Next word suggested:"),
                        tags$span(style="color:darkred",
                                  tags$strong(tags$h3(textOutput("predictedWord")))),
                        br(),
                        tags$hr(),
                        h4("Your input:"),
                        tags$em(tags$h4(textOutput("enteredWords"))),
                        align="center")
                        ),
                 column(3)
         )
),

############################### ~~~~~~~~2~~~~~~~~ ##############################
## Tab 2 - About 

tabPanel("About",
         fluidRow(
                 column(2,
                        p("")),
                 column(8,
                        includeMarkdown("./about/about.md")),
                 column(2,
                        p(""))
         )
),

############################### ~~~~~~~~F~~~~~~~~ ##############################

## Footer

tags$hr(),

tags$br(),

tags$span(style="color:grey", 
          tags$footer(("© 30th July 2018 - "), 
                      tags$a(
                              href="https://www.linkedin.com/in/yash-deshpande-73b97081/",
                              target="_blank",
                              "Yash Deshpande."), 
                      tags$br(),
                      ("Built with"), tags$a(
                              href="http://www.r-project.org/",
                              target="_blank",
                              "R"),
                      ("&"), tags$a(
                              href="http://shiny.rstudio.com",
                              target="_blank",
                              "Shiny."),
#                       ("&"), tags$a(
#                               href="http://www.rstudio.com/products/shiny/shiny-server",
#                               target="_blank",
#                               "Shiny Server."),
#                       ("Hosted on"), tags$a(
#                               href="https://www.digitalocean.com/?refcode=f34ade566630",
#                               target="_blank",
#                               "DigitalOcean."),
                      
                      align = "center"),
          
          tags$br()
)
)
)
