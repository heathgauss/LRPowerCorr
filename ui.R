# ui.R

shinyUI(fluidPage(
  titlePanel("LR Power"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Estimate power associated with a logistic regression interaction term in the 2 x 2 x 2 case."),
      
      numericInput("n", 
                  label = "Choose a sample size",
                  value = 700,
                  min = 1),
      
      numericInput("nsims", 
                   label = "Choose the number of simulations",
                   value = 1000,
                   min = 1),
      
      numericInput("rho", 
                   label = "Choose correlation",
                   value = 0.2,
                   min = -1,
                   max = 1),
      
      numericInput("p", 
                   label = "Choose probability",
                   value = 0.5,
                   min = 0,
                   max = 1),
      
      numericInput("or1", 
                   label = "Choose OR1",
                   value = 1.5,
                   min = 0),
      
      numericInput("or2", 
                   label = "Choose OR2",
                   value = 1.5,
                   min = 0),
      
      numericInput("or3", 
                   label = "Choose OR3",
                   value = 1.1,
                   min = 0),
      
      numericInput("or4", 
                   label = "Choose OR4",
                   value = 1.02,
                   min = 0),
      
      numericInput("or5", 
                   label = "Choose OR5",
                   value = 1.02,
                   min = 0),
      
      numericInput("or6", 
                   label = "Choose OR6",
                   value = 1.02,
                   min = 0),
      
      numericInput("or7", 
                   label = "Choose OR7",
                   value = 1.1,
                   min = 0),
      
      numericInput("or8", 
                   label = "Choose OR8",
                   value = 1.02,
                   min = 0),
      
      numericInput("or9", 
                   label = "Choose OR9",
                   value = 1.02,
                   min = 0),
      
      numericInput("or10", 
                   label = "Choose OR10",
                   value = 1.02,
                   min = 0),
      
      textInput("fullmodel", 
                label = "Enter full model",
                value = "y ~ cx1 + cx2 + cx3 + cx4 + cx7 + cx8 + cx9 + cx10"),
      
      textInput("reducedmodel", 
                label = "Enter reduced model",
                value = "y ~ cx4 + cx8 + cx9 + cx10"),
      
      numericInput("alpha", 
                   label = "Specify alpha",
                   value = 0.05,
                   min = 0,
                   max = 1),
      
      numericInput("df", 
                   label = "Specify degrees of freedom for LR test",
                   value = 4,
                   min = 1),
      
      numericInput("pcx1", 
                   label = "Specify proportion for cx1",
                   value = 0.25,
                   min = 0,
                   max = 1),
      
      numericInput("pcx2", 
                   label = "Specify proportion for cx2",
                   value = 0.25,
                   min = 0,
                   max = 1)
      ),
    
    mainPanel(textOutput("poweroutput"))
  )
))
