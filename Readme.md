# Linux 

## Intro

This Repo contains some scripts to automate setup of a Linux environment with my preferences and apps. It also has instructions for other tools etc that I may wish to use

## General

### Useful tools that are easy to script install

- [mdSilo](https://github.com/mdSilo/mdSilo-app/releases)
- [noted = scripted note taking based on markdown](https://github.com/scottashipp/noted)
  - [Also see - My Note Taking Process ](https://dev.to/scottshipp/my-note-taking-process-49pa) 

## OS Specific

### Chromebook

#### To reset/set password

1) sudo passwd 

#### vscode

https://code.visualstudio.com/Download Get the Arm64 version

### Windows

#### WSL Config

The .wslconfig will be stored in teh users HOME directory

```shell
# Settings apply across all Linux distros running on WSL 2
[wsl2]

# Limits VM memory to use no more than 8 GB, this can be set as whole numbers using GB or MB
memory=8GB

# Sets the VM to use two virtual processors
processors=3
```
