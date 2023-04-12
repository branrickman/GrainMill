#!/bin/bash

## The hashcat "Building a Password Cracking Rig pt. III" article recommended the commented out steps below. Instead I used an autoinstaller, since these instructions were not working.


## NVidia driver setup
#sudo apt install xserver-xorg-core xdm libgtk-3-0
#
#echo "blacklist nouveau options nouveau modeset=0" | sudo tee /etc/modprobe.d/disable-nouveau.conf
#sudo update-initramfs -u
#
#curl -o NVIDIA-Linux-x86_64-384.59.run http://us.download.nvidia.com/XFree86/Linux-x86_64/384.59/NVIDIA-Linux-x86_64-384.59.run
#
#sudo bash NVIDIA-Linux-x86_64-384.59.run
#sudo sed -i '/Driver/a     Option         "Interactive" "False"' /etc/X11/xorg.conf
#echo 'export DISPLAY=:0' >> ~/.bashrc
#
#echo 'Reboot to finalize installation'

sudo ubuntu-drivers autoinstall

echo 'Reboot to finalize NVIDIA driver installation'
