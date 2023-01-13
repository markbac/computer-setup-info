#!/bin/bash
#ubuntu
#export HISTIGNORE='*sudo -S*'

export HISTIGNORE='*sudo -S*'

echo "Please supply password to script"
read ProvidedPasword


declare -a snap-packages=(
    core
    bashtop
    nutty
    krita 
    standard-notes
    wekan 
    onefetch 
    fast 
    nap-store
    imagenes
    sublime-text
    pycharm-community --classic
    sublime-text --classic
    notepadqq
    bottom
    mqtt-explorer
    osquitto
    redis
    mapscii
    asciiquarium
    simplenote
    joplin
)

declare -a npm-packages=(
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
for font in "${snap-packages[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${snap-packages}"
    echo $ProvidedPasword | sudo -S snap install ${snap-packages}
    echo ""
    echo "#####"
    echo ""
done
    

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
for font in "${npm-packages[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${npm-packages}"
    npm install -g ${npm-packages}
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
