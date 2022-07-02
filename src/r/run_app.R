setwd(abulily::get_directory())
library(shiny)

setwd('../../')

file.path    <- getwd()
engine.path  <- paste0(file.path,'/env/browser/vivaldi/Application/vivaldi.exe')
# engine.path  <- paste0(file.path,'/browser/maxthon/app/maxthon/bin/maxthon.exe')


system(command = engine.path,invisible = T,wait=F)

runApp('./src/r/app/',launch.browser = function(appUrl){
        shell(
          sprintf(
            '"%s" --app=%s',
            file.path(engine.path)
            ,appUrl))})