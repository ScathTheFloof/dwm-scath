#! /bin/sh

echo "ScathTheFloof's dwm build" | figlet

sleep 3s

echo "this script will use sudo to run some tasks"

# setting all the binaries as executable
sudo chmod +x bin/*

# Moving all the precompiled binaries to /usr/bin
sudo mv bin/picom /usr/bin
sudo mv bin/urxvt /usr/bin
sudo mv bin/urxvtd /usr/bin
sudo mv bin/i3lock /usr/bin

# Compiling all the suckless parts
make -C dwm-6.5
make -C dmenu-5.3
make -C slstatus-1.0

# installing all the suckless software
sudo make install -C dwm-6.5
sudo make install -C dmenu-5.3
sudo make install -C slstatus-1.0


echo "Installation complete" | figlet
