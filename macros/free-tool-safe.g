; ram a bit
G1 E2 F3000
G1 E2 F4000
G1 E2 F5000

; fast retraction
G1 E-10 F6000
G1 E-30 F3000

; cooling
while iterations < 4
	G1 E5 F250
	G1 E-5 F250

;free tool
T-1
