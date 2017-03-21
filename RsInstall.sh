mkdir $HOME/.jagex_cache_32
mkdir $HOME/.jagex_cache_32/runescape
mkdir $HOME/.jagex
mkdir $HOME/.jagex/runescape
mkdir $HOME/.jagex/runescape/bin
mkdir $HOME/.jagex/runescape/images
cd $HOME/.jagex/runescape/bin
wget https://github.com/MrHDR/RaspberryPi/raw/master/jagexappletviewer.jar
cd $HOME/.jagex/runescape/images
wget https://raw.githubusercontent.com/MrHDR/RaspberryPi/master/jagexappletviewer.png
cd $HOME/Desktop
wget https://raw.githubusercontent.com/MrHDR/RaspberryPi/master/Rs3Launcher.sh
wget https://raw.githubusercontent.com/MrHDR/RaspberryPi/master/OSRSLauncher.sh
chmod 777 ./Rs3Launcher.sh
chmod 777 ./OSRSLauncher.sh
