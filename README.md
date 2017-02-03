# linuxgaming
#Just personal scripts and commands used for overclocking Nvidia GPUs in Linux
#This is for Debian/Ubuntu based distros, commands may vary.
#requires editting of X11 server settings, specifically "xorg.conf"

sudo nano /etc/X11/xorg.conf

#Copy and Paste or create as needed.

Section "Device"
    Identifier     "Device0"
    Driver         "nvidia"
    VendorName     "NVIDIA Corporation"
    Option         "Coolbits" "24"
    Option         "RegistryDwords" "PowerMizerEnable=0x1; PerfLevelSrc=0x2222; PowerMizerLevel=0x1; PowerMizerDefault=0x1; PowerMizerDefaultAC=0x1"
EndSection

Section "Screen"
    Identifier     "Screen0"
    Device         "Device0"
    Monitor        "Monitor0"
    DefaultDepth    24
    Option         "Coolbits" "24"
    SubSection     "Display"
        Depth       24
    EndSubSection
EndSection
