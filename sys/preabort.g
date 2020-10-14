if state.status == "processing"
	M25									; pause print
M574 V2 S1 P"nil"				    ; clear V endstop
M913 U30 W50 V30    				; motor currents back to standstill