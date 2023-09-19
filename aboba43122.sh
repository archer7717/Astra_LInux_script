#!/bin/bash
if [ -d  aboba ]
then
cd aboba
wget https://github.com/leozide/leocad/releases/download/v23.03/LeoCAD-Linux-23.03-x86_64.AppImage
chmod a+x  LeoCAD-Linux-23.03-x86_64.AppImage
else
mkdir aboba && cd aboba;wget https://github.com/leozide/leocad/releases/download/v23.03/LeoCAD-Linux-23.03-x86_64.AppImage;chmod a+x LeoCAD-Linux-23.03-x86_64.AppImage

fi
