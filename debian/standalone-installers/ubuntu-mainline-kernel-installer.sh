#!/bin/bash

# Add Ubuntu Mainline Kernel Installer Repo
sudo add-apt-repository ppa:cappelikan/ppa

# Update and Upgrade
sudo apt update

# Install Ubuntu Mainline Kernel Installer
sudo apt install -y mainline
