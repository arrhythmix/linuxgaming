!/usr/bin/bash 
#Below are settings to adjust power delivery and enable settings needed for overclocks. 
#Values for core and mem values may vary depending on bin.

#enabled[1] or disable[0] Persistence mode:

#sudo nvidia-smi -pm 1

#sets maximum voltage offset limit allowed, unqualified values will return maximum value allowed. 
#sets voltage overclock and offset measured in microvolts [1000 microvolts = 1 millivolt = 0.01 volts].
#If unqualified value is given, maximum value allowed is returned.

#sudo nvidia-settings -a '[gpu:0]/GPUOverVoltageOffset=50000' sudo nvidia-settings -a GPUOverVoltageOffset=50000 

#sets "PowerMizerMode" where 1 = "Prefer Maximum Performance 2 = "Adaptive" 3 = "Auto"
#sudo nvidia-settings -a '[gpu:0]/GPUPowerMizerMode=1'

#Note the [3] after "Offset" Represents Level P3 performance. Which is the performance level of any card reach under maximum load. P2 or [2] could also be adjusted, but generally the GPU will scale itself accordingly to the
#demands of the program. P1 or [1] could also be adjusted, but no required. P0 or [0] is idle clocks, leave this alone. sets Core Clock Offset. 110 is the maximum allowed on my card before artifacts, your values may vary.
#1392->1502
#sudo nvidia-settings -a '[gpu:0]/GPUGraphicsClockOffset[3]=150'
#sets Memory Core Offset. 1000 is the maximum allowed on my card before artifacts, your values may vary. 7010->8010
#sudo nvidia-settings -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=1500'
#sets fan speed
#sudo nvidia-settings -a "[gpu:0]/GPUFanControlState=1" -a "[fan:0]/GPUTargetFanSpeed=70"

#Colors
#YELLOW='\033[0;33m'
#BLUE='\033:0;34'
#RED=   '\033[0;31m'
#NC='\033[0m'
echo
echo !!!!!!!!!!_ Nvidia GTX 1060 OC Script_!!!!!!!!!!
echo ..................................................
echo ________________________________________________________________________________________________________________________

printf "Enabling Persistence Mode"
sudo nvidia-smi --persistence-mode=1
echo ________________________________________________________________________________________________________________________

printf "Setting TDP to 80 Watts"
sudo nvidia-smi --power-limit=80
echo ________________________________________________________________________________________________________________________

printf "Setting to High Performance"
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 nvidia-settings -a [gpu:0]/GPUPowerMizerMode=1
echo ________________________________________________________________________________________________________________________

printf "Adding +150 mhz Core Clock"
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 nvidia-settings -a [gpu:0]/GPUGraphicsClockOffset[3]=150
echo ________________________________________________________________________________________________________________________

printf "Adding +1500 mhz Mem Clock"
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[3]=1500
echo ________________________________________________________________________________________________________________________

echo "Enabling Manual Fan Control"
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 nvidia-settings -a [gpu:0]/GPUFanControlState=1
echo ________________________________________________________________________________________________________________________

echo "Setting Fan Speed to 70%"
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 nvidia-settings -a [fan:0]/GPUTargetFanSpeed=75
echo ________________________________________________________________________________________________________________________
echo ...................................................................................
echo Overclocks Applied, Room Heater Mode Engaged
echo ...................................................................................
echo Checking Status
nvidia-smi
echo ...................................................................................
sleep 5
clear
