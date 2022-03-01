; Configuration file for Duet 3 Mini 5+ (firmware version 3.3)
; executed by the firmware on start-up

; General preferences
G90                                          ; send absolute coordinates...
M83                                          ; ...but relative extruder moves
M550 P"Craftbot"                             ; set printer name
M669 K1                                      ; select CoreXY mode

; Network
M551 P"Network Password"                     ; set password
M552 S1                                      ; enable network
M586 P0 S1                                   ; enable HTTP
M586 P1 S0                                   ; disable FTP
M586 P2 S0                                   ; disable Telnet

; Drives
M569 P0.0 S1                                 ; physical drive 0.0 goes forwards
M569 P0.1 S1                                 ; physical drive 0.1 goes forwards
M569 P0.2 S0                                 ; physical drive 0.2 goes backwards
M569 P0.3 S0                                 ; physical drive 0.3 goes forwards
M584 X0.1 Y0.0 Z0.2 E0.3                     ; set drive mapping
M350 X16 Y16 Z16 E16 I1                      ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z1600.00 E94.00            ; set steps per mm
M566 X900.00 Y900.00 Z60.00 E120.00          ; set maximum instantaneous speed changes (mm/min)
M203 X18000.00 Y18000.00 Z1200.00 E3000.00   ; set maximum speeds (mm/min)
M201 X1000.00 Y1000.00 Z60.00 E250.00        ; set accelerations (mm/s^2)
M906 X800 Y800 Z1000 E1000 I30               ; set motor currents (mA) and motor idle factor in per cent (all 17hs3001-20b, 1.2A)
M84 S30                                      ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                             ; set axis minima
M208 X250 Y195 Z200 S0                       ; set axis maxima

; Endstops
M574 X1 S1 P"!^io4.in"                       ; configure switch-type (e.g. microswitch) endstop for low end on X via pin !^io4.in
M574 Y1 S1 P"!^io6.in"                       ; configure switch-type (e.g. microswitch) endstop for low end on Y via pin !^io6.in
M574 Z1 S1 P"!^io5.in"                       ; configure switch-type (e.g. microswitch) endstop for low end on Z via pin !^io5.in

; Z-Probe
;M558 P0 H2 F600:300 T6000                   ; disable Z probe but set dive height, probe speed and travel speed
M558 P8 C"io1.in" H2 F600:120 T6000          ; set Z probe type to unmodulated and the dive height + speeds
G31 P500 X50 Y50 Z2.5                        ; set Z probe trigger value, offset and trigger height
M557 X15:215 Y15:195 S20                     ; define mesh grid

; Filament Sensor
M591 D0 P1 C"!^io3.in" S1                    ; Filament Sensor (simple switch)

; Heaters
M308 S0 P"temp0" Y"thermistor" T100000 B4138 A"Bed"; configure sensor 0 as thermistor on pin temp0
M950 H0 C"out0" T0                           ; create bed heater output on out0 and map it to sensor 0
M307 H0 B0 R0.309 C673.5 D1.36 S1.00 V24.0
M140 H0                                      ; map heated bed to heater 0
M143 H0 S120                                 ; set temperature limit for heater 0 to 120C

M308 S1 P"temp1" Y"thermistor" T100000 B4138 A"Extruder"; configure sensor 1 as thermistor on pin temp1
M950 H1 C"out1" T1                           ; create nozzle heater output on out1 and map it to sensor 1
M307 H1 B0 R2.080 C153.7:153.7 D10.47 S1.00 V24.1
M143 H1 S280                                 ; set temperature limit for heater 1 to 280C

M308 S2 P"temp2" Y"thermistor" T100000 B4138 A"Chamber"; configure sensor 2 as thermistor on pin temp2
M950 H2 C"out2" T2                           ; create chamber heater output on out2 and map it to sensor 2
M307 H2 B0 S0.00                             ; disable bang-bang mode for the chamber heater and set PWM limit
M141 H2                                      ; map chamber to heater 2
M143 H2 S100                                 ; set temperature limit for heater 2 to 100C

; Fans
M950 F0 C"out6" Q500                         ; create fan 0 on pin out5 and set its frequency
M106 P0 C"print" S0 H-1                      ; set fan 0 name and value. Thermostatic control is turned off
M950 F1 C"out5" Q500                         ; create fan 1 on pin out6 and set its frequency
M106 P1 C"hotend" S1 H1:2 T45                ; set fan 1 name and value. Thermostatic control is turned on
M950 F2 C"out3" Q500                         ; create fan 2 on pin out3 and set its frequency
M106 P2 C"case" S1 H-1                       ; set fan 2 name and value. Thermostatic control is turned off

; Case Light
M950 F3 C"out4" Q500                         ; create fan 2 on pin out3 and set its frequency
M106 P3 C"Light" S0 H-1                      ; set fan 2 name and value. Thermostatic control is turned off

; Tools
M563 P0 S"Extruder" D0 H1 F0                 ; define tool 0
G10 P0 X0 Y0 Z0                              ; set tool 0 axis offsets
G10 P0 R0 S0                                 ; set initial tool 0 active and standby temperatures to 0C

; Custom Settings
M572 D0 S0.1                                 ; Enable and Configure Pressure Advance
M671 X20:130:230 Y5:195:195 P0.5             ; adjusting screws at rear left, front middle and rear right (M3 - pitch 0.5mm)

; Miscellaneous
M501                                         ; load saved parameters from non-volatile memory
T0                                           ; select first tool

