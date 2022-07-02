setwd(abulily::get_directory())
library(shiny)

setwd('../../')

file.path    <- getwd()
engine  <- paste0(file.path,'/env/browser/vivaldi/Application/vivaldi.exe')
engine.path  <- paste0('"',file.path,'/env/browser/vivaldi/Application/vivaldi.exe','"')



system(command = engine.path,invisible = T,wait=F)

ip <- '127.0.0.1'
port <- '7272'
ip.port <- paste0('http://',ip,':',port)

runapp.cmd <- paste0(engine.path,' --app=',ip.port)

runApp('./src/r/app/',host = ip,port=7272,launch.browser = shell(runapp.cmd))
