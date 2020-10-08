G91										; relative moves

M913 V50            					; reduce motor current to 30% to prevent grinding
M574 V2 S1 P"!e0stop"					; setting V endstop to MMU2S sensor			
G1 V700 E700 H3 F5000					; fast feed filament into extruder
while iterations < 20					; trying to repeat movement with reasonable iteration count
	if sensors.endstops[4].triggered
		break
	G1 V10 E10 H3 F5000					; feed filament into extruder with both V and E
M400

if sensors.endstops[4].triggered
	G90									; absolute moves
	G92 E0 V0							; force E, V to 0mm
	G1 E5 V5 F300						; feed filament into extruder with both V and E axis
else
    M291 P"Loading failure detected" S3

M574 V2 S1 P"nil"						; clear V endstop

M581 P"!e0stop" T2 C0					; activate trigger 2 on filament not present
M582 T2			 						; check filament sensor to confirm loading successful
M581 P"nil" S-1 T2 C0					; deactivate trigger 2

M591 D0 P2 C"e1stop" S1 				; activate filament sensor on mmu2 unit

G1 W78 F10000							; move W to safe position
G91										; relative moves
G1 E90 F5000 							; drive extruder for 90mm 
G1 E10 F300								; slowly load the hotend

G90										; absolute moves
M913 U30 W50 V30    					; motor currents back to standstill