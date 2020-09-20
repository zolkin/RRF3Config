; called before tool 1 is selected

G90				; absolute moves
M913 U100 V100 W100
G1 U15 F2000           		; move selector to T1 position
G1 W18 F10000	      		; move idler to T1 position
M400		     	        ; wait for moves to stop
M98 P"tpremaster.g"
M591 D1 P2 C4 S1            ; activate filament sensor
