; called after tool 3 has been selected
echo "tool 3 selected, feeding filament"
M913 U100 V100 W100
G1 W46 F10000
;M116 P3
M98 P"tpostmaster.g"
