# RaspberryPi Scripts & Programs
Random code for RaspberryPi related stuff

## [ASF_Installer.sh](https://github.com/MrHDR/RaspberryPi/raw/master/ArchiSteamFarm/ASF_Installer.sh)
[ArchiSteamFarm](https://github.com/JustArchi/ArchiSteamFarm) Installer for Raspbian Jessie Full

Installs ArchiSteamFarm and adds desktop icons on your Raspberry pi.

### Usage
```
wget https://github.com/MrHDR/RaspberryPi/raw/master/ArchiSteamFarm/ASF_Installer.sh
sudo sh ./ASF_Installer.sh
sudo rm ./ASF_Installer.sh
```

Please note that it might take anything from 10-45 minutes to install.

## [RsInstall.sh](https://github.com/MrHDR/RaspberryPi/raw/master/Rsinstall/RsInstall.sh)
Runescape Installer for the Raspberry Pi

Warning: Rs3 will probably not work.(Transferring the cache from a java client on a pc will allow rs3 to run) OSRS However, will run on a Raspberry Pi 3B

Downloads the files and launchers to quickly launch RS3 Or OSRS from the desktop (Raspbian Full Only)

### Usage
```
wget https://github.com/MrHDR/RaspberryPi/raw/master/Rsinstall/RsInstall.sh
sudo sh ./RsInstall.sh
sudo rm RsInstall.sh
```
#### If you do not want to run my script and would rather set up and run the client manually you will need the following:

- The [Legacy Runescape Windows Client](http://www.runescape.com/downloads/runescape.msi?13042016)
- [lessmsi](https://github.com/activescott/lessmsi)
- The oracle-java8-jdk Package

Download the Windows Java client and lessmsi, open runescape.msi in lessmsi and extract jagexappletviewer.jar & jagexappletviewer.png

make the following folders under /home/pi

- .jagex_cache_32
- .jagex_cache_32/runescape
- .jagex
- .jagex/runescape
- .jagex/runescape/bin
- .jagex/runescape/images

Put jagexappletviewer.jar in .jagex/runescape/bin

Put jagexappletviewer.png in ./jagex/runescape/images

you can now run RS3 or OSRS with command line, using the following commands

OldSchool:
```
java -Xmx1024m -Djava.class.path=/home/pi/.jagex/runescape/bin/jagexappletviewer.jar -Dcom.jagex.config="http://oldschool.runescape.com/jav_config.ws" jagexappletviewer /home/pi/.jagex/runescape/images
```

Runescape 3:
```
java -Xmx1024m -Djava.class.path=/home/pi/.jagex/runescape/bin/jagexappletviewer.jar -Dcom.jagex.config="http://www.runescape.com/k=3/l=en/jav_config.ws" jagexappletviewer /home/pi/.jagex/runescape/images
```

Geting errors? try running the following commands
```
sudo apt-get update
sudo apt-get install oracle-java8-jdk
```
## [cpuled.py](https://github.com/MrHDR/RaspberryPi/raw/master/Blinkt/cpuled.py) (Broken, Do not use)
Utilizes [Blinkt](https://thepihut.com/products/blinkt) to display CPU Temperature in 8 stages using 8 RGB Led's

Example:

![Leds](http://i.imgur.com/GHo3ujM.png)


1 Led = Below 10 Celcius

2 Leds = Between 10 & 20 Celcius

3 Leds = Between 20 & 30 Celcius

4 Leds = Between 30 & 40 Celcius

5 Leds = Between 40 & 50 Celcius

6 Leds = Between 50 & 60 Celcius

7 Leds = Between 60 & 70 Celcius

8 Leds = Above 70 Celcius
