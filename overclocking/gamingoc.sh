#!/usr/bin/bash

#Below are settings to adjust power delivery and enable settings needed for overclocks  

#enabled[1] or disable[2] Persistence mode 
sudo nvidia-smi --persistence-mode=1

#sets maximum power limit allowed, unqualified values will return maximum value allowed.
sudo nvidia-smi --power-limit=425

#sets voltage overclock and offset measured in microvolts [1000 microvolts = 1millivolt = 0.01 volts]
#if unqualified value is given, maximum value allowed is returned.
sudo nvidia-settings -a GPUOverVoltageOffset=50000

#sets "PowerMizerMode" where 1 = "Prefer Maximum Performance 2 = "Adaptive" 3 = "Auto"
sudo nvidia-settings -a '[gpu:0]/GPUPowerMizerMode=1'

# Note the [3] after "Offset" Represents Level P3 performance. Which is the performance level of any card reach under maximum load.
# P2 or [2] could also be adjusted, but generally the GPU will scale itself accordingly to the demands of the program.
# P1 or [1] could also be adjusted, but no required.
# P0 or [0] is idle clocks, leave this alone.

#sets Core Clock Offset. 110 is the maximum allowed on my card before artifacts, your values may vary. 1392->1502 
sudo nvidia-settings -a '[gpu:0]/GPUGraphicsClockOffset[3]=110'

#sets Memory Core Offset. 1000 is the maximum allowed on my card before artifacts, your values may vary. 7010->8010
sudo nvidia-settings -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=1000' 
