# Linux Gaming/Mining Stuff
Welcome to my guide to getting started into overclocking based systems for gaming / mining uses in Ubuntu. I decided to write down some notes along my journey of learning how to overclock and tweak stuff.     

## Let's get started by checking available the drivers
sudo ubuntu-drivers devices

**It should look something like this:** 
```
== /sys/devices/pci0000:00/0000:00:03.1/0000:0a:00.0 ==
modalias : pci:v000010DEd000021C4sv000019DAsd00005527bc03sc00i00
vendor   : NVIDIA Corporation
model    : TU116 [GeForce GTX 1660 SUPER]
driver   : nvidia-driver-515-open - distro non-free
driver   : nvidia-driver-510-server - distro non-free
driver   : nvidia-driver-515 - distro non-free
driver   : nvidia-driver-520 - distro non-free
driver   : nvidia-driver-450-server - distro non-free
driver   : nvidia-driver-470 - distro non-free
driver   : nvidia-driver-515-server - distro non-free
driver   : nvidia-driver-470-server - distro non-free
driver   : nvidia-driver-520-open - distro non-free recommended
driver   : nvidia-driver-510 - distro non-free
driver   : xserver-xorg-video-nouveau - distro free builtin   
```

**So now I'll be installing latest "recommended" drivers**  

sudo apt install nvidia-driver-520

**Next up, we'll be modifying Xorg config files**

sudo nvidia-xconfig

**This will generate an "xorg.conf" file inside /etc/X11/**

launch "Nvidia X Server" Settings" app on your desktop and modify display settings accordingly, save and overwrite existing xorg.conf

**Next edit the newly modified xorg.conf with editor of choice in my case nano"

sudo nano /etc/X11/xorg.conf

**Under [Section "Device"] You should have something that looks like this**
```
Section "Device"
    Identifier     "Device0"
    Driver         "nvidia"
    VendorName     "NVIDIA Corporation"
    BoardName      "NVIDIA GeForce GTX 1660 SUPER"
EndSection
```
**Add the following Options so the [Section "Device"] reads like below**
```
Section "Device"
    Identifier     "Device0"
    Driver         "nvidia"
    VendorName     "NVIDIA Corporation"
    BoardName      "NVIDIA GeForce GTX 1660 SUPER"
    Option         "Coolbits" "28"
    Option         "RegistryDwords" "PowerMizerEnable=0x1; PerfLevelSrc=0x2222; PowerMizerLevel=0x1; PowerMizerDefault=0x1; PowerMizerDefaultAC=0x1"
EndSection
```
**It's been a while, but "Coolbit" set to "28" should give you full functionality to set overclocks and voltages after reboot**


**PowerMizer here is being enabled, and set to "Prefer Maximum Performance" with the "1" Value "0" is for adaptive, and "2" is for auto**









