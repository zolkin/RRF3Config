; called after tool 4 has been selected
;
echo "tool 4 selected, feeding filament"
G1 W59 F10000           ; move W to engage filament

M98 P"tpostmaster.g"    ; run postmaster.g

M28 "/sys/free_last_tool.g"  ; writing last selected tool backout to the file to survive printer restart
T4 P0
M98 P"tfree4.g" 
T-1 P0
G28 U
M29