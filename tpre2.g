; called before tool 2 is selected
echo "Selecting tool 2"
G90							; absolute moves
M913 U100 V100 W100
G1 U29 F2000           		; move selector to T2 position
G1 W32 F10000	      		; move idler to T2 position
M400		     	        ; wait for moves to stop
M98 P"tpremaster.g"
