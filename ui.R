library(shiny)

shinyUI(pageWithSidebar( 
  headerPanel("Convert Fahrenheit & Celsius"), 
  sidebarPanel(
  numericInput('dq', 'Degree Quantity: ', 0, min = -100000000000, max = 100000000000, step = 1), 
  selectInput('cf', 'From: ', choices = c('Celsius', 'Fahrenheit'))
   ),
  mainPanel(
    h3('Result: '), 
    h4('You entered:'), 
    verbatimTextOutput('odq'), 
    h4('was converted to:'), 
    verbatimTextOutput('ocf')
    
  ) 
))