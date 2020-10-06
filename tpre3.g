; called before tool 3 is selected
echo "Selecting tool 3"
G90							; absolute moves
M913 U100 V100 W100
G1 U43 F2000           		; move selector to T3 position
G1 W46 F10000	      		; move idler to T3 position
M400		     	        ; wait for moves to stop
M98 P"tpremaster.g"
