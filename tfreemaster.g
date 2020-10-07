G91				 			; relative moves

M581 P"e0stop" T3 C1		; activate trigger 3 on falling edge of e0stop
M582 T3			 			; check filament sensor to confirm unloading from extruder successful
M581 P"nil" S-1 T3 C1		; deactivate trigger 3

M574 V2 S1 P"nil"			; disable V axis max endstop
M574 V1 S1 P"!e1stop"		; set V axis min endstop to switched high temporarily
G92 V0						; force V axis position to 0mm
G1 V-900 H1 F5000			; retract filament till sensor switches off
G92 V0						; force V axis position to 0mm
G1 V-22 F3000				; retract to position clear of selector
M400                        ; waiting for all moves to complete

if !sensors.endstops[4].triggered
    M291 P"Unloading failure detected" S2
    
M574 V1 S1 P"nil"			; disable V axis min endstop

M400
M913 U30 V30 W50			; current back to idle
G90				 			; absolute moves
G1 W78 F10000				; move W to safe position

M28 "/sys/last_tool.g"      ; clearing last selected tool backout from the file (needed for machine reboot)
M29
