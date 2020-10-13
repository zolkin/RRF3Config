if !move.axes[3].homed
	G28 U
if !move.axes[4].homed
	G28 V
if !move.axes[5].homed
	G28 W

if !move.axes[3].homed
	M25
	abort "U not homed"
if !move.axes[4].homed
	M25
	abort "V not homed"
if !move.axes[5].homed
	M25
	abort "W not homed"