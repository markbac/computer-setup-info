#!/bin/bash
#ubuntu
#export HISTIGNORE='*sudo -S*'

OS=$(uname -s)
REV=$(uname -r)
MACH=$(uname -m)

echo "#####"
echo "Install vscode"

if grep -qi microsoft /proc/version; then
    # we are using WSL
    code &
else
    echo $ProvidedPasword | sudo -S  apt-get install wget gpg
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    echo $ProvidedPasword | sudo -S  install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    echo $ProvidedPasword | sudo -S  sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg

    echo $ProvidedPasword | sudo -S  apt update
    echo $ProvidedPasword | sudo -S  apt install code
fi