G91						; relative moves
;M574 V2 S3				; set V axis max endstop to sensorless
M913 V50            	; reduce motor current to 30% to prevent grinding
;M915 V S10 F0        	; set stall guard parameters
M574 V2 S1 P"!e0stop"
;M591 D0 P2 C"!e0stop" S1 	; activate filament sensor
M400						; wait for moves to finish

G1 V700 E700 H3 F5000		; fast feed filament into extruder
while !sensors.endstops[4].triggered
	G1 V10 E10 H3 F5000		; fast feed filament into extruder


M400

echo "axes moved"

if sensors.endstops[3].triggered
	echo "Sensor3 triggered!!!!!!!!"
if sensors.endstops[4].triggered
	echo "Sensor4 triggered!!!!!!!!"
if sensors.endstops[5].triggered
	echo "Sensor5 triggered!!!!!!!!"

G92 E0 V0					; force E, V to 0mm
G90							; absolute moves
M591 D0 P2 C"e1stop" S1 	; activate filament sensor on mmu2 unit
;activate laser pew pew pew
G1 E5 V5 F300				; feed filament into extruder with both V and E axis
G1 W78 F10000				; move W to safe position
G91							; relative moves
G1 E90 F5000 				; drive extruder for 90mm 
G1 E10 F300					; slowly load the hotend
G90							; absolute moves
M913 U30 W50 V30    		; motor currents back to standstill