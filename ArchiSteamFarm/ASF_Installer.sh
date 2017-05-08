echo "deb http://download.mono-project.com/repo/debian wheezy main # Yes, wheezy also covers other versions and distributions" >> /etc/apt/sources.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
sudo apt-get update -y
sudo apt-get install ca-certificates-mono mono-complete -y
cd /home/pi/
mkdir ArchiSteamFarm
cd ArchiSteamFarm
wget https://github.com/MrHDR/RaspberryPi/raw/master/ArchiSteamFarm/ASF.png
wget https://github.com/JustArchi/ArchiSteamFarm/releases/download/2.3.1.4/ASF.zip
unzip ASF.zip
sudo rm ASF.zip
cd /home/pi/Desktop
wget https://raw.githubusercontent.com/MrHDR/RaspberryPi/master/ArchiSteamFarm/ASFC.desktop
wget https://raw.githubusercontent.com/MrHDR/RaspberryPi/master/ArchiSteamFarm/ASF.desktop
wget https://raw.githubusercontent.com/MrHDR/RaspberryPi/master/ArchiSteamFarm/updater.sh
sudo chmod -R 777 /home/pi/ArchiSteamFarm
