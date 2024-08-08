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
set "chocopackages=powershell-core    bluescreenview  microsoft-windows-terminal git vscode cascadiafonts firacode googlechrome  7zip.install 7zip powertoys irfanview irfanviewplugins notepadplusplus vlc   adobereader gimp paint.net sysinternals zoom   googledrive  ccleaner treesizefree windirstat winscp dotnet oh-my-posh winmerge tortoisegit  putty whatsapp   vnc-viewer cppcheck gh xnview hwmonitor bottom gitui bat mdcat tokei  onefetch"

echo Installing Chocolatey packages

:: Update Chocolatey itself
choco upgrade -y chocolatey

:: Loop through the list of packages and install them
echo Installing list of packages
for %%a in (%chocopackages%) do (
    echo.
    echo Installing %%a
    choco install -y %%a
    echo.
)

echo All packages installed

:: Pause to keep the command prompt open
pause
