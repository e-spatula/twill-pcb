#!/bin/bash

# Set fuses
avrdude -c usbtiny -P usb -v -p atmega328p -U lfuse:w:0xd7:m -U hfuse:w:0xd0:m -U efuse:w:0xFC:m

# Check fuses (if needed)
avrdude -c usbtiny -P usb -v -p atmega328p -U lfuse:r:-:i -U hfuse:r:-:i -U efuse:r:-:i

# Flash bootloader
avrdude -c usbtiny -P usb -v -p atmega328p -U flash:w:main.hex:i
