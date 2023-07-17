#!/bin/bash

# Install dependencies
sudo apt update
sudo apt install -y novnc websockify

# Start NoVNC service
sudo systemctl start novnc

echo "NoVNC setup completed."
