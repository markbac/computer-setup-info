#!/bin/bash
#ubuntu
#export HISTIGNORE='*sudo -S*'

OS=$(uname -s)
REV=$(uname -r)
MACH=$(uname -m)

declare -a aptpackages=(
    nano
    build-essential 
    procps  # The Procps package provides programs to monitor and halt system processes.
    curl #curl is a command-line tool to transfer data to or from a server
    file 
    cmake
    git 
    python3 
    python3-setuptools 
    python3-pip 
    dotnet-sdk-6.0  
    pkg-config
    git
    inetutils-traceroute 
    net-tools
    wireless-tools 
    graphviz 
    libgraphviz-dev 
    x11-apps 
    libxcb1-dev
    libxcb-render0-dev
    libxcb-shape0-dev
    libxcb-xfixes0-dev
    libdbus-glib-1-2
    libncurses5-dev
    libfreetype6-dev
    libfontconfig1-dev 
    libxkbcommon-dev
    mate-terminal # terminal app, can be used in chromeos so you have nerd fonts
    vnstat # is a network utility for the Linux operating system
    vnstati # The purpose of vnstati is to provide image output support for statistics collected using vnstat
    neofetch # Neofetch is a super-convenient command-line utility used to fetch system information
    wget # Wget is a command-line utility for downloading files from the web
    htop  # htop command in Linux system is a command line utility that allows the user to interactively monitor the system's vital resources
    bat # Say hello to bat Linux command, which is a cat command written in Rust programming language
    tree  # The tree is a tiny, cross-platform command-line program used to recursively list or display the content of a directory in a tree-like format
    #gccgo-go # The gccgo command may be used to compile Go source code into an object file, link a collection of object files together, or do both in sequence
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
    #nedit # NEdit, the Nirvana editor, is a text editor and source code editor for the X Window System
    #emacs # Emacs, originally named EMACS, is a family of text editors that are characterized by their extensibility.
    #dolphin  # Dolphin is a free and open source file manager included in the KDE Applications bundle
    #gnome-system-monitor 
    flatpak  # Flatpak, formerly known as xdg-app, is a utility for software deployment and package management for Linux.
    #python3-sense-emu # This is the Python 3 version of the Sense HAT Emulator library.
    #sense-emu-tools
    #geany # Geany is a free and open-source lightweight GUI text editor using Scintilla and GTK, including basic IDE features. 
    #vlc 
    #gimp
    python3-tk 
    #thonny # Thonny, Python IDE for beginners
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
    #wordgrinder # WordGrinder is a word processing application for the unix terminal or Windows console
    chafa # hafa is a command-line utility that converts image data, including animated GIFs, into graphics formats or ANSI/Unicode character art suitable for display in a terminal. 
    #googler # googler is a power tool to Google (web, news, videos and site search) from the command-line.
    ncdu # The ncdu command provides a useful and convenient way to view disk usage.
    stacer #Stacer is an open source system optimizer and application monitor that helps users to manage entire system
    #zim # Zim is a graphical text editor used to maintain a collection of wiki pages
    zsh
    vnstat # is a network utility for the Linux operating system
    vnstati # is used to produce graphical images representing the network traffic as graphs
    slurm # Realtime network interface monitor
    bmon # is a simple yet powerful, text-based network monitoring and debugging tool for Unix-like systems, which captures networking related statistics and displays them visually in a human friendly format
    tcptrack # tcptrack displays the status of TCP connections that it sees on a given network interface. tcptrack monitors their state and displays information such as state, source/destination addresses and bandwidth usage in a sorted, updated list
    speedometer # shows a graph of your current and past network speed in your console, letting you see your network connection’s up and downstream speed and history at a glance
    cpu-x # is a Free software that gathers information on CPU, motherboard and more.
    lshw # Hardware Lister (aka the lshw) command, is a small Linux utility that users can use to find out information about their hardware
    hardinfo # is an easy-to-use Linux system info tool
    #texlive-latex-base # install pdf latex to create latex docs
    #texlive-fonts-recommended 
    #texlive-fonts-extra 
    #texlive-latex-extra
    plantuml
    lsd
    bat
    duf # disk usage
    zoxide # cd alternative
    hyperfine # comand line benchmarking
    nnn # file manager
)

echo "apt update"
echo $ProvidedPasword | sudo -S apt update
echo "apt upgrade"
echo $ProvidedPasword | sudo -S apt -y upgrade
echo "apt install packages"

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
