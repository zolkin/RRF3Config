; called when tool 2 is freed

;deactivate laser pew pew pew
M913 U100 V100 W100
M98 P"TipSmoothing.g"
G90				 ; absolute moves
G1 W32 F10000			 ; select T2 with idler
M591 D2 P2 C4 S0                ; deactivate filament sensor
M98 P"tfreemaster.g"
