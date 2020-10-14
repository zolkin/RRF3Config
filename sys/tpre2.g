; called before tool 2 is selected
M98 P"tprehome.g"

echo "Selecting tool 2"
G90							; absolute moves
G1 U29 F2000           		; move selector to T2 position
G1 W32 F10000	      		; move idler to T2 position
M400		     	        ; wait for moves to stop

M98 P"tpremaster.g"
