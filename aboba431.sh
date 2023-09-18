#!/bin/bash
cd ~
mkdir Leocad && cd Leocad
wget https://github.com/leozide/leocad/releases/download/v23.03/LeoCAD-Linux-23.03-x86_64.AppImage
chmdo a+x  LeoCAD-Linux-23.03-x86_64.AppImage
cd ~
mkdir Freecad && cd  Freecad
wget https://github.com/FreeCAD/FreeCAD/releases/download/0.21.1/FreeCAD_0.21.1-Linux-x86_64.AppImage
chmod a+x  FreeCAD_0.21.1-Linux-x86_64.AppImage
cd ~
mkdir Pascal && cd Pascal
wget https://pascalabc.net/downloads/PascalABCNETLinux.zip
unzip PascalABCNETLinux.zip

apt install mono-complete
sudo apt-get install gcc g++
sudo apt-get install cmake
sudo apt-get install python3
sudo apt-get install zlibc zlib1g zlib1g-dev
sudo apt-get install qt5-default qttools5-dev-tools libqt5webkit5-dev libqt5multimediawidgets5 libqt5network5 libqt5svg5-dev libqt5x11extras5-dev qtscript5-dev
sudo apt-get install git-core
cd ~
cd /opt
git clone https://git.niisi.ru/kumir/kumir2.git
cd kumir2
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DUSE_QT=5 ..
make
sudo make install

