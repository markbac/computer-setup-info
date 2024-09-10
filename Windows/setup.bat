@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

:: Function to check if the script is running with administrative privileges
:CheckElevation
openfiles >nul 2>&1
IF '%ERRORLEVEL%' NEQ '0' (
    ECHO This script requires administrative privileges. Please run as Administrator.
    PAUSE
    EXIT /B 1
)
EXIT /B 0

:: Function to relaunch the script with administrative privileges
:Elevate
IF "%1"=="ELEVATED" GOTO :EOF
SETLOCAL ENABLEDELAYEDEXPANSION
ECHO Requesting administrative privileges...
SET "batchFile=%~f0"
Powershell -Command "Start-Process cmd -ArgumentList '/c %batchFile% ELEVATED' -Verb RunAs"
EXIT /B

:: Check if script is running with elevated privileges
CALL :CheckElevation
IF NOT "%1"=="ELEVATED" CALL :Elevate

:: Define packages for Scoop
set "scoopPackages=topgrade macchina lsd broot dua neofetch"

:: Define packages for Chocolatey
set "chocoPackages=powershell-core bluescreenview microsoft-windows-terminal git vscode cascadiafonts firacode googlechrome 7zip.install 7zip powertoys irfanview irfanviewplugins notepadplusplus vlc adobereader gimp paint.net sysinternals zoom googledrive ccleaner treesizefree windirstat winscp dotnet oh-my-posh winmerge tortoisegit putty whatsapp vnc-viewer cppcheck gh xnview hwmonitor bottom gitui bat mdcat tokei onefetch"

:: Define packages for winget
set "wingetPackages=procs trippy Microsoft.VisualStudio.2022.Community"

:: Check and install Scoop
powershell -command "scoop --version" > nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO Scoop is not installed. Installing Scoop...
    powershell -command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"
    powershell -command "Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression"
) ELSE (
    ECHO Scoop is already installed.
)
powershell -command "scoop --version" > nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO Failed to install Scoop. Exiting script.
    EXIT /B 1
)

ECHO Installing Scoop packages...
FOR %%P IN (%scoopPackages%) DO (
    ECHO Installing %%P...
    scoop install %%P
)

:: Check and install Chocolatey
choco --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO Chocolatey is not installed. Installing Chocolatey...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
    ECHO Chocolatey installed successfully.
)

ECHO Installing Chocolatey packages...
choco upgrade -y chocolatey
FOR %%a IN (%chocoPackages%) DO (
    ECHO Installing %%a...
    choco install -y %%a
)

:: Check and install winget
ECHO Installing winget packages...
FOR %%a IN (%wingetPackages%) DO (
    ECHO Installing %%a...
    winget install %%a
)

ECHO All packages installed.
PAUSE
