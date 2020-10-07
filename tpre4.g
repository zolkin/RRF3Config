; called before tool 4 is selected
M98 P"/sys/last_tool.g"

echo "Selecting tool 4"
G90							; absolute moves
M913 U50 V30 W70 E100       ; set working currents on drivers
G1 U57 F2000           		; move selector to T4 position
G1 W59 F10000	      		; move idler to T4 position
M400		     	        ; wait for moves to stop

M98 P"tpremaster.g"
