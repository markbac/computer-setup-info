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
set "chocopackages=powershell-core vlc curl wireshark bluescreenview libreoffice-fresh whocrashed microsoft-windows-terminal git vscode docker-desktop cascadiafonts firacode googlechrome microsoft-edge opera firefox 7zip.install 7zip powertoys irfanview irfanviewplugins notepadplusplus vlc bulkrenameutility wsl2 wsl-ubuntu-2204 rust adobereader gimp paint.net sysinternals zoom microsoft-teams-new-bootstrapper drawio python3 googledrive foxitreader ccleaner treesizefree windirstat winscp dotnet synology-note-station-client synologydrive cloudstation oh-my-posh winmerge tortoisegit sourcemonitor putty graphviz llvm choco install sonos-controller googleearthpro whatsapp openvpn onenote vnc-viewer obs-studio cppcheck gh miktex xnview speccy nano plantuml hwmonitor nodejs nvm"

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
