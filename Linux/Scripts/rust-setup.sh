#!/bin/bash
#ubuntu
#export HISTIGNORE='*sudo -S*'

OS=$(uname -s)
REV=$(uname -r)
MACH=$(uname -m)

declare -a rustpackages=(
    ##du-dust # Dust provides a nice alternative to the Linux du command. The dust command allows users to quickly check disk space usage on any Linux system and see the results in an intuitive graph-based format
    ##tokei  # Tokei is a program that displays statistics about your code
    ##bottom # A customizable cross-platform graphical process/system monitor for the terminal. 
    ##gitui # GitUI provides you with the comfort of a git GUI but right in your terminal
    #webget # get files from websites
    ##macchina # Fast, minimal and customizable system information frontend.
    ##eureka # is a CLI tool that allows you to quickly write down an idea using your preferred editor, and then have the idea committed and pushed to your idea git repository.
    ##lsd # An ls with a lot of pretty colors and awesome icons
    ##bat # another version of cat
    #Cherrybomb # A CLI tool that helps avoid undefined user behaviour by validating your API descriptions, to make sure key parts are not missing or vague.
    #openapi-fuzzer # Based on OpenAPI specification, openapi-fuzzer provides random data as inputs to the API endpoints in order to find bugs.
    #bandwhich # Terminal bandwidth utilization tool
    ##broot # is another rust tool, through which you can navigate directories.
    ##dua # "View disk space usage and delete unwanted data, fast."
    mdbook # Create books from markdown files. 
    mdbook-pdf
    mdbook-plantuml
    mdbook-codeblocks
    mdbook-mermaid
    lfs # A Linux utility to get information on filesystems; like df but better
    ##mdcat # Fancy cat for Markdown
    ##procs # A modern replacement for ps written in Rust
    ## topgrade # Upgrade all of your tools
    cargo-update
    ##trippy # A network diagnostic tool, inspired by mtr.
    #jex # is an interactive tool for querying json files
    ##onefetch
    rust-kanban # Kanban App for the terminal written in rust. This kanban app will allow the user to be more productive by prioritizing tasks and achieving goals faster
    kanorg # KanOrg allows you easily organize all your tasks from the terminal. https://lib.rs/crates/kanorg
    #ttdl # terminal todo list
    #pask # a personal task manager for the command line.
    #task-picker #Task Picker helps you to keep an overview about tasks from different task trackers, like GitHub or CalDAV.
    #todo-bin # todo cli
    rink # unit conversion
    ##alacritty # Terminal
    rh # http cli client
    # notes-cli # A simple note taking CLI https://github.com/wez470/notes-cli
    xplr
    ##git-delta
)

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
