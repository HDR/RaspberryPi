echo "deb http://download.mono-project.com/repo/debian wheezy main # Yes, wheezy also covers other versions and distributions" >> /etc/apt/sources.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
sudo apt-get update
sudo apt-get install ca-certificates-mono mono-complete
