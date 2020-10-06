; Homing the U axis script
M913 U50              		 ; reduce motor current to 50% to prevent bad noises
M915 U S5 F0 R0			     ; set stall parameters
G91                   		 ; use relative positioning
G1 H1 U5 F2000            	 ; move out 5mm
G1 H1 U-100 F1000       	 ; move carriage to home
G90                 		 ; back to absolute positioning
M400               		     ; make sure everything has stopped before we reset the motor currents
M913 U30       		     	 ; motor currents back to standstill
