M116 P2                				; wait for nozzle heat up

if !move.axes[4].homed || !move.axes[5].homed
  G28 VW							; home VW if not already homed

M574 V2 S1 P"!e0stop"	 			; setting V endstop to check it's status
while iterations < 60 				; retracting until V endstop no longer triggered
    if !sensors.endstops[4].triggered
        break
    G1 E-5 F3000					; small step at a time

if sensors.endstops[4].triggered	; unloading from extruder failed
    M98 P"preabort.g"
    M291 S3 R"Unloading from extruder failed" P"Filament stil present in the extruder"

M574 V2 S1 P"nil"					; disabling V endstop

G1 E-5 F3000					    ; retracting a bit more just in case