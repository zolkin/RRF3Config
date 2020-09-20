; called when tool 1 is freed

;deactivate laser pew pew pew
M913 U100 V100 W100
M98 P"TipSmoothing.g"
G90				 ; absolute moves
G1 W18 F10000			 ; select T1 with idler
M591 D1 P2 C4 S0                ; deactivate filament sensor
M98 P"tfreemaster.g"
