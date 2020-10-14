; called before tool 4 is selected
M98 P"tprehome.g"

echo "Selecting tool 4"
G90							; absolute moves
G1 U57 F2000           		; move selector to T4 position
G1 W59 F10000	      		; move idler to T4 position
M400		     	        ; wait for moves to stop

M98 P"tpremaster.g"
