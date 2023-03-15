#!/bin/bash

# Fedora 29
#sudo rpm -Uvh http://mirror.ppa.trinitydesktop.org/trinity/trinity/rpm/f29/trinity-r14/RPMS/noarch/trinity-repo-14.0.6-1.fc29.noarch.rpm

# Fedora 37
sudo rpm -Uvh http://mirror.ppa.trinitydesktop.org/trinity/rpm/f37/trinity-r14/RPMS/noarch/trinity-repo-14.0.6-1.fc29.noarch.rpm

# Select your install
#sudo dnf install trinity-tdebase #Minimal
#sudo dnf install trinity-desktop #Full w/o Apps
#sudo dnf install trinity-desktop-all #Full w/ Apps
