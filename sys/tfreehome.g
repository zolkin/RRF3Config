if !move.axes[4].homed
    G28 V
if !move.axes[5].homed
    G28 W

M400

if !move.axes[4].homed
    M98 P"preabort.g"
    M291 S3 R"Unloadong filament error" P"V axis not homed"
    
if !move.axes[5].homed
    M98 P"preabort.g"
    M291 S3 R"Unloadong filament error" P"W axis not homed"

M913 U100 V100 W100