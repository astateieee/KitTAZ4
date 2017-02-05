M400
M104 S0 T0                     ; T0 hotend off
M104 S0 T1                     ; T1 hotend off
M107                           ; fans off
G91                            ; relative positioning
G1 E-1 F300                    ; retract the filament a bit before lifting the nozzle, to release some of the pressure
G1 Z+20 E-5 X-20 Y-20 F3000    ; move Z up a bit and retract filament even more
M117 Cooling please wait       ; progress indicator message
G90                            ; absolute positioning
G1 Y0 F3000                    ; move to cooling position
M190 R50                       ; set bed to cool off
G1 Y280 F3000                  ; present finished print
M84                            ; steppers off
G90                            ; absolute positioning
M190 S0                        ; bed off
M117 Print complete            ; progress indicator message
;{profile_string}
