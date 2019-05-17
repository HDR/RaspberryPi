#!/bin/bash
sudo apt-get install dialog
sudo apt-get update | dialog --title "Updating Package database" --infobox "\nPlease wait\n" 5 50

sudo apt-get -y install oracle-java8-jdk | dialog --title "Installing Java 8 JDK" --infobox "\nThis might take a while, please wait\n" 5 50

dialog --title "Creating Folders" --infobox "\nPlease wait\n" 5 50

mkdir ~/.jagex_cache_32
mkdir ~/.jagex_cache_32/runescape
mkdir ~/.jagex
mkdir ~/.jagex/runescape
mkdir ~/.jagex/runescape/bin
mkdir ~/.jagex/runescape/images

dialog --title "Downloading & Installing Client" --infobox "\nPlease wait\n" 5 50
cd ~/.jagex/runescape/bin || exit
wget https://github.com/MrHDR/RaspberryPi/raw/JetsonNano/Rsinstall/jagexappletviewer.jar
cd ~/.jagex/runescape/images || exit
wget https://raw.githubusercontent.com/MrHDR/RaspberryPi/JetsonNano/Rsinstall/jagexappletviewer.png
wget https://raw.githubusercontent.com/MrHDR/RaspberryPi/JetsonNano/Rsinstall/jagexappletvieweros.png
cd ~/Desktop || exit
wget https://github.com/MrHDR/RaspberryPi/raw/JetsonNano/Rsinstall/Rs3.desktop
wget https://github.com/MrHDR/RaspberryPi/raw/JetsonNano/Rsinstall/OSRS.desktop

dialog --title "Runescape Installed" --msgbox "\nYou can launch the game from the destkop\n" 10 30
exit

