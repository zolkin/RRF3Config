; tfree0.g
; called when tool 0 is freed
;
;deactivate laser pew pew pew
echo "TFREE"
M913 U100 V100 W100
M98 P"TipSmoothing.g"
G90				 		 ; absolute moves
G1 W4 F10000			 ; select T0 with idler
M591 D0 P2 C"nil" S0  ; deactivate filament sensor
M98 P"tfreemaster.g"


