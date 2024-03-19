@echo off
SETLOCAL

:: Define a list of Scoop packages to install
set "chocopackages=topgrade macchina lsd broot dua neofetch "

:: Check if Scoop is installed by trying to get its version
powershell -command "scoop --version" > nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO Scoop is not installed. Installing Scoop...
    powershell -command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"
    powershell -command "Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression"
) ELSE (
    ECHO Scoop is already installed.
)

:: Check again if Scoop is installed (in case installation failed)
powershell -command "scoop --version" > nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO Failed to install Scoop. Exiting script.
    EXIT /B 1
)

:: Install Scoop packages
ECHO Installing Scoop packages...
FOR %%P IN (%PACKAGES%) DO (
    ECHO Installing %%P...
    scoop install %%P
)

ECHO Installation complete.
PAUSE

