; called before tool 0 is selected
M98 P"tprehome.g"

echo "Selecting tool 0"
G90				     	    ; absolute moves 
G1 U1 F2000      		    ; move selector to T0 position 
G1 W4 F10000	      	    ; move idler to T0 position 
M400		     	        ; wait for moves to stop 

M98 P"tpremaster.g" 
