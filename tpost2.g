; called after tool 2 has been selected
;
echo "tool 1 selected, feeding filament"
G1 W32 F10000           ; move W to engage filament
;M116 P2                ; wait for nozzle heat up
M98 P"tpostmaster.g"    ; run postmaster.g

M28 "/sys/last_tool.g"  ; writing last selected tool backout to the file to survive printer restart
T2 P0
M98 P"tfree2.g" 
T-1 P0
G28 U
M29