#!/bin/bash
RED="\e[31m"
GREEN="\e[32m"
BLUE="\e[34m"
echo -e " ___                 __         .__  .__     ____  __.      .__  .__"
echo -e "|   | ____   _______/  |______  |  | |  |   |    |/ _|____  |  | |__|"
echo -e "|   |/    \ /  ___/\   __\__  \ |  | |  |   |      < \__  \ |  | |  |"
echo -e "|   |   |  \\___ \  |  |  / __ \|  |_|  |__ |    |  \ / __ \|  |_|  |"
echo -e "|___|___|  /____  > |__| (____  /____/____/ |____|__ (____  /____/__|"
echo -e "         \/     \/            \/                    \/    \/"
echo -e "${GREEN}INSTALL ${RED}KALI"
echo -e "${BLUE}Script is starting..."
sleep 3
echo -e "${GREEN}Script has been started."

# Run update and upgrade
apt update && apt upgrade

# Check if wget is installed
if command -v wget &> /dev/null
then
    echo -e "${GREEN}wget is already installed."
else
    echo -e "${RED}wget is not installed. Installing wget..."
    apt install wget
    echo -e "${GREEN}wget has been installed."
fi

# Run the specified wget command
echo -e "${GREEN}Installing Kali installation script"
wget -O install-nethunter-termux https://offs.ec/2MceZWr

# Give execute permissions to the downloaded script
echo -e "${BLUE}Executing Kali script"
chmod +x install-nethunter-termux

echo -e "${GREEN}Running Kali Install script"
./install-nethunter-termux
