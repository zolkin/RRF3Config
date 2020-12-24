G91				 			    ; relative moves

M574 V2 S1 P"nil"			    ; disable V axis max endstop
M574 V1 S1 P"!e1stop"		    ; set V axis min endstop to switched high temporarily

if !sensors.endstops[4].triggered
    G92 V0					    ; force V axis position to 0mm
    G1 V-900 H1 F5000		    ; retract filament till sensor switches off
    G92 V0					    ; force V axis position to 0mm
    G1 V-25 F3000			    ; retract to position clear of selector
    M400                        ; waiting for all moves to complete

if !sensors.endstops[4].triggered
    M98 P"preabort.g"
    M291 S3 R"Unloading failure detected" P"Filament still present in the selector!"
else
    G90				 			; absolute moves
    G1 W78 F10000				; move W to safe position
    M400`
    M28 "/sys/last_tool.g"     	; clearing last selected tool from the file (needed for machine reboot)
    M29

M574 V1 S1 P"nil"			    ; disable V axis min endstop
M913 U30 V30 W50			    ; current back to idle
