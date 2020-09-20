; tpost0.g
; called after tool 0 has been selected
;
echo "TPOST"
M913 U100 V100 W100		; 100% current on UVW
G1 W4					; move W to engage filament
;M116 P0					; wait for nozzle heat up
M98 P"tpostmaster.g"	; run postmaster.g

