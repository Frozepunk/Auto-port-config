#!/bin/bash

# Step 1: Update System Packages
sudo apt update

# Step 2: Install vsftpd Server on Ubuntu
sudo apt install vsftpd

# Step 3: Launch and enable vsftpd service
sudo systemctl start vsftpd
sudo systemctl enable vsftpd

# Step 4: Backup Configuration Files
sudo cp /etc/vsftpd.conf /etc/vsftpd.conf_default

# Step 5: Create FTP User
read -p "Enter FTP username: " username
sudo useradd -m "$username"
sudo passwd "$username"

# Step 6: Configure Firewall to Allow FTP Traffic
sudo ufw allow 20/tcp
sudo ufw allow 21/tcp

echo "FTP server setup completed!"
