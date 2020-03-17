# Twill

A 60% keyboard with only through hole components.   

Based off the Gingham designed by [Yiancar](https://yiancar-designs.com/portfolio/gingham/)

Keyboard Maintainer: [UWA Makers](https://wiki.uwamakers.com//)  
Hardware Supported: ATMEGA328p with vusb

Make example for this keyboard (after setting up your build environment):
    qmk compile -kb twill -km dave

Flash firmware:
    // In bootloader mode
    qmk -kb twill -km dave


Previously we had to use a USBtinyISP for flashing, now that we have resolved issues relating to VUSB we can flash directly over USB, however the command will be kept here for posterity. If for some reason VUSB doesn't work for you then this will be guaranteed to work (provided you've flashed the Arduino bootloader via the Arduino IDE):
```avrdude -c usbtiny -P usb -v -p atmega328p -U flash:w:gingham_dave.hex:i```



Bootloader:

To install the bootloader on the ATMega328Ps we use the usbasploader available from HSGW's repo:
https://github.com/hsgw/USBaspLoader/tree/plaid


Then we simply run ```flashbootloader.sh``` using a USBtinyISP to set the fuses and install the bootloader (if you're like 14 year-old me you may be wondering how you run shell scripts, never fear look [here](https://www.taniarascia.com/how-to-create-and-use-bash-scripts/)).

To enter bootloader mode hold down the "boot" button on the keyboard as you plug it in, or alternatively while holding "boot" press "reset" and then release "boot".  


For specific instructions on how to flash firmware using your operating system using qmk see [here](https://beta.docs.qmk.fm/tutorial/newbs)

