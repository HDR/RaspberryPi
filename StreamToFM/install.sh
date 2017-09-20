sudo apt-get install git
git clone https://github.com/somu1795/fm_transmitter.git
cd fm_transmitter
sudo apt-get install make gcc g++
make

sudo apt-get install libmp3lame-dev
cd /usr/src
sudo git clone git://git.videolan.org/x264
cd x264
sudo ./configure --host=arm-unknown-linux-gnueabi --enable-static --disable-opencl --enable-shared
sudo make
sudo make install

cd /usr/src
sudo git clone git://source.ffmpeg.org/ffmpeg.git ffmpeg
cd ffmpeg
sudo ./configure --arch=armv7-a --target-os=linux --enable-gpl --enable-libx264 --enable-nonfree --enable-libmp3lame --extra-cflags='-march=armv7-a -mfpu=neon-vfpv4 -mfloat-abi=hard'
sudo make -j4
sudo make install
sudo ldconfig

sudo apt-get install sox libsox-fmt-all
