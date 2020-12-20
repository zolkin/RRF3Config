; called before tool 0 is selected
M98 P"tprehome.g"

M574 V2 S1 P"e1stop"	        ; set V axis max endstop to switch low
if !sensors.endstops[4].triggered
    echo "Selecting tool 0"
    G90				     	    ; absolute moves 
    G1 U1 F2000      		    ; move selector to T0 position 
    G1 W4 F10000	      	    ; move idler to T0 position 
    M400		     	        ; wait for moves to stop 
    
    M98 P"tpremaster.g" 
else
    M98 P"preabort.g"
    M291 S3 R"Toolchange error" P"Selector sensor: filament present!"

M574 V2 S1 P"nil"