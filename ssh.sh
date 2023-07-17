#!/bin/bash

# Step 1: Update System Packages
sudo apt update

# Step 2: Install sshserver
sudo apt install openssh-server

# Step 3: Check if ssh service is active
sudo systemctl status ssh

# Check if ssh service is inactive and configure firewall
if [ $? -ne 0 ]; then
    # Allowing SSH through the firewall
    sudo ufw allow ssh

    # Enabling SSH on the remote device
    sudo systemctl enable ssh

    # Checking ssh service status again
    sudo systemctl status ssh
fi
