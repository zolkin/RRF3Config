; tfree0.g
echo "disabling tool 0"
M913 U100 V100 W100
M98 P"TipSmoothing.g"
G90				 		 ; absolute moves
G1 W4 F10000			 ; select T0 with idler
M591 D0 P2 C"nil" S0  	 ; deactivate filament sensor
M98 P"tfreemaster.g"


