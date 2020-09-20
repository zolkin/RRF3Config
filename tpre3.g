; called before tool 3 is selected

G90							; absolute moves
M913 U100 V100 W100
G1 U43 F2000           		; move selector to T3 position
G1 W46 F10000	      		; move idler to T3 position
M400		     	        ; wait for moves to stop
M98 P"tpremaster.g"
M591 D3 P2 C4 S1            ; activate filament sensor
