# Linux Gaming/Mining Stuff
Welcome to my guide to getting started into overclocking based systems for gaming / mining uses in Ubuntu. I decided to write down some notes along my journey of learning how to overclock and tweak stuff.     

## Let's get started by installing the drivers
**add ["Graphics Drivers" team PPA](https://launchpad.net/~graphics-drivers/+archive/ubuntu/ppa)**

sudo add-apt-repository ppa:graphics-drivers  
sudo apt-get update  

**Next we will find the current recommended drivers**

sudo ubuntu-drivers devices

**It should look something like this:**

root@cube:~# sudo ubuntu-drivers devices    
== /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0 ==    
modalias : pci:v000010DEd00001C03sv00003842sd00006161bc03sc00i00    
vendor   : NVIDIA Corporation    
model    : GP106 [GeForce GTX 1060 6GB]    
driver   : nvidia-387 - third-party free recommended    
driver   : nvidia-384 - third-party free    
driver   : xserver-xorg-video-nouveau - distro free builtin    

**So now I'll be installing latest "recommended" drivers**  

sudo apt install nvidia-387 

**Next up, we'll be modifying Xorg config files**

sudo nvidia-xconfig

#This will generate an Xorg config profile based on current devices.
