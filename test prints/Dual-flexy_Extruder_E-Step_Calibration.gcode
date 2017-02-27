M999             ; clear errors
G21              ; set units to millimeters
G90              ; use absolute coordinates
M82              ; use absolute distances for extrusion
G92 X0 Y0 Z0 E0  ; Set cords to zero
T0               ; activate second extruder
M104 S230        ; set second extruder nozzle to 230C
T1               ; activate first extruder
T1               ; "AGAIN!!!!"
M109 S230        ; set first extruder nozzle to 230C and wait for it to reach temp
G1 E100 F40      ; move extruder 1 100mm 
M104 S0          ; Turn off 1st extruder
T0               ; change extruder
T0               ; "AND AGAIN!!"
M109 S230        ; set second extruder nozzle to 230C and wait
G92 E0           ; set E value to 0
G1 E100 F40      ; move extruder 1 100mm 
M104 S0          ; Turn off 2nd extruder
M104 S0          ; Turn it off again, just cause
M84              ; disable steppers
