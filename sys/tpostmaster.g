G91										; relative moves

M913 V50            					; reduce motor current to 30% to prevent grinding
M574 V2 S1 P"!e0stop"					; setting V endstop to extruder sensor			
G1 V720 H3 F5000					    ; fast feed filament into extruder

M116 P2                					; wait for nozzle heat up to allow extruder movement

while iterations < 100					; trying to repeat movement with reasonable iteration count
    if sensors.endstops[4].triggered
        break
    G1 V5 E5 H3 F3000					; feed filament into extruder with both V and E
M400

if sensors.endstops[4].triggered
    G90									; absolute moves
    G92 E0 V0							; force E, V to 0mm
    G1 E5 V5 F300						; feed filament into extruder with both V and E axis
    M591 D0 P2 C"!e1stop" S1 			; activate filament sensor on mmu2 unit
    G1 W78 F10000						; move W to safe position
    G91									; relative moves
    G1 E100 F5000 						; drive extruder for 100mm
    G1 E40 F1500						; slow down a bit
    G1 E20 F500							; slowly load the hotend
    G90									; absolute moves

M913 U30 W50 V30    					; motor currents back to standstill