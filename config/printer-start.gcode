; Ender 3 Custom Start G-code
; UBL code from https://www.reddit.com/r/ender3/comments/i9xt6e/stepbystep_guide_for_ender_3_v2_firmware_w/

M140 S{material_bed_temperature_layer_0} ; Set Heat Bed temperature
M104 S{material_print_temperature_layer_0} ; Set Extruder temperature
M190 S{material_bed_temperature_layer_0} ; Wait for Heat Bed temperature
M109 S{material_print_temperature_layer_0} ; Wait for Extruder temperature

G92 E0 ; Reset Extruder
G28 ; Home all axes

G29 A ; Activate the UBL System.
G29 L0 ; Load UBL
G29 J2 ; Quick 4-point level
G29 F10.0 ; Fade to 10mm
G92 E0 ; Reset Extruder

G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
