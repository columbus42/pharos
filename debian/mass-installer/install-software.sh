#!/bin/bash

# Add Ubuntu Mainline Kernel Installer Repo
sudo add-apt-repository ppa:cappelikan/ppa

# Add Sublime Text GPG Key and Repo
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

# Add Spotify GPG Key and Repo
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# Purge Rhythmbox
sudo apt purge -y rhythmbox

# Update and Upgrade
sudo apt update
sudo apt full-upgrade -y

# Install Programs
sudo apt install -y mainline
sudo apt install -y sublime-text
sudo apt install -y spotify-client
sudo apt install -y vlc
sudo apt install -y audacity
sudo apt install -y terminator
sudo apt install -y emacs
sudo apt install -y transmission
sudo apt install -y thunderbird
sudo apt install -y clementine
sudo apt install -y firefox
sudo apt install -y chromium-browser
sudo apt install -y libreoffice
sudo apt install -y gimp 
sudo apt install -y handbrake
sudo apt install -y flameshot
sudo apt install -y obs-studio
sudo apt install -y inkscape
sudo apt install -y htop
sudo apt install -y simplenote
sudo apt install -y apt-transport-https
sudo apt install -y code
sudo apt install -y p7zip-full 
sudo apt install -y p7zip-rar
sudo apt install -y ffmpeg
sudo apt install -y filezilla
sudo apt install -y gparted
sudo apt install -y build-essential gcc make perl dkms
sudo apt install -y ubuntu-restricted-extras
#sudo apt install -y lmms
#sudo apt install -y openshot
# Foxit Reader needs to be installed manually from website
