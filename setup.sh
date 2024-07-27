#!/bin/sh

# This file is only for a quick setup process in fresh re-install of proxmox

# Add the non production repo
echo "deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription" | sudo tee -a /etc/apt/sources.list

apt update && sudo apt dist-upgrade -y

# Install the Packages
apt install xfce4 chromium lightdm -y

adduser bunny

systemctl start lightdm
