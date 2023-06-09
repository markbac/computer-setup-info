#!/bin/bash
#ubuntu
#export HISTIGNORE='*sudo -S*'

OS=$(uname -s)
REV=$(uname -r)
MACH=$(uname -m)

#joplin onenote alternative
wget -O - https://raw.githubusercontent.com/laurent22/joplin/master/Joplin_install_and_update.sh | bash

echo "install pfetch"
wget https://github.com/dylanaraps/pfetch/archive/master.zip
unzip master.zip
echo $ProvidedPasword | sudo -S install pfetch-master/pfetch /usr/local/bin/
rm -rf master.zip pfetch-master

wget https://github.com/browsh-org/browsh/releases/download/v1.8.0/browsh_1.8.0_linux_amd64.deb
echo $ProvidedPasword | sudo -S  apt install ./browsh_1.8.0_linux_amd64.deb
rm ./browsh_1.8.0_linux_amd64.deb

flatpak install --user com.jetpackduba.Gitnuro

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


echo "install ctop"
if [ "${MACH}" = "x86_64" ]; then
    echo $ProvidedPasword | sudo -S  wget https://github.com/bcicen/ctop/releases/download/v0.7.7/ctop-0.7.7-linux-amd64 -O /usr/local/bin/ctop
else
    echo $ProvidedPasword | sudo -S  wget https://github.com/bcicen/ctop/releases/download/v0.7.7/ctop-0.7.7-linux-arm-O /usr/local/bin/ctop 
fi
echo $ProvidedPasword | sudo -S  chmod +x /usr/local/bin/ctop

go install github.com/nikitavoloboev/gitupdate@latest