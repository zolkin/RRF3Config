; tfree0.g
M98 P"tfreehome.g"

echo "disabling tool 0"

M98 P"unload_fom_extruder.g"
G90				 		 ; absolute moves
G1 W4 F10000			 ; select T0 with idler
M591 D0 P2 C"nil" S0  	 ; deactivate filament sensor
M98 P"tfreemaster.g"

