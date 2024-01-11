#!/bin/bash
#ubuntu
#export HISTIGNORE='*sudo -S*'

OS=$(uname -s)
REV=$(uname -r)
MACH=$(uname -m)

declare -a chocopackages=(
    powershell-core
    microsoft-windows-terminal
    git
    vscode
    docker-desktop
    cascadiafonts
    firacode
    googlechrome
    opera
    firefox
    7zip.install
    powertoys
    irfanview
    irfanviewplugins
    notepadplusplus
    vlc
    bulkrenameutility
    wsl
    wsl-ubuntu-2204
    rust
    adobereader 
    gimp
    paint.net
    sysinternals 
    putty
)

echo "apt update"
echo $ProvidedPasword | sudo -S apt update
echo "apt upgrade"
echo $ProvidedPasword | sudo -S apt -y upgrade
echo "apt install packages"

echo "#####"
echo "Install choco packages"
for chocopackage in "${chocopackages[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${chocopackage}"
    echo $ProvidedPasword | sudo -S choco install -y ${chocopackage}
    echo ""
    echo "#####"
    echo ""
done
