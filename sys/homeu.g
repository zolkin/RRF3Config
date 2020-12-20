; Homing the U axis script
M591 D0 P2 C"nil" S1 				; deactivate filament sensor on mmu2 unit
M574 V2 S1 P"e1stop"	 			; setting V endstop to check it's status
if !sensors.endstops[4].triggered   ; only move selector if there is no filament present
    M913 U50              		    ; reduce motor current to 50% to prevent bad noises
    M915 U S5 F0 R0			        ; set stall parameters
    G91                   		    ; use relative positioning
    G1 H1 U5 F2000            	    ; move out 5mm
    G1 H1 U-100 F1000       	    ; move carriage to home
    G90                 		    ; back to absolute positioning
    M400               		        ; make sure everything has stopped before we reset the motor currents
    M913 U30       		     	    ; motor currents back to standstill
else
    echo "Filament present, not moving selector!"
    M84 U
    if state.currentTool == 0
        G92 U1
    elif state.currentTool == 1
        G92 U14
    elif state.currentTool == 2
        G92 U32
    elif state.currentTool == 3
        G92 U45
    elif state.currentTool == 4
        G92 U57
M574 V2 S1 P"nil"					; disabling V endstop
M84 V
G92 V0
