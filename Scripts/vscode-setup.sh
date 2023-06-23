#!/bin/bash
#ubuntu
#export HISTIGNORE='*sudo -S*'

OS=$(uname -s)
REV=$(uname -r)
MACH=$(uname -m)

declare -a vscodeextensions=(
    42Crunch.vscode-openapi
    aaron-bond.better-comments
    4ops.terraform
    aaron-bond.better-comments
    alefragnani.project-manager
    anweber.httpbook
    anweber.vscode-httpyac
    aprilandjan.ascii-tree-generator
    asyncapi.asyncapi-preview
    AykutSarac.jsoncrack-vscode
    batisteo.vscode-django
    bierner.markdown-mermaid
    BitBelt.converttoasciiart
    bmlsolutions.dotuml
    bpruitt-goddard.mermaid-markdown-syntax-highlighting
    buianhthang.xml2json
    chrmarti.regex
    daiyy.quick-html-previewer
    DavidAnson.vscode-markdownlint
    derek-nextty.openapi-viewer
    docsmsft.docs-yaml
    donjayamanne.python-environment-manager
    donjayamanne.python-extension-pack
	DotJoshJohnson.xml
    DougFinke.vscode-pandoc
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
    Markwhen.markwhen
    marp-team.marp-vscode
    MartinPicard.vscode-openapi
    mermade.openapi-lint
    mirone.milkdown
    mkloubert.vscode-kanban
    mohsen1.prettify-json
    ms-dotnettools.csharp
    ms-python.python
 #   ms-python.vscode-pylance
    ms-toolsai.jupyter-keymap
    ms-vscode-remote.remote-wsl
    ms-vscode.powershell
    ms-vsliveshare.vsliveshare
    ms-vsliveshare.vsliveshare-audio
    njpwerner.autodocstring
    nopeslide.vscode-drawio-plugin-mermaid
    philosowaffle.openapi-designer
    pomdtr.excalidraw-editor
    rangav.vscode-thunder-client
    redhat.vscode-xml
    redhat.vscode-yaml
	RoeySagie.markdown-sort
    shd101wyy.markdown-preview-enhanced
    simonguo.vscode-markdown-table-sort
    stoplight.spectral
    streetsidesoftware.code-spell-checker
    tberman.json-schema-validator
    tehpeng.diagramspreviewer
    telesoho.vscode-markdown-paste-image
    tintinweb.graphviz-interactive-preview
    tomoki1207.pdf
    tonybaloney.vscode-pets
    VisualStudioExptTeam.intellicode-api-usage-examples
    VisualStudioExptTeam.vscodeintellicode
    VolcanicBytes.xsd-navigator
    voldemortensen.rainbow-tags
    vstirbu.vscode-mermaid-preview
    vscode-icons-team.vscode-icons
    waleedashraf.asyncapi-validator-vscode
    wayou.vscode-todo-highlight
    wholroyd.jinja
    wraith13.windows-terminal
    yzane.markdown-pdf
    yzhang.markdown-all-in-one
    zaaack.markdown-editor
    zoellner.openapi-preview
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
