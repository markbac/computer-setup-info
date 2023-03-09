#!/bin/bash
#ubuntu
#export HISTIGNORE='*sudo -S*'

export HISTIGNORE='*sudo -S*'

echo "Please supply password to script"
read ProvidedPasword


declare -a snappackages=(
    core
    bashtop # Bashtop is a terminal-based resource monitoring utility in Linux
    nutty # A simple application to provide essential information on network related aspects. 
    krita # Krita is the full-featured digital art studio.
    standard-notes # An end-to-end encrypted notes app for digitalists and professionals.
    wekan # Wekan is an open-source and collaborative kanban board application.
    onefetch # Onefetch is a command-line Git information tool written in Rust that displays project information and code statistics for a local Git repository directly to your terminal.
    fast # test your internet download speed from terminal
    snap-store
    sublime-text # editor
    pycharm-community --classic # Python IDE
    sublime-text --classic # editor
    notepadqq # A Notepad++-like editor for Linux.
    bottom # A graphical process/system monitor with a customizable interface
    mqtt-explorer # A comprehensive and easy to use MQTT Client
    mosquitto # Eclipse Mosquitto MQTT broker
    redis # Redis is used as a database, cache and message broker.
    mapscii # ascii map
    asciiquarium # ascii aquarium
    simplenote # Simplenote is an easy way to keep notes, lists, ideas and more. 
    joplin # Joplin is an open source, free note taking application.
)

declare -a npmpackages=(
    @asyncapi/cli
    @asyncapi/generator
    @asyncapi/modelina
    @asyncapi/parser
    @mock-to-openapi
    @ungit
    vtop
    gtop
)

echo "#####"
echo "Install snap packages"
for snappackage in "${snappackages[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${snappackage}"
    echo $ProvidedPasword | sudo -S snap install ${snappackage}
    echo ""
    echo "#####"
    echo ""
done
    
echo "install Gaphor -  Describe and document your applications and systems with Gaphor to enhance knowledge sharing"
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --user flathub org.gaphor.Gaphor

echo "npm installs"
#install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
echo "nvm install"
nvm install --lts
source ~/.bashrc
# asyncapi tools
echo "install syncapi tools"

echo "#####"
echo "Install npm packages"
for npmpackage in "${npmpackages[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${npmpackage}"
    npm install -g ${npmpackage}
    echo ""
    echo "#####"
    echo ""
done


## open api editor https://github.com/swagger-api/swagger-editor 
git clone git@github.com:swagger-api/swagger-editor.git
cd swagger-editor
npm install



echo "###################"
echo ""
echo "SCRIPT COMPLETE!!"
echo ""
echo "###################"
