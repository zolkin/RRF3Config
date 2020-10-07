M913 W70              		 ; reduce motor current to 70% to prevent bad noises
M915 W S5 H200 F1 R1		 ; set stall parameters
M18 V
G91                   		 ; use relative positioning
while iterations < 5
	if !move.axes[5].homed
		break
	G1 H1 W5 F20000              ; move idler  out 5mm
	G1 H1 W-120 F40000           ; move idler home
	M400                  		 ; make sure everything has stopped before we reset the motor currents
	G1 W78 F10000
M913 W50             		 ; motor currents back to idle
G90                  		 ; back to absolute positioning