setwd(abulily::get_directory())
library(shiny)

setwd('../../')

file.path    <- getwd()
engine  <- paste0(file.path,'/env/browser/Application/vivaldi.exe')
engine.path  <- paste0('"',file.path,'/env/browser/Application/vivaldi.exe','"')
kill.init <- paste0('"',getwd(),'/env/kill_init.bat','"')

system(command = kill.init,invisible = T,wait=T)
system(command = engine.path,invisible = T,wait=F)

ip <- '127.0.0.1'
port <- '7272'
ip.port <- paste0('http://',ip,':',port)

runapp.cmd <- paste0(engine.path,' --app=',ip.port)

# runApp('./src/r/app/',host = ip,port=7272,launch.browser = shell(runapp.cmd))
runApp('./src/r/app/',host = ip,port=7272,launch.browser = system(runapp.cmd))

Sys.sleep(3)
system(command = kill.init,invisible = T,wait=T)
