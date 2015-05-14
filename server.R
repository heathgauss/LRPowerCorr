# server.R

source("helpers.R")

shinyServer(
  function(input, output) {
    
    output$poweroutput <- renderPrint({
      LRpowerCorr(sampsize = input$n, nsims = input$nsims, p = input$rho, avep = input$p, 
                   or1 = input$or1, or2 = input$or2, 
                   or3 = input$or3, or4 = input$or4, or5 = input$or5, or6 = input$or6, 
                   or7 = input$or7, or8 = input$or8, or9 = input$or9, or10 = input$or10,
                   fullmodel = input$fullmodel, 
                   reducedmodel = input$reducedmodel, 
                   alpha = input$alpha, 
                   dftest = input$df, pcx1 = input$pcx1, pcx2 = input$pcx2)
    })
    
  }
)
