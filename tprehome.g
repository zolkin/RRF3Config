if !move.axes[3].homed
	G28 U
if !move.axes[4].homed
	G28 V
if !move.axes[5].homed
	G28 W

if !move.axes[3].homed
	M98 P"preabort.g"
	abort "U not homed"
if !move.axes[4].homed
	M98 P"preabort.g"
	abort "V not homed"
if !move.axes[5].homed
	M98 P"preabort.g"
	abort "W not homed"

M913 U50 V50 W100 E100       ; set working currents on drivers