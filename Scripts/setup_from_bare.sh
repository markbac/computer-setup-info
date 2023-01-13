#!/bin/bash
#ubuntu
#export HISTIGNORE='*sudo -S*'

OS=$(uname -s)
REV=$(uname -r)
MACH=$(uname -m)

export HISTIGNORE='*sudo -S*'

echo "Please supply sudo password to script"
read ProvidedPasword


echo "apt update"
echo $ProvidedPasword | sudo -S apt update
echo "apt upgrade"
echo $ProvidedPasword | sudo -S apt -y upgrade
echo "apt install packages"

declare -a vscode-extensions=(
    42Crunch.vscode-openapi
    4ops.terraform
    aaron-bond.better-comments
    alefragnani.project-manager
    anweber.httpbook
    anweber.vscode-httpyac
    aprilandjan.ascii-tree-generator
    asyncapi.asyncapi-preview
    batisteo.vscode-django
    BitBelt.converttoasciiart
    bmlsolutions.dotuml
    bpruitt-goddard.mermaid-markdown-syntax-highlighting
    buianhthang.xml2json
    chrmarti.regex
    daiyy.quick-html-previewer
    DavidAnson.vscode-markdownlint
    docsmsft.docs-yaml
    donjayamanne.python-environment-manager
    donjayamanne.python-extension-pack
    eamodio.gitlens
    esbenp.prettier-vscode
    fernandoescolar.vscode-solution-explorer
    GitHub.vscode-pull-request-github
    googlecloudtools.cloudcode
    Gruntfuggly.todo-tree
    hashicorp.terraform
    hediet.vscode-drawio
    jebbs.plantuml
    johnpapa.vscode-peacock
    kamikillerto.vscode-colorize
    KevinRose.vsc-python-indent
    maattdd.gitless
    marp-team.marp-vscode
    mermade.openapi-lint
    mirone.milkdown
    mohsen1.prettify-json
    ms-azuretools.vscode-docker
    ms-dotnettools.csharp
    ms-edgedevtools.vscode-edge-devtools
    ms-python.isort
    ms-python.python
    ms-python.vscode-pylance
    ms-toolsai.jupyter-keymap
    ms-vscode-remote.remote-wsl
    ms-vscode.powershell
    ms-vsliveshare.vsliveshare
    ms-vsliveshare.vsliveshare-audio
    njpwerner.autodocstring
    pomdtr.excalidraw-editor
    rangav.vscode-thunder-client
    redhat.vscode-xml
    redhat.vscode-yaml
    shd101wyy.markdown-preview-enhanced
    stoplight.spectral
    streetsidesoftware.code-spell-checker
    tberman.json-schema-validator
    tintinweb.graphviz-interactive-preview
    tomoki1207.pdf
    tonybaloney.vscode-pets
    VisualStudioExptTeam.intellicode-api-usage-examples
    VisualStudioExptTeam.vscodeintellicode
    VolcanicBytes.xsd-navigator
    voldemortensen.rainbow-tags
    vscode-icons-team.vscode-icons
    waleedashraf.asyncapi-validator-vscode
    wayou.vscode-todo-highlight
    wholroyd.jinja
    wraith13.windows-terminal
    yzane.markdown-pdf
    yzhang.markdown-all-in-one
    zaaack.markdown-editor
)

declare -a apt-packages=(
    build-essential 
    procps 
    curl 
    file 
    git 
    python3 
    inetutils-traceroute 
    net-tools
    wireless-tools 
    graphviz 
    python3-pip  
    libgraphviz-dev 
    x11-apps 
    x11-apps  
    neofetch 
    wget 
    htop  
    bat 
    tree 
    gccgo-go 
    nmon 
    atop 
    nodejs  
    gpg 
    inxi 
    unzip 
    neofetch 
    screenfetch 
    httrack 
    fd-find 
    wkhtmltopdf 
    default-jre 
    exa 
    debian-goodies 
    apt-transport-https 
    ca-certificates 
    gnupg 
    snapd 
    libssl-dev 
    nedit 
    emacs 
    dolphin  
    gnome-system-monitor 
    flatpak  
    python3-sense-emu 
    sense-emu-tools
    geany 
    wireshark 
    vlc 
    gimp
    python3-tk 
    thonny 
    psmisc 
    bpytop  
    software-properties-common 
    cmatrix 
    cowsay 
    sl 
    figlet 
    libaa-bin 
    lolcat 
    aewan 
    jp2a 
    cbonsai 
    most 
    aview 
    mc 
    wordgrinder 
    chafa 
    googler 
    ncdu
    stacer
    zim
    zsh
)

declare -a rust-packages=(
    du-dust 
    tokei 
    bottom 
    gitui 
    webget 
    macchina
)

declare -a fonts=(
    BitstreamVeraSansMono
    CodeNewRoman
    DroidSansMono
    FiraCode
    FiraMono
    Go-Mono
    Hack
    Hermit
    JetBrainsMono
    Meslo
    Noto
    Overpass
    ProggyClean
    RobotoMono
    SourceCodePro
    SpaceMono
    Ubuntu
    UbuntuMono
)

declare -a pip-packages=(
    erd-from-json-table-schema 
    pdfkit 
    pywebcopy
    diagrams
)

declare -a pip3-packages=(
    glances
    glances[all]
)

echo "#####"
echo "Install apt packages"
for font in "${apt-packages[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${apt-packages}"
    echo $ProvidedPasword | sudo -S apt -y install ${apt-packages}
    echo ""
    echo "#####"
    echo ""
done
    
if [ "${MACH}" = "raspberrypi" ]; then
    echo $ProvidedPasword | sudo -S apt -y install scratch3 realvnc-vnc-viewer
fi

echo "export PAGER=\"most\"" >> ~/.bashrc

echo "set up ssh"
ssh-keygen -t ed25519 -C "mark.bacon@landisgyr.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
#add key to the git server e.g. github gitlabs
read -p  " please add this key to github"
ssh -T git@github.com

echo  "check github conenction worked"

read -p "Do you want to proceed? (yes/no) " 

echo "config git"
git config --global user.name "Mark Bacon"
git config --global user.email "mark@bacon.me.uk"

#joplin onenote alternative
wget -O - https://raw.githubusercontent.com/laurent22/joplin/master/Joplin_install_and_update.sh | bash


echo "Install rust"
curl https://sh.rustup.rs -sSf | sh

source $HOME/.cargo/env
# add the following to you ~/.bashrc
PATH=$PATH:/home/mbacon/.cargo/bin

cargo install cargo-update

echo "#####"
echo "Install rust packages"
for font in "${rust-packages[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${rust-packages}"
    cargo install ${rust-packages}
    echo ""
    echo "#####"
    echo ""
done

echo "#####"
echo ""
echo "Installing xplr"
cargo install --locked --force xplr
echo ""
echo "#####"
echo ""

cargo install-update -a


echo "install pfetch"
wget https://github.com/dylanaraps/pfetch/archive/master.zip
unzip master.zip
echo $ProvidedPasword | sudo -S install pfetch-master/pfetch /usr/local/bin/
rm -rf master.zip pfetch-master

wget https://github.com/browsh-org/browsh/releases/download/v1.8.0/browsh_1.8.0_linux_amd64.deb
echo $ProvidedPasword | sudo -S  apt install ./browsh_1.8.0_linux_amd64.deb
rm ./browsh_1.8.0_linux_amd64.deb


flatpak install --user com.jetpackduba.Gitnuro

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


echo "install ctop"
if [ "${MACH}" = "x86_64" ]; then
    echo $ProvidedPasword | sudo -S  wget https://github.com/bcicen/ctop/releases/download/v0.7.7/ctop-0.7.7-linux-amd64 -O /usr/local/bin/ctop
else
    echo $ProvidedPasword | sudo -S  wget https://github.com/bcicen/ctop/releases/download/v0.7.7/ctop-0.7.7-linux-arm-O /usr/local/bin/ctop 
fi
echo $ProvidedPasword | sudo -S  chmod +x /usr/local/bin/ctop


source ~/.bashrc
echo "#####"
echo "Install pip packages"
for font in "${pip-packages[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${pip-packages}"
    pip install ${pip-packages}
    echo ""
    echo "#####"
    echo ""
done

echo "#####"
echo "Install pip3 packages"
for font in "${pip-packages[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${pip-packages}"
    pip3 install --user  ${pip-packages}
    echo ""
    echo "#####"
    echo ""
done

go install github.com/nikitavoloboev/gitupdate@latest

echo "install nerd fonts"
#nerdfonts

version='2.1.0'
fonts_dir="${HOME}/.local/share/fonts"

if [[ ! -d "$fonts_dir" ]]; then
    mkdir -p "$fonts_dir"
fi


for font in "${fonts[@]}"; do
    zip_file="${font}.zip"
    download_url="https://github.com/ryanoasis/nerd-fonts/releases/download/v${version}/${zip_file}"
    echo "Downloading $download_url"
    wget "$download_url"
    unzip "$zip_file" -d "$fonts_dir"
    rm "$zip_file"
done

if [ "${MACH}" = "WSL" ]; then
    echo SH_THEME="[boot]" /etc/wsl.conf
    echo SH_THEME="systemd=true" >> /etc/wsl.conf
fi

find "$fonts_dir" -name '*Windows Compatible*' -delete

fc-cache -f
echo "done!"

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

echo "#####"
echo "Install vscode extensions"
for font in "${vscode-extensions[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${vscode-extensions}"
    code --install-extension ${vscode-extensions}
    echo ""
    echo "#####"
    echo ""
done
    



echo "###################"
echo ""
echo "SCRIPT COMPLETE!!"
echo ""
echo "Please reboot (required for snapd to work) and run 2nd-stage-install.sh"
echo ""
echo "###################"
