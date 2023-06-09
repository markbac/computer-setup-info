#!/bin/bash
#ubuntu
#export HISTIGNORE='*sudo -S*'

OS=$(uname -s)
REV=$(uname -r)
MACH=$(uname -m)

declare -a pippackages=(
    wheel
    erd-from-json-table-schema 
    pdfkit 
    pywebcopy
    diagrams
    pdfminer.six
    'pdfminer.six[image]'
    #aspose-words
    adr-tools-python # tools to manage ADR (Architecture Design records)
    adr-viewer # Show off your Architecture Decision Records with an easy-to-navigate web page, either as a local web-server or generated static content
    pyadr # CLI to help with an ADR process lifecycle (proposal/acceptance/rejection/ deprecation/superseding) based on markdown files and git.
    pymypdf
    aafigure # convert ascii art to image
    httpie
)

declare -a pip3packages=(
    glances
    glances[all]
    aiohttp
    openleadr
)

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
