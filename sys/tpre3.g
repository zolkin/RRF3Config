; called before tool 3 is selected
M98 P"tprehome.g"

echo "Selecting tool 3"
M574 V2 S1 P"e1stop"	; set V axis max endstop to switched low 
if !sensors.endstops[4].triggered
    G90							; absolute moves
    G1 U41 F2000           		; move selector to T3 position
    G1 W45 F10000	      		; move idler to T3 position
    M400		     	        ; wait for moves to stop
    M98 P"tpremaster.g"
else
    M98 P"preabort.g"
    M291 S3 R"Toolchange error" P"Selector sensor: filament present!"

M574 V2 S1 P"nil"
