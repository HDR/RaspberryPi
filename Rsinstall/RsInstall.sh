#!/bin/bash
sudo apt-get update
sudo apt-get install default-jdk -y
mkdir /home/pi/.jagex_cache_32
mkdir /home/pi/.jagex_cache_32/runescape
mkdir /home/pi/.jagex
mkdir /home/pi/.jagex/runescape
mkdir /home/pi/.jagex/runescape/bin
mkdir /home/pi/.jagex/runescape/images
wget -P /home/pi/.jagex/runescape/bin https://github.com/HDR/RaspberryPi/raw/master/Rsinstall/jagexappletviewer.jar
wget -P cd /home/pi/.jagex/runescape/image https://raw.githubusercontent.com/HDR/RaspberryPi/master/Rsinstall/jagexappletviewer.png
wget -P cd /home/pi/.jagex/runescape/image https://raw.githubusercontent.com/HDR/RaspberryPi/master/Rsinstall/jagexappletvieweros.png
wget -P /home/pi/Desktop https://github.com/HDR/RaspberryPi/raw/master/Rsinstall/Rs3.desktop
wget -P /home/pi/Desktop https://github.com/HDR/RaspberryPi/raw/master/Rsinstall/OSRS.desktop
exit


