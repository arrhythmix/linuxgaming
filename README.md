# Linux Gaming Tip & Guides

#Welcome to my guide to getting started in Debian based systems for gaming usage. 
#To get started pick any Ubuntu variant or Debian distro. 
#This guide will focus on Nvidia GPUs for the time being, until I can get an AMD one.
#Once you have everything up and running. start bashing. This guide will be assuming you have a fresh distro install.

#Let's get started by adding the driver PPA with:

sudo add-apt-repository ppa:graphics-drivers
sudo apt-get update 

#Next we will find the current recommended drivers with:
sudo ubuntu-drivers devices

#It should look something like this:
== /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0 ==
model    : GP106 [GeForce GTX 1060 6GB]
vendor   : NVIDIA Corporation
modalias : pci:v000010DEd00001C03sv00003842sd00006161bc03sc00i00
driver   : nvidia-375 - distro non-free
driver   : nvidia-378 - third-party free
driver   : xserver-xorg-video-nouveau - distro free builtin
driver   : nvidia-381 - third-party free recommended

#So now I'll be installing latest recommended drivers using:
sudo apt install nvidia-381 
