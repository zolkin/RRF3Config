; called after tool 2 has been selected
echo "tool 2 selected, feeding filament"
M913 U100 V100 W100
G1 W32 F10000
;M116 P2
M98 P"tpostmaster.g"
