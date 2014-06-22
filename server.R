library(shiny)

inputCopy <- function(degreeQuality, from){
  paste(degreeQuality, from)
}

inputConvert <- function(degreeQuantity, from){
  if (from == "Celsius") 
    paste(format(round(degreeQuantity * 9 / 5 + 32, 2), nsmall = 2), "Fahrenheit")
  else 
    paste(format(round((degreeQuantity - 32) * 5 / 9, 2), nsmall = 2), "Celsius")
}

shinyServer( 
  function(input, output) {
    output$odq <- renderPrint({inputCopy(input$dq, input$cf)}) 
    output$ocf <- renderPrint({inputConvert(input$dq, input$cf)}) 
    
  } 
)