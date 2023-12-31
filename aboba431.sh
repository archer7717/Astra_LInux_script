#!/bin/bash
cd /home/astra
mkdir Leocad1 && cd Leocad1
wget https://github.com/leozide/leocad/releases/download/v23.03/LeoCAD-Linux-23.03-x86_64.AppImage
chmod a+x  LeoCAD-Linux-23.03-x86_64.AppImage
cd /home/astra
mkdir Freecad1 && cd  Freecad1
wget https://github.com/FreeCAD/FreeCAD/releases/download/0.21.1/FreeCAD_0.21.1-Linux-x86_64.AppImage
chmod a+x  FreeCAD_0.21.1-Linux-x86_64.AppImage
cd /home/astra
mkdir Pascal1 && cd Pascal1
wget https://pascalabc.net/downloads/PascalABCNETLinux.zip
unzip PascalABCNETLinux.zip

apt install mono-complete -y
sudo apt-get install gcc g++ -y
sudo apt-get install cmake -y
sudo apt-get install python3 -y
sudo apt-get install zlibc zlib1g zlib1g-dev -y
sudo apt-get install qt5-default qttools5-dev-tools libqt5webkit5-dev libqt5multimediawidgets5 libqt5network5 libqt5svg5-dev libqt5x11extras5-dev qtscript5-dev -y
sudo apt-get install git-core -y
sudo apt install wine -y
cd /home/astra
cd /opt
git clone https://git.niisi.ru/kumir/kumir2.git
cd kumir3
mkdir build1 && cd build1
cmake -DCMAKE_INSTALL_PREFIX=/usr -DUSE_QT=5 ..
make
sudo make install


