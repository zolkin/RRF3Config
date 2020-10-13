; called after tool 3 has been selected
;
echo "tool 3 selected, feeding filament"
G1 W46 F10000           ; move W to engage filament

M98 P"tpostmaster.g"    ; run postmaster.g

M28 "/sys/last_tool.g"  ; writing last selected tool backout to the file to survive printer restart
T3 P0
M29