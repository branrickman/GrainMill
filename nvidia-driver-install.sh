#!/bin/bash

# NVidia driver setup
sudo apt install xserver-xorg-core xdm libgtk-3-0

echo "blacklist nouveau options nouveau modeset=0" | sudo tee /etc/modprobe.d/disable-nouveau.conf
sudo update-initramfs -u

curl -o NVIDIA-Linux-x86_64-384.59.run http://us.download.nvidia.com/XFree86/Linux-x86_64/384.59/NVIDIA-Linux-x86_64-384.59.run

sudo bash NVIDIA-Linux-x86_64-384.59.run
sudo sed -i '/Driver/a     Option         "Interactive" "False"' /etc/X11/xorg.conf
echo 'export DISPLAY=:0' >> ~/.bashrc

echo 'Reboot to finalize installation'
