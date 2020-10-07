; called before tool 1 is selected
M98 P"/sys/last_tool.g"

echo "Selecting tool 1"
G90				            ; absolute moves
M913 U50 V30 W70 E100       ; set working currents on drivers
G1 U15 F2000           		; move selector to T1 position
G1 W18 F10000	      		; move idler to T1 position
M400		     	        ; wait for moves to stop

M98 P"tpremaster.g"
