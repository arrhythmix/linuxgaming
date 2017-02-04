# find persistence-mode
sudo nvidia-smi -q -a | grep 'Persistence Mode'

# find current max power limit
sudo nvidia-smi -q -a | grep 'Power Limit' 

# find current GPUOverVoltageOffset Value and maximum value allowed
sudo nvidia-settings -q GPUOverVoltageOffset

# find current powermizer mode 
# 1 = Prefer Maximum Performance
# 2 = Adaptive
# 3 = Auto
sudo nvidia-settings -q '[gpu:0]/GPUPowerMizerMode' 
