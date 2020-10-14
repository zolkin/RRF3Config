; called before tool 3 is selected
M98 P"tprehome.g"

echo "Selecting tool 3"
G90							; absolute moves
G1 U43 F2000           		; move selector to T3 position
G1 W46 F10000	      		; move idler to T3 position
M400		     	        ; wait for moves to stop

M98 P"tpremaster.g"
