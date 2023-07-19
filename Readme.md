# README

## Linux 

### Intro

This Repo contains some scripts to automate setup of a Linux environment with my preferences and apps. It also has instructions for other tools etc that I may wish to use

### General

#### Useful tools that are easy to script install

- [mdSilo](https://github.com/mdSilo/mdSilo-app/releases)
- [noted = scripted note taking based on markdown](https://github.com/scottashipp/noted)
  - [Also see - My Note Taking Process ](https://dev.to/scottshipp/my-note-taking-process-49pa) 

#### nushell
``` sh
brew install nushell
```
``` sh
nano /home/mbacon/.config/nushell/config.nu
```
let-env PROMPT_COMMAND = { oh-my-posh --config ~/.poshthemes/M365Princess.omp.json }

##### oh my posh

(See this page)[https://ohmyposh.dev/docs/installation/prompt]


### OS Specific

#### Chromebook

#### To reset/set password

1) sudo passwd 

##### vscode

https://code.visualstudio.com/Download Get the Arm64 version

#### Windows

##### WSL Config

The .wslconfig will be stored in teh users HOME directory

```shell
# Settings apply across all Linux distros running on WSL 2
[wsl2]

# Limits VM memory to use no more than 8 GB, this can be set as whole numbers using GB or MB
memory=8GB

# Sets the VM to use two virtual processors
processors=3
```
## Windows

### choco

To install using PowerShell (see thsi linkj)[https://www.liquidweb.com/kb/how-to-install-chocolatey-on-windows/]

```sh
Set-ExecutionPolicy AllSigned
```

or

```sh
Set-ExecutionPolicy Bypass -Scope Process
```

```sh
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
```

#### nano

```sh
choco install nano -y
```

### Scooop

```sh
> Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
> irm get.scoop.sh | iex
```

### Rust

FIrst install Scoop

```sh
scoop install rustup
```

#### rustup

