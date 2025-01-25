#!/bin/bash

# This file is only for a quick setup process in fresh re-install of proxmox

# ----------------------------------------------------------------------------------- #
# Add the non production repo
# echo "deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription" | sudo tee -a /etc/apt/sources.list

# apt update && sudo apt dist-upgrade -y

# Install the Packages
# apt install xfce4 chromium lightdm -y

# Prompt for username
# read -p "Enter username: " username
# adduser "$username"

# Start the Desktop
# systemctl start lightdm
# ----------------------------------------------------------------------------------- #

# https://community-scripts.github.io/ProxmoxVE/scripts?id=post-pve-install
# https://raw.githubusercontent.com/community-scripts/ProxmoxVE/main/misc/post-pve-install.sh
wget -qLO - 

# Download the script from Github
wget -qLO /tmp/post-pve-install.sh https://github.com/community-scripts/ProxmoxVE/raw/main/misc/post-pve-install.sh

# Make the downloaded script executable
chmod +x /tmp/post-pve-install.sh

# Run the downloaded script
/tmp/post-pve-install.sh
