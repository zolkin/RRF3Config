; called when tool 4 is freed
echo "disabling tool 4"
M98 P"TipSmoothing.g"
G90				 		; absolute moves
G1 W59 F10000			; select T4 with idler
M591 D0 P2 C"nil" S0  	; deactivate filament sensor
M98 P"tfreemaster.g"
