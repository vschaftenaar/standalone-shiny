# -------------------------------------------------------------------------------------
A first try of creating an easy and fast way of an Standalone Shiny application via R-portable and Vivaldi-portable
# -------------------------------------------------------------------------------------

#
#
# Standalone Shiny

Upzip the zip-files in ./env/zip to ./env. There you will find the engine (R-portable) and the Browser (Vivaldi). It also includes a kill_init.bat to close all Vivaldi sessions on exiting the Shiny App. For unknown reason the, shiny app only opens when Vivaldi is already running. To still give the application a standalone feel, Vivaldi will be run in the background (invisible=T). Therefor it is necessary that the instances are closed again when the application is closed.

