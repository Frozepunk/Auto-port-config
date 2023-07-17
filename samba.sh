#!/bin/bash
sudo apt update
sudo apt install samba -y
whereis samba
systemctl status smbd
sudo mkdir -p /home/sharing