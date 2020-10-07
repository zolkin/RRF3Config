M574 V2 S1 P"!e0stop"	 			; setting V endstop to check it's status
while iterations < 25 ; retracting until V endstop no longer triggered
	if sensors.endstops[4].triggered
		break
	G1 E-2 F3000
G1 E-2 F3000						; retracting some more just in case
M574 V2 S1 P"nil"					; disabling V endstop