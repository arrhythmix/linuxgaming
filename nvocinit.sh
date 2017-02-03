#enabled[1] or disable[2] Persistence mode 
sudo nvidia-smi --persistence-mode=1

#sets maximum power limit allowed, unqualified values will return maximum value allowed.
sudo nvidia-smi --power-limit=425

#sets voltage overclock and offset measured in microvolts [1000 microvolts = 1millivolt = 0.01 volts]
#if unqualified value is given, maximum value allowed is returned.
sudo nvidia-settings -a GPUOverVoltageOffset=50000

#sets "PowerMizerMode" where 1 = "Prefer Maximum Performance 2 = "Adaptive" 3 = "Auto"
sudo nvidia-settings -a '[gpu:0]/GPUPowerMizerMode=1'

#sets Core Clock Offset
sudo nvidia-settings -a '[gpu:0]/GPUGraphicsClockOffset[3]=110'

#sets Memory Core Offset
sudo nvidia-settings -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=1000' 
