#!/bin/bash
#ubuntu
#export HISTIGNORE='*sudo -S*'

OS=$(uname -s)
REV=$(uname -r)
MACH=$(uname -m)

echo "set up ssh"
ssh-keygen -t ed25519 -C "mark@bacon.me.uk"
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
