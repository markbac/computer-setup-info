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

declare -a vscodeextensions=(
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
    ms-edgedevtools.vscode-edge-devtools
    ms-python.isort
    ms-python.python
 #   ms-python.vscode-pylance
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

declare -a aptpackages=(
    build-essential 
    procps  # The Procps package provides programs to monitor and halt system processes.
    curl #curl is a command-line tool to transfer data to or from a server
    file 
    git 
    python3 
    python3-setuptools 
    python3-pip 
    git
    inetutils-traceroute 
    net-tools
    wireless-tools 
    graphviz 
    libgraphviz-dev 
    x11-apps 
    neofetch # Neofetch is a super-convenient command-line utility used to fetch system information
    wget # Wget is a command-line utility for downloading files from the web
    htop  # htop command in Linux system is a command line utility that allows the user to interactively monitor the system's vital resources
    bat # Say hello to bat Linux command, which is a cat command written in Rust programming language
    tree  # The tree is a tiny, cross-platform command-line program used to recursively list or display the content of a directory in a tree-like format
    gccgo-go # The gccgo command may be used to compile Go source code into an object file, link a collection of object files together, or do both in sequence
    nmon # Nigel's Monitor ( nmon ) is a system performance monitoring tool 
    atop # The atop command is a tool for monitoring system resources in Linux
    nodejs  
    gpg # GnuPG is a complete and free implementation of the OpenPGP standard as defined by RFC4880 (also known as PGP). GnuPG allows you to encrypt and sign your data and communications
    inxi # Inxi is a useful command line tool that can be used to create neatly categorized and systematic hardware information about your Linux PC
    unzip 
    neofetch # Neofetch is a command-line system information tool written in bash
    screenfetch # ScreenFetch is a System Information Tool designed primarily for Bash Shell but function with other shell environment as well.
    httrack # HTTrack is a free (GPL, libre/free software) and easy-to-use offline browser utility. It allows you to download a World Wide Web site from the Internet
    fd-find # fd is a program to find entries in your filesystem.
    wkhtmltopdf # wkhtmltopdf and wkhtmltoimage are open source (LGPLv3) command line tools to render HTML into PDF and various image formats 
    default-jre 
    exa # exa is an improved file lister with more features and better defaults
    debian-goodies # Debian-goodies is a package that includes toolbox-style utilities used to manage Debian and its derivative systems such as Ubuntu
    apt-transport-https 
    ca-certificates 
    gnupg 
    snapd # Snap is a software packaging and deployment system developed by Canonical for operating systems that use the Linux kernel and the systemd init system
    libssl-dev 
    nedit # NEdit, the Nirvana editor, is a text editor and source code editor for the X Window System
    emacs # Emacs, originally named EMACS, is a family of text editors that are characterized by their extensibility.
    dolphin  # Dolphin is a free and open source file manager included in the KDE Applications bundle
    gnome-system-monitor 
    flatpak  # Flatpak, formerly known as xdg-app, is a utility for software deployment and package management for Linux.
    python3-sense-emu # This is the Python 3 version of the Sense HAT Emulator library.
    sense-emu-tools
    geany # Geany is a free and open-source lightweight GUI text editor using Scintilla and GTK, including basic IDE features. 
    vlc 
    gimp
    python3-tk 
    thonny # Thonny, Python IDE for beginners
    psmisc # The Psmisc package contains three programs which help manage the /proc directory. Installed programs: fuser, killall and pstree
    bpytop  # he bpytop is an awesome resource monitor (disk, network, process, CPU) Linux, macOS, FreeBSD, and Unix-like system written in Python 3.
    software-properties-common 
    cmatrix # CMatrix is based on the screensaver from The Matrix website.
    cowsay # Cowsay is an udderly fantastic utility that takes text and outputs it as the spoken text of an ASCII-art bovine
    sl # sl is a joke software or classic UNIX game. It is a steam locomotive runs across your screen if you type “sl” (Steam Locomotive) instead of “ls” by mistake
    figlet # Figlet is a command line or a terminal utility available in the Linux operating system that allows us to create some amazing and appealing ASCII text banners.
    libaa-bin # AAlib is a portable ASCII art graphics library. Internally, it works like a graphics display, but the output is rendered into gorgeous platform independent ASCII graphics.
    lolcat # Lolcat is an utility for Linux, BSD and OSX which concatenates like similar to cat command and adds rainbow coloring to it.
    aewan #  Aewan is a multi-layered ascii-art/animation editor that produces both stand-alone cat-able art files
    jp2a # jp2a will convert JPEG images to ASCII characters. 
    cbonsai # cbonsai is a free and open-source bonsai tree generator
    most # most is a terminal pager program on Unix, OpenVMS, MS-DOS, Windows and Unix-like systems used to view (but not change) the contents of a text file one screen at a time.
    aview # Aview is a high quality ASCII art image viewer
    mc # GNU Midnight Commander is a free cross-platform orthodox file manager
    wordgrinder # WordGrinder is a word processing application for the unix terminal or Windows console
    chafa # hafa is a command-line utility that converts image data, including animated GIFs, into graphics formats or ANSI/Unicode character art suitable for display in a terminal. 
    googler # googler is a power tool to Google (web, news, videos and site search) from the command-line.
    ncdu # The ncdu command provides a useful and convenient way to view disk usage.
    stacer #Stacer is an open source system optimizer and application monitor that helps users to manage entire system
    zim # Zim is a graphical text editor used to maintain a collection of wiki pages
    zsh
    libdbus-glib-1-2
)

declare -a rustpackages=(
    du-dust # Dust provides a nice alternative to the Linux du command. The dust command allows users to quickly check disk space usage on any Linux system and see the results in an intuitive graph-based format
    tokei  # Tokei is a program that displays statistics about your code
    bottom # A customizable cross-platform graphical process/system monitor for the terminal. 
    gitui # GitUI provides you with the comfort of a git GUI but right in your terminal
    webget # get files from websites
    macchina # Fast, minimal and customizable system information frontend.
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

declare -a pippackages=(
    erd-from-json-table-schema 
    pdfkit 
    pywebcopy
    diagrams
    pdfminer.six
    'pdfminer.six[image]'
    aspose-words
)

declare -a pip3packages=(
    glances
    glances[all]
    aiohttp
)

echo "#####"
echo "Install apt packages"
for aptpackage in "${aptpackages[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${aptpackage}"
    echo $ProvidedPasword | sudo -S apt -y install ${aptpackage}
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
for rustpackage in "${rustpackages[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${rustpackage}"
    cargo install ${rustpackage}
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
for pippackage in "${pippackages[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${pippackage}"
    pip install ${pippackage}
    echo ""
    echo "#####"
    echo ""
done

echo "#####"
echo "Install pip3 packages"
for pip3package in "${pip3packages[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${pip3package}"
    pip3 install --user  ${pip3package}
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
    echo "[boot]" >> /etc/wsl.conf
    echo "systemd=true" >> /etc/wsl.conf
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
for vscodeextension in "${vscodeextensions[@]}"; do
    echo "#####"
    echo ""
    echo "Installing ${vscodeextension}"
    code --install-extension ${vscodeextension}
    echo ""
    echo "#####"
    echo ""
done
    
echo "install chat gpt"
python3 -m pip install --user git+https://github.com/mmabrouk/chatgpt-wrapper
playwright install firefox
chatgpt install
echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.bashrc
echo 'export PATH="$PATH:$HOME/.local/bin"' >> ~/.zshrc

echo 'export PAGER="most"'  >> ~/.bashrc
echo 'export PAGER="most"'  >> ~/.zshrc


echo "###################"
echo ""
echo "SCRIPT COMPLETE!!"
echo ""
echo "Please reboot (required for snapd to work) and run 2nd-stage-install.sh"
echo ""
echo "###################"
