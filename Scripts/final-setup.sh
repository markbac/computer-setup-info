#!/bin/bash

echo "export PAGER=\"most\"" >> ~/.bashrc


if [ "${MACH}" = "WSL" ]; then
    echo "[boot]" >> /etc/wsl.conf
    echo "systemd=true" >> /etc/wsl.conf
fi
    
echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bashrc
echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.zshrc

echo 'export PAGER="most"'  >> ~/.bashrc
echo 'export PAGER="most"'  >> ~/.zshrc

