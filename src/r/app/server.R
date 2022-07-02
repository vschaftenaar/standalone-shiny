server <- function(input, output, session) {
  session$onSessionEnded(function(){
    
    wd <- getwd()
    kill_init <- paste0(dirname(dirname(dirname(wd))),'/env/kill_init.bat')
    
    message('kill init:  ',kill_init)
    
    system(kill_init,wait = F,invisible = T)
    stopApp()
  })
  
  output$plt <- renderPlot({
    par(bg='#ffffff')
    hist(rnorm(input$id*1000),75,col='#5c7c7a',border=F,main='hist',xlab='',ylab='')
  })
  
}


