; called when tool 4 is freed
M98 P"tfreehome.g"

echo "disabling tool 4"

M98 P"unload_fom_extruder.g"

G90				 		; absolute moves
G1 W57 F10000			; select T4 with idler
M591 D0 P2 C"nil" S0  	; deactivate filament sensor

M98 P"tfreemaster.g"
