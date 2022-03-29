# Extruder Modifications

## V6 Hotend
I used a V6 clone for a direct extruder (no clip for a 4mm tube but only a 4mm hole instead) with the groove mount removed. a M6 screw with a 4mm hole in the midde is then used to attach it to the original mount for the CB+ hotend.

![V6 Hotend](/Images/v6_hotend.jpg)

## Bed Sensor (IR Probe)
As a bed sensor an [IR Probe](https://docs.duet3d.com/Duet3D_hardware/Accessories/IR_Probe) is used. While this is not the most versatile sensor as its realiability is heavily dependant on the bed surface, it is one of the most compact sensors and fits well between the mounting screws of the hotend cooling fan (see image below). A simple bracket is used that is sandwitchet between the fan and the metal bracket of the hotend. 

![IR Bed Sensor](/Images/ir_sensor.jpg)

## Chamber Temperature Sensor
Since i often use this CB+ to print ABS, i added a simple thermistor to the hotend carriage that connects to the third thermistor port on the Duet Mini. This allows me to track the chamber temperature around the hotend while printing (the temperature stabilises around 55°C with the dome installed and the door closed). the thermistor sits in the end part of the drag chain and is therefore safely out of the way and shielded from any drafts.