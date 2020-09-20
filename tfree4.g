; called when tool 4 is freed

;deactivate laser pew pew pew
M98 P"TipSmoothing.g"
G90				 ; absolute moves
G1 W59 F10000			 ; select T4 with idler
M591 D4 P2 C4 S0                ; deactivate filament sensor
M98 P"tfreemaster.g"
