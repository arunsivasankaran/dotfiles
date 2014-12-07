#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `instal.sh` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

mkdir ~/install_temp
cd ~/install_temp

# Installing Chrome
echo "Installing Chrome"
curl -L -O "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
hdiutil mount -nobrowse googlechrome.dmg
cp -R "/Volumes/Google Chrome/Google Chrome.app" /Applications
hdiutil unmount "/Volumes/Google Chrome"
echo "done.."

# Installing Firefox
echo "Installing Firefox"
curl -L -o Firefox.dmg "http://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US"
hdiutil mount -nobrowse Firefox.dmg
cp -R "/Volumes/Firefox/Firefox.app" /Applications
hdiutil unmount "/Volumes/Firefox"
echo "done.."

# Installing Opera
echo "Installing Opera"
curl -L -o Opera.dmg "http://www.opera.com/download/get/?id=37460&amp;location=399&amp;nothanks=yes&amp;sub=marine"
yes | hdiutil mount -nobrowse Opera.dmg > /dev/null
cp -R "/Volumes/Opera/Opera.app" /Applications
hdiutil unmount "/Volumes/Opera"
echo "done.."

# Installing Spotify
echo "Installing Spotify"
curl -L -O "http://download.spotify.com/Spotify.dmg"
hdiutil mount -nobrowse Spotify.dmg
cp -R "/Volumes/Spotify/Spotify.app" /Applications
hdiutil unmount "/Volumes/Spotify"
echo "done.."

# Installing VLC Player
echo "Installing VLC"
curl -L -o vlc.dmg "http://get.videolan.org/vlc/2.1.5/macosx/vlc-2.1.5.dmg"
hdiutil mount -nobrowse vlc.dmg -mountpoint /Volumes/vlc
cp -R "/Volumes/vlc/VLC.app" /Applications
hdiutil unmount "/Volumes/vlc"
echo "done.."

# Installing Transmission
echo "Installing Transmission"
curl -L -o Transmission.dmg "https://transmission.cachefly.net/Transmission-2.84.dmg"
hdiutil mount -nobrowse Transmission.dmg
cp -R "/Volumes/Transmission/Transmission.app" /Applications
hdiutil unmount "/Volumes/Transmission"
echo "done.."

# Installing Skype
echo "Installing Skype"
curl -L -O "http://www.skype.com/go/getskype-macosx.dmg"
hdiutil mount -nobrowse getskype-macosx.dmg
cp -R "/Volumes/Skype/Skype.app" /Applications
hdiutil unmount "/Volumes/Skype"
echo "done.."

# Installing Dropbox
echo "Installing Dropbox"
curl -L -o Dropbox.dmg "https://www.dropbox.com/download?plat=mac"
hdiutil mount -nobrowse Dropbox.dmg
cp -R "/Volumes/Dropbox Installer/Dropbox.app" /Applications
hdiutil unmount "/Volumes/Dropbox Installer"
echo "done.."

# Installing Google Drive
echo "Installing Google Drive"
curl -L -O "https://dl-ssl.google.com/drive/installgoogledrive.dmg"
hdiutil mount -nobrowse installgoogledrive.dmg
cp -R "/Volumes/Install Google Drive/Google Drive.app" /Applications
hdiutil unmount "/Volumes/Install Google Drive"
echo "done.."

# Installing caffeine
echo "Installing Caffeine"
curl -L -o Caffeine.zip "http://download.lightheadsw.com/download.php?software=caffeine"
unzip Caffeine.zip
mv Caffeine.app /Applications
echo "done.."

# Installing Sublime Text 3 Beta
echo "Installing Sublime Text 3"
curl -L -o "Sublime Text 3.dmg" "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203065.dmg"
hdiutil mount -nobrowse "Sublime Text 3.dmg"
cp -R "/Volumes/Sublime Text/Sublime Text.app" /Applications
hdiutil unmount "/Volumes/Sublime Text/Sublime Text.app"
echo "done.."

# Installing iterm2
echo "Installing iTerm2"
curl -L -o iTerm2.zip "http://www.iterm2.com/downloads/stable/iTerm2_v2_0.zip"
unzip iTerm2.zip
mv iTerm.app /Applications
echo "done.."

# Installing Transmit
echo "Installing Transmit"
curl -L -o Transmit.zip "http://download.panic.com/transmit/Transmit%204.4.8.zip"
unzip Transmit.zip
mv "Transmit.app" /Applications
echo "done.."

# Installing Tower
echo "Installing Tower"
curl -L -o tower.zip "http://www.git-tower.com/download"
unzip tower.zip
mv "Tower.app" /Applications
echo "done.."

# Installing Alfred
echo "Installing Alfred"
curl -L -o Alfred.zip "https://cachefly.alfredapp.com/Alfred_2.4_279.zip"
unzip Alfred.zip
mv "Alfred 2.app" /Applications
echo "done.."

# Installing Evernote
echo "Installing Evernote"
curl -L -o Evernote.dmg "http://evernote.com/download/get.php?file=EvernoteMac"
yes | hdiutil mount -nobrowse Evernote.dmg -nobrowse > /dev/null
cp -R "/Volumes/Evernote/Evernote.app" /Applications
hdiutil unmount "/Volumes/Evernote"
echo "done.."

# Spectacle
# Onyx
# Twitter
cd ../
echo "All Done..cleaning up..."
rm -rf install_temp
echo "Thank You, Come Again"

