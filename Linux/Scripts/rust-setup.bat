@echo off
setlocal enabledelayedexpansion

set "rustpackages=(
    du-dust
    tokei
    bottom
    gitui
    webget
    macchina
    eureka
    lsd
    bat
    bandwhich
    broot
    dua
    mdbook
    mdbook-pdf
    mdbook-plantuml
    mdbook-codeblocks
    mdbook-mermaid
    lfs
    mdcat
    procs
    topgrade
    cargo-update
    trippy
    onefetch
    rust-kanban
    kanorg
    ttdl
    pask
    task-picker
    todo-bin
    rink
    alacritty
    rh
)"

echo #####
echo Install rust packages
for %%i in (%rustpackages%) do (
    echo #####
    echo.
    echo Installing %%i
    cargo install %%i
    echo.
    echo #####
    echo.
)

endlocal
