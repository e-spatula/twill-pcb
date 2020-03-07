# Twill

A 60% keyboard with only through hole components.   

Based off the Gingham designed by [Yiancar](https://yiancar-designs.com/portfolio/gingham/)

Keyboard Maintainer: [UWA Makers](https://wiki.uwamakers.com//)  
Hardware Supported: ATMEGA328p with vusb 

Make example for this keyboard (after setting up your build environment):
    make twill:dave

Flash firmware:
    // In bootloader mode
    make twill:dave:program

Bootloader:
use usbasploader HSGW's my repository.
https://github.com/hsgw/USBaspLoader/tree/plaid

See the [build environment setup](https://docs.qmk.fm/#/getting_started_build_tools) and the [make instructions](https://docs.qmk.fm/#/getting_started_make_guide) for more information. Brand new to QMK? Start with our [Complete Newbs Guide](https://docs.qmk.fm/#/newbs).
