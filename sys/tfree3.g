; called when tool 3 is freed
M98 P"tfreehome.g"

echo "disabling tool 3"

M574 V2 S1 P"!e0stop"	 			; setting V endstop to check it's status

if sensors.endstops[4].triggered	; unloading from extruder failed
    M98 P"preabort.g"
    M291 S3 R"Unloading from extruder failed" P"Filament stil present in the extruder"
else
    M98 P"unload_fom_extruder.g"
    G90				 		; absolute moves
    G1 W45 F10000			; select T3 with idler
    M591 D0 P2 C"nil" S0  	; deactivate filament sensor
    M98 P"tfreemaster.g"

M574 V2 S1 P"nil"	 		 ; clear V endstop
