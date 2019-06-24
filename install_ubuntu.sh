#!/usr/bin/env bash

# Update sources
apt-get update

# Apt Packages
apt-get -f install synaptic copyq steam-installer vagrant virtualbox geany

# Autokey
dpkg -i https://github.com/autokey/autokey/releases/download/v0.95.7/autokey-common_0.95.7-0_all.deb
dpkg -i https://github.com/autokey/autokey/releases/download/v0.95.7/autokey-gtk_0.95.7-0_all.deb

# Dropbox 
dpkg -i https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb

# Zoom
dpkg -i https://zoom.us/client/latest/zoom_amd64.deb

# Chrome
dpkg -i https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Install
apt-get -f install

# Various Snaps
snap install gimp
snap install spotify
snap install postman
snap install slack --classic
snap install code --classic
snap install intellij-idea-community --classic
snap install phpstorm --classic
snap install firefox
snap install vlc
snap install inkscape

# Prep for AppImages
mkdir -p ~/Applications/

# Standard Notes
cd ~/Applications/
wget https://github.com/standardnotes/desktop/releases/download/v3.0.14/standard-notes-3.0.14-x86_64.AppImage
chmod +x standard-notes-3.0.14-x86_64.AppImage

# Foxit PDF Reader
# wget http://cdn09.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.4/en_us/FoxitReader.enu.setup.2.4.4.0911.x64.run.tar.gz