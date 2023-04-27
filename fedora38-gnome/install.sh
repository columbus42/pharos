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

# Install adw-gtk3 Theme
sudo dnf install -y ninja-build git meson sassc
git clone https://github.com/lassekongo83/adw-gtk3.git
cd adw-gtk3
meson setup build
sudo ninja -C build install

# Remove software
sudo dnf remove -y nautilus thunderbird gnome-contacts gnome-tour gnome-connections gnome-maps libreoffice*
