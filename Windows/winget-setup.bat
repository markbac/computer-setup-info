@echo off
setlocal enabledelayedexpansion



:: List of packages to install using Chocolatey
set "wingetpackages=procs"

echo Installing winget packages


:: Loop through the list of packages and install them
echo Installing list of packages
for %%a in (%wingetpackages%) do (
    echo.
    echo Installing %%a
    winget install %%a
    echo.
)

echo All packages installed

:: Pause to keep the command prompt open
pause
