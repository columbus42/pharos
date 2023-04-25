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
sudo dnf install -y sublime-text vlc audacity terminator emacs transmission firefox chromium google-chrome-stable lpf-spotify-client gimp handbrake htop neofetch filezilla gparted fastfetch VirtualBox gnome-tweak-tool nemo papirus-icon-theme gnome-extensions-app file-roller grub-customizer breeze-cursor-theme libreoffice inkscape

sudo dnf install -y p7zip-*
sudo dnf install -y ffmpeg --allowerasing

# Remove software
sudo dnf remove -y nautilus
sudo dnf remove -y thunderbird
