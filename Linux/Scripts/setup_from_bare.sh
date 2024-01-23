#!/bin/bash
#ubuntu
#export HISTIGNORE='*sudo -S*'

export OS=$(uname -s)
export REV=$(uname -r)
export MACH=$(uname -m)

start_time="$(date +%s)"

export HISTIGNORE='*sudo -S*'

echo "Please supply sudo password to script"
read ProvidedPasword

export $ProvidedPasword

./apt-setup.sh
./git-ssh-config.sh
./rust-setup.sh
./pip-setup.sh
./font-setup.sh
./vscode-install.sh
./vscode-setup.sh
./othersetup.sh
./final-setup.sh

end_time="$(date +%s)"

run_time = $((end_time-start_time))

echo "###################"
echo ""
echo "SCRIPT COMPLETE!!"
echo "It took ${run_time} seconds!"
echo ""
echo "Please reboot (required for snapd to work) and run 2nd-stage-install.sh"
echo ""
echo "###################"
