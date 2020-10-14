if !move.axes[4].homed
	G28 V
if !move.axes[5].homed
	G28 W

M400

if !move.axes[4].homed
	M98 P"preabort.g"
	abort "V not homed"
if !move.axes[5].homed
	M98 P"preabort.g"
	abort "W not homed"

M913 U100 V100 W100