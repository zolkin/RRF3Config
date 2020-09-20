; tpre0.g
; called before tool 0 is selected
echo "TPRE"
G90				     	; absolute moves 
M913 U100 V100 W100 
G1 U1 F2000      		; move selector to T0 position 
G1 W4 F10000	      	; move idler to T0 position 
M400		     	    ; wait for moves to stop 
M98 P"tpremaster.g" 
M591 D0 P2 C"nil" S-1 		; activate filament sensor
