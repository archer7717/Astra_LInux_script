# Astra_LInux_script
nano /etc/apt/sources.list
deb https://archive.debian.org/debian/ stretch main contrib non-free

sudo apt update

sudo apt install dirmngr

sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com EF0F382A1A7B6500
sudo apt update
sudo apt upgrade
