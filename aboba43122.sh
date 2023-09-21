#!/bin/bash

cd /home/astra
if [ -d  Leocad ]
then
echo "Католог Leocad  уже существует"
else
mkdir Leocad && cd Leocad;wget https://github.com/leozide/leocad/releases/download/v23.03/LeoCAD-Linux-23.03-x86_64.AppImage;chmod a+x LeoCAD-Linux-23.03-x86_64.AppImage

fi


cd /home/astra
if [ -d Freecad ]
then
echo "Католог Freecad  уже существует"
else

mkdir Freecad && cd  Freecad;wget https://github.com/FreeCAD/FreeCAD/releases/download/0.21.1/FreeCAD_0.21.1-Linux-x86_64.AppImage;chmod a+x  FreeCAD_0.21.1-Linux-x86_64.AppImage

fi

cd /home/astra
if [ -d  Pascal ]
then 
echo "Католог  Pascal уже существует"
else
mkdir Pascal && cd  Pascal;wget https://pascalabc.net/downloads/PascalABCNETLinux.zip;unzip PascalABCNETLinux.zip

fi
cd /home/astra

apt install mono-complete -y
sudo apt-get install gcc g++ -y
sudo apt-get install cmake -y
sudo apt-get install python3 -y
sudo apt-get install zlibc zlib1g zlib1g-dev -y
sudo apt-get install qt5-default qttools5-dev-tools libqt5webkit5-dev libqt5multimediawidgets5 libqt5network5 libqt5svg5-dev libqt5x11extras5-dev qtscript5-dev -y
sudo apt-get install git-core -y
sudo apt install wine -y

cd /opt
if [ -d  kumir2 ]
then
echo "Католог kumir2  уже существует"
else
git clone https://git.niisi.ru/kumir/kumir2.git;cd kumir2;mkdir build && cd build;cmake -DCMAKE_INSTALL_PREFIX=/usr -DUSE_QT=5 ..;sudo make;sudo make install
fi


cd /home/astra
sudo cp -r Pascal Freecad Leocad /home/student
cd /opt 
sudo cp -r kumir2 /home/student
