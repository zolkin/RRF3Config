G92 E0 V0					; force E, V to 0mm
G91
M574 V2 S1 P"!e0stop"		; set V, E axis max endstops to switched low
echo "endstop enabled!"
G1 H3 V900 E900 F5000		; fast feed filament into extruder
echo "axees moved!"
G92 E0 V0					; force E, V to 0mm
G90							; absolute moves
M574 V2 S1 P"nil" C1		; set V, E axis max endstops to switched low
;activate laser pew pew pew
G1 E5 V5 F300		; feed filament into extruder with both V and E axis
G1 W78 F10000		; move W to safe position
G91					; relative moves
G1 E90 F5000 		; drive extruder for 90mm 
G1 E10 F300			; slowly load the hotend
G90					; absolute moves
M913 U30 W50 V30    ; motor currents back to standstill