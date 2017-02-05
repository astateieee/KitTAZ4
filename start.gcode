;Sliced at: {day} {date} {time}
;Basic settings: Layer height: {layer_height} Walls: {wall_thickness} Fill: {fill_density}
;Print time: {print_time}
;Filament used: {filament_amount}m {filament_weight}g
;Filament cost: {filament_cost}
G21                     ;metric values
G90                     ;absolute positioning
M82                     ;set extruder to absolute mode
M107                    ;start with the fan off
M140 S{print_bed_temperature} ;get bed heating up	
M104 S{print_temperature} ;get extruder heating up
M190 S{print_bed_temperature} ;waits until bed is done heating
M109 S{print_temperature} ;waits until extruder is done heating
G28 X0 Y0               ;move X/Y to min endstops
G28 Z0                  ;move Z to min endstops
G1 Z15.0 F{travel_speed};move the platform down 15mm
G92 E0                  ; zero the extruded length
G1 F200 E0              ; extrude 3mm of feed stock
G92 E0                  ; zero the extruded length again
G1 F{travel_speed}      ; set travel speed
M203 X192 Y208 Z3       ; speed limits
M117 Printing...        ; send message to LCD
