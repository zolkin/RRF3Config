; called after tool 0 has been selected
;
echo "tool 0 selected, feeding filament"
G1 W4 F10000			; move W to engage filament
;M116 P0				; wait for nozzle heat up
M98 P"tpostmaster.g"	; run postmaster.g

M28 "/sys/last_tool.g"  ; writing last selected tool backout to the file to survive printer restart
T0 P0
M98 P"tfree0.g" 
T-1 P0
G28 U
M29

