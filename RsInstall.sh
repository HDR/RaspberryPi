wget -O - https://content.runescape.com/downloads/ubuntu/runescape.gpg.key | apt-key add -
mkdir -p /etc/apt/sources.list.d
echo "deb https://content.runescape.com/downloads/ubuntu trusty non-free" > /etc/apt/sources.list.d/runescape.list
apt-get update
mkdir /home/pi/.jagex_cache_32
mkdir /home/pi/.jagex_cache_32/runescape
mkdir /home/pi/.jagex
mkdir /home/pi/.jagex/runescape
mkdir /home/pi/.jagex/runescape/bin
mkdir /home/pi/.jagex/runescape/images
cd /home/pi/.jagex/runescape/bin
wget https://github.com/MrHDR/RaspberryPi/raw/master/jagexappletviewer.jar
cd /home/pi/.jagex/runescape/images
wget https://raw.githubusercontent.com/MrHDR/RaspberryPi/master/jagexappletviewer.png
cd /home/pi/Desktop
wget https://github.com/MrHDR/RaspberryPi/raw/master/Rs3.desktop
wget https://github.com/MrHDR/RaspberryPi/raw/master/OSRS.desktop
