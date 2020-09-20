; called before tool 4 is selected

G90							; absolute moves
M913 U100 V100 W100
G1 U57 F2000           		; move selector to T4 position
G1 W59 F10000	      		; move idler to T4 position
M400		     	        ; wait for moves to stop
M98 P"tpremaster.g"
M591 D4 P2 C4 S1            ; activate filament sensor
