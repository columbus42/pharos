#!/bin/bash

# INSTALLER FOR FEDORA 38 GNOME

# Install RPMFusion Free
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# Install RPMFusion Non-free
sudo dnf install -y \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Update packages
sudo dnf update -y
flatpak update -y

# Install Programs
sudo dnf install -y vlc audacity terminator emacs transmission firefox google-chrome-stable gimp handbrake htop neofetch filezilla gparted fastfetch VirtualBox gnome-tweak-tool nemo papirus-icon-theme gnome-extensions-app file-roller grub-customizer breeze-cursor-theme inkscape

sudo dnf install -y p7zip-*
sudo dnf install -y ffmpeg --allowerasing

flatpak install -y spotify onlyoffice sublime logseq

# Remove software
sudo dnf remove -y nautilus thunderbird libreoffice*
