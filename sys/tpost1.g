; called after tool 1 has been selected
;
M574 V2 S1 P"e1stop"	                    ; set V axis max endstop to switch high
if sensors.endstops[4].triggered
    echo "tool 1 selected, feeding filament"
    M98 P"tpostmaster.g"                    ; run postmaster.g
    if sensors.endstops[4].triggered
        M28 "/sys/last_tool.g"              ; writing last selected tool backout to the file to survive printer restart
        T1 P0
        M29
    else
        M98 P"preabort.g"
        M291 S3 R"Toolchange error" P"Extruder sensor not triggered"
else
    M98 P"preabort.g"
    M291 S3 R"Toolchange error" P"MMU2 sensor not triggered"
M574 V2 S1 P"nil"						    ; clear V endstop