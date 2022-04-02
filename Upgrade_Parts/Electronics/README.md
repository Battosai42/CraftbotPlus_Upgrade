# Electronics Upgrades 
The original controller board is replaced with a Duet3 mini in order to run reprap firmware on it. By chance the mounting screws of the CB+ mostly fit the mounting holes of the Duet Mini, so the screws on the right of the board are directly using the original mounting points. The ones on the left (where the USB connector used to be) requires two adapters that can be found in "Upgrade_Parts/Electronics" see image below:

![Electronics Compartment](/Images/electronics_compartment.jpg)

## WIFI Antenna
The USB port of the original controller board is repurposed to mount an external wifi antenna.
![Wifi Antenna on the outside](/Images/wifi_antenna2.jpg)
![Wifi Antenna on the inside](/Images/wifi_antenna.jpg)

## Filament Sensor
A simple filament sensor that only detect the presence of filament is added on the bach sice of the printer. The folded part of the spool holder is used to hide the wire so it cant get entagled in the spool:

![Filament Sensor](/Images/temporary_filament_sensor.jpg)

## Display
Since the original display is not working with Reprap Firmware (not just the connector but also voltage levels and differential UART) it could no longer be used. Since Reprap Firmware has an excellent web interface it is quite feasible to use the printer in headless mode (without a dislpay) but every now and then it is nice to see the status of a print or make some adjustments like babystepping on the first layer directly on the printer. From an older project i still had an older MKS TFT32 V3 display laying around and i recently discovered that this is now supported by the [Bigtreetech display firmware](https://github.com/bigtreetech/BIGTREETECH-TouchScreenFirmware#tft-screen-configuration-and-support-for-rrf) which supports RRF there was no need to get a new display (I anyhow wanted a small display, and not a 5" or 7" display that has become common place in the Duet ecosystem).
 
 ![MKS TFT32 Display](/Images/mks_tft32_1.jpg)
 
 