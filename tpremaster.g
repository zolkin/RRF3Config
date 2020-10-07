M574 V2 S1 P"e1stop"	; set V axis max endstop to switched low 
G91						; relative moves
G1 V3000 H1 F3000     	; feed filament to filament sensor
G92 V0					; force V to 0mm
G1 V20 F3000			; feed a bit more to reliably switch sensor and reach tube
M400
if !sensors.endstops[4].triggered
    M291 P"Loading failure detected" S2
M574 V2 S1 P"nil"

M591 D0 P2 C"nil" S0  	; deactivate filament sensor
G92 V0					; force V to 0mm
G90						; absolute moves
M574 V2 S1 P"nil"
G92 E0 V0					; force E, V to 0mm
G90
