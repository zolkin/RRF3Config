G1 E-150 F3000			 ; retract out of extruder
M574 V2 S1 P"!e0stop"
while sensors.endstops[4].triggered
	G1 E-10 F3000
	echo "E-10"
M574 V2 S1 P"nil"
echo "E sensor not triggered!"