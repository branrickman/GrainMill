# Steps post OS install

[Old guide on hashcat wiki](https://hashcat.net/wiki/doku.php?id=linux_server_howto)
- disable multiarch (32 bit libraries)
- install x11 env?
`apt install build-essential dkms xserver-xorg xserver-xorg-core \
xserver-xorg-input-evdev xserver-xorg-video-dummy x11-xserver-utils fglrx xdm`

[Installing nvidia drivers on ubuntu server](https://askubuntu.com/questions/1324784/how-to-install-nvidia-drivers-on-ubuntu-server)
- wget the appropriate driver from nvidia's download site
e.g `wget http://us.download.nvidia.com/XFree86/Linux-x86_64/460.67/NVIDIA-Linux-x86_64-460.67.run`
- install dependencies `sudo apt-get install build-essential gcc-multilib dkms`
- [Disable Nouveau (the drivers ubuntu ships with)](https://linuxconfig.org/how-to-disable-blacklist-nouveau-nvidia-driver-on-ubuntu-20-04-focal-fossa-linux):
- `sudo bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"`
`sudo bash -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"`
- `sudo update-initramfs -u`
- run the install script `sudo chmod +x NVIDIA-Linux-x86_64-460.67.run`
`sudo ./NVIDIA-Linux-x86_64-460.67.run`
- say yes to whatever, EXCEPT say not to DKMS 
- test install with `nvidia-smi`


[Driver install guide that actually worked](https://phoenixnap.com/kb/install-nvidia-drivers-ubuntu#ftoc-heading-6)

[Hashcat guide on installing on Linux](https://hashcat.net/wiki/doku.php?id=frequently_asked_questions#how_does_one_install_the_correct_driver_for_the_gpu_s)
- drivers (see above driver install guide)
- opencl: `apt-get install ocl-icd-libopencl1 opencl-headers clinfo`
- CUDA toolkit:
- hashcat itself: `apt install hashcat`
- (optional) hashcat nvidia utils?: ``




# script run order
- [ ] run `post-install-setup.sh`
- [ ] install NVIDIA drivers with `nvidia-driver-install.sh`
- [ ] install hashcat with `install-hashcat.sh`
