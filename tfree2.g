; called when tool 2 is freed
echo "disabling tool 2"
M913 U100 V100 W100
M98 P"TipSmoothing.g"
G90				 		; absolute moves
G1 W32 F10000			; select T2 with idler
M591 D0 P2 C"nil" S0  	; deactivate filament sensor
M98 P"tfreemaster.g"
