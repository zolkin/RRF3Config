; called before tool 2 is selected

G90							; absolute moves
M913 U100 V100 W100
G1 U29 F2000           		; move selector to T2 position
G1 W32 F10000	      		; move idler to T2 position
M400		     	        ; wait for moves to stop
M98 P"tpremaster.g"
M591 D2 P2 C4 S1            ; activate filament sensor
