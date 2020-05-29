#!/bin/bash
sudo apt-get install dialog
sudo apt-get update | dialog --title "Updating Package database" --infobox "\nPlease wait\n" 5 50

sudo apt-get -y install default-jdk | dialog --title "Installing Java JDK" --infobox "\nThis might take a while, please wait\n" 5 50

dialog --title "Creating Folders" --infobox "\nPlease wait\n" 5 50

mkdir /home/pi/.jagex_cache_32
mkdir /home/pi/.jagex_cache_32/runescape
mkdir /home/pi/.jagex
mkdir /home/pi/.jagex/runescape
mkdir /home/pi/.jagex/runescape/bin
mkdir /home/pi/.jagex/runescape/images

dialog --title "Downloading & Installing Client" --infobox "\nPlease wait\n" 5 50
cd /home/pi/.jagex/runescape/bin || exit
wget https://github.com/HDR/RaspberryPi/raw/master/Rsinstall/jagexappletviewer.jar
cd /home/pi/.jagex/runescape/images || exit
wget https://raw.githubusercontent.com/HDR/RaspberryPi/master/Rsinstall/jagexappletviewer.png
wget https://raw.githubusercontent.com/HDR/RaspberryPi/master/Rsinstall/jagexappletvieweros.png
cd /home/pi/Desktop || exit
wget https://github.com/HDR/RaspberryPi/raw/master/Rsinstall/Rs3.desktop
wget https://github.com/HDR/RaspberryPi/raw/master/Rsinstall/OSRS.desktop

dialog --title "Runescape Installed" --msgbox "\nYou can launch the game from the destkop\n" 10 30
exit

