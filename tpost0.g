; called after tool 0 has been selected
;
echo "tool 0 selected, feeding filament"
G1 W4 F10000			; move W to engage filament

M98 P"tpostmaster.g"	; run postmaster.g

M28 "/sys/last_tool.g"  ; writing last selected tool backout to the file to survive printer restart
T0 P0
M29

