@echo off
setlocal enabledelayedexpansion

:: Check if Chocolatey is installed
choco --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Chocolatey is not installed. Installing Chocolatey...
    @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
    echo Chocolatey installed successfully.
)

:: List of packages to install using Chocolatey
set "chocopackages=powershell-core ^
microsoft-windows-terminal ^
git ^
vscode ^
docker-desktop ^
cascadiafonts ^
firacode ^
googlechrome ^
opera ^
firefox ^
7zip.install ^
powertoys ^
irfanview ^
irfanviewplugins ^
notepadplusplus ^
vlc ^
bulkrenameutility ^
wsl ^
wsl-ubuntu-2204 ^
rust ^
adobereader ^
gimp ^
paint.net ^
sysinternals ^
putty"

echo Installing Chocolatey packages

:: Update Chocolatey itself
choco upgrade chocolatey -y

:: Loop through the list of packages and install them
for %%a in (%chocopackages%) do (
    echo.
    echo Installing %%a
    echo choco install -y %%a
    echo.
)

echo All packages installed

:: Pause to keep the command prompt open
pause
