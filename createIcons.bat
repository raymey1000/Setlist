@echo off
setlocal

:: Ensure an input file was provided
if "%~1"=="" (
    echo Usage: make_icons.bat inputfile.png
    exit /b 1
)

:: Input file
set INPUT=%~1

:: Check if the file exists
if not exist "%INPUT%" (
    echo File not found: %INPUT%
    exit /b 1
)

echo Creating icon-192.png ...
magick "%INPUT%" -resize 192x192^ -gravity center -extent 192x192 icon-192.png

echo Creating icon-512.png ...
magick "%INPUT%" -resize 512x512^ -gravity center -extent 512x512 icon-512.png

echo Done!
endlocal