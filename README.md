# Standalone Shiny

## quick overview
Upzip the zip-files in ./env/zip to ./env. There you will find the engine (R-portable) and the Browser (Vivaldi). It also includes a kill_init.bat to close all Vivaldi sessions on exiting the Shiny App. For unknown reason the, shiny app only opens when Vivaldi is already running. To still give the application a standalone feel, Vivaldi will be run in the background (invisible=T). Therefor it is necessary that the instances are closed again when the application is closed.

## file structure

```bash
Project
 |
 ├── .gitignore
 |    
 ├── README.md
 |    
 ├── run.exe
 |    
 ├── runApp.bat  *
 |
 ├── env
 |  |  
 |  ├── browser
 |  ├── engine
 |  ├── kill_init
 |
 ├── src
 |  |  
 |  ├── r
 |  |  ├── app
 |  |  ├── run_app.r
```

```bash
├── app
│   ├── css
│   │   ├── **/*.css
│   ├── favicon.ico
│   ├── images
│   ├── index.html
│   ├── js
│   │   ├── **/*.js
│   └── partials/template
├── dist (or build)
├── node_modules
├── bower_components (if using bower)
├── test
├── Gruntfile.js/gulpfile.js
├── README.md
├── package.json
├── bower.json (if using bower)
└── .gitignore
```

\* runApp.bat has already been converted to an .exe, i.e., run.exe
