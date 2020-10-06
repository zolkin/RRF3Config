;M574 V2 S1 P"!e0stop"
M591 D0 P2 C"!e0stop" S1 	; activate filament sensor
if sensors.endstops[3].triggered 
	echo "Sensor3 Triggered!"
if sensors.endstops[4].triggered 
	echo "Sensor4 Triggered!"
if sensors.endstops[5].triggered 
	echo "Sensor5 Triggered!"
;M574 V2 S1 P"nil"
M591 D0 P2 C"nil" S0 	; deactivate filament sensor