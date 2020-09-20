; Auto calibration routine for large delta printer
M561                    ; clear any bed transform

; If the printer hasn't been homed, home it
if !move.axes[0].homed || !move.axes[1].homed || !move.axes[2].homed
  G28
; Probe the bed and do auto calibration
G1 X0 Y80 Z30 F10000        ; go to just above the first probe point
while true
  if iterations = 5
    abort "too many auto calibration attempts"
  G30 P0 X0 Y179.9 H0 Z-99999
  if result != 0
    continue
  G30 P1 X89.95 Y155.8 H0 Z-99999
  if result != 0
    continue
  G30 P2 X155.8 Y89.95 H0 Z-99999
  if result != 0
    continue
  G30 P3 X179.9 Y0 H0 Z-99999
  if result != 0
    continue
  G30 P4 X155.8 Y-89.95 H0 Z-99999
  if result != 0
    continue
  G30 P5 X89.95 Y-155.8 H0 Z-99999
  if result != 0
    continue
  G30 P6 X0 Y-179.9 H0 Z-99999
  if result != 0
    continue
  G30 P7 X-89.95 Y-155.8 H0 Z-99999
  if result != 0
    continue
  G30 P8 X-155.8 Y-89.95 H0 Z-99999
  if result != 0
    continue
  G30 P9 X-179.9 Y0 H0 Z-99999
  if result != 0
    continue
  G30 P10 X-155.8 Y89.95 H0 Z-99999
  if result != 0
    continue
  G30 P11 X-89.95 Y155.8 H0 Z-99999
  if result != 0
    continue
  G30 P12 X0 Y89.9 H0 Z-99999
  if result != 0
    continue
  G30 P13 X77.86 Y-44.95 H0 Z-99999
  if result != 0
    continue
  G30 P14 X-77.86 Y-44.95 H0 Z-99999
  if result != 0
    continue
  G30 P15 X0 Y0 H0 Z-99999 S8
  if result != 0
    continue
  if move.calibration.final.deviation <= 0.03
    break
  echo "Repeating calibration because deviation is too high (" ^ move.calibration.final.deviation ^ "mm)"
; end loop
echo "Auto calibration successful, deviation", move.calibration.final.deviation ^ "mm"
G1 X0 Y0 Z150 F10000                ; get the head out of the way