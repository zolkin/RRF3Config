M913 W70              		 ; reduce motor current to 70% to prevent bad noises
M915 W S1 H200 F0 R1		 ; set stall parameters
M18 V
G91                   		 ; use relative positioning
while iterations < 3		 ; retry up to 3 times if needed
	if iterations > 1 && move.axes[5].homed	 
		break				 ; skip if already homed
	G1 H1 W5 F20000          ; move idler  out 5mm
	G1 H1 W-120 F40000       ; move idler home
	G1 W78 F10000
M915 W S5 H200 F0 R1		 ; set stall parameters back to operating
M400              		 	 ; make sure everything has stopped before we reset the motor currents
M913 W50             		 ; motor currents back to idle
G90                  		 ; back to absolute positioning