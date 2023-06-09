#!/bin/bash
#ubuntu
#export HISTIGNORE='*sudo -S*'

OS=$(uname -s)
REV=$(uname -r)
MACH=$(uname -m)

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
