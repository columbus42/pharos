#!/bin/bash

# Install RPMFusion Free
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# Install RPMFusion Non-free
sudo dnf install -y \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Install Sublime Text Repo
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo

# Update and upgrade packages
sudo dnf upgrade && sudo dnf update

# Install Programs
sudo dnf install -y sublime-text
sudo dnf install -y vlc
sudo dnf install -y audacity
sudo dnf install -y terminator
sudo dnf install -y emacs
sudo dnf install -y transmission
sudo dnf install -y firefox
sudo dnf install -y chromium
sudo dnf install -y google-chrome-stable
sudo dnf install -y lpf-spotify-client
sudo dnf install -y gimp
sudo dnf install -y handbrake
sudo dnf install -y htop
sudo dnf install -y neofetch
sudo dnf install -y p7zip-*
sudo dnf install -y ffmpeg --allowerasing
sudo dnf install -y filezilla
sudo dnf install -y gparted
sudo dnf install -y neofetch
sudo dnf install -y VirtualBox
sudo dnf install -y gnome-tweak-tool
sudo dnf install -y nemo
sudo dnf install -y papirus-icon-theme
sudo dnf install -y gnome-extensions-app
sudo dnf install -y file-roller
sudo dnf install -y grub-customizer
sudo dnf install -y breeze-cursor-theme
sudo dnf install -y libreoffice
sudo dnf install -y inkscape

# Remove software
sudo dnf remove -y nautilus
sudo dnf remove -y thunderbird
