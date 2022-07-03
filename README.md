```bash
***************************************************************************************
***************************************************************************************
*****                                                                             *****
*****    unable to fix the issue when there is a space in the directory           *****
*****    ** fixed -> to run the app, use SYSTEM() instead of SHELL() **           *****
*****                                                                             *****
*****    Running runApp.r from Rstudio seems quite unstable. For some reason      *****
*****    it appears muchmore stable when running the app from the .exe or .bat    *****
*****                                                                             *****
***************************************************************************************
***************************************************************************************
```

# Standalone Shiny
by Abulily

## quick overview
Upzip the zip-files in ./env/zip to ./env. There you will find the engine (R-portable) and the Browser (Vivaldi). It also includes a kill_init.bat to close all Vivaldi sessions on exit the Shiny App.
For unknown reasons, the shiny app only opens when Vivaldi is already running. To still give the application a standalone feel, Vivaldi will be running in the background (invisible). Therefor it is necessary that all instances are closed again when the application is closed.

## file structure
```bash
├── .gitignore
├── README.md
├── run.exe
├── runApp.bat           *
├── env
│   ├── browser         **
│   ├── engine          **
│   ├── kill_init.bat   **
├── src
│   ├── r
│       ├── app
│       ├── run_app.r


*  runApp.bat has already been converted to an .exe, i.e., run.exe
** to be unziippped

```

## process flow
```bash

run.exe
-> kill vivaldi
-> run (invisible) ./../vivaldi.exe
-> create ip.port
-> run ./../vivaldi.exe --app=ip.port
-> on session end :
  -> kill vivaldi

```



