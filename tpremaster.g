M574 V2 S1 P"e1stop"	; set V axis max endstop to switched low 
G91						; relative moves
G1 V30 H1 F3000     	; feed filament to filament sensor
G92 V0					; force V to 0mm
G1 V20 F3000			; feed a bit more to reliably switch sensor and reach tube
M400
M581 T2 P"!e1stop" C1	; activate trigger 2 on rising edge
M582 T2					; check filament sensor to confirm loading successful
M581 T2 S-1	P"nil" 		; deactivate trigger 2
M400
M574 V2 S3				; set V axis max endstop to sensorless
M913 V30            	; reduce motor current to 30% to prevent grinding
M915 V S7 F0        	; set stall guard parameters
M400					; wait for moves to finish

M591 D0 P2 C"nil" S0  	; deactivate filament sensor
;M574 T2 S1 P"e0stop" C1		; set V, E axis max endstops to switched low
;G1 H1 V900 E900 F5000		; fast feed filament into extruder
G92 V0					; force V to 0mm
G90						; absolute moves
M574 V2 S1 P"nil"
