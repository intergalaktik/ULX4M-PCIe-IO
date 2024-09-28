# ULX4M-PCIe-IO
NLnet funded PCIe board that can hold ULX4M-LD 

## PCIexpress-KiCad templates
PCI Express™ libraries and templates for KiCad
Made using guidelines from PCI Express™ Card Electromechanical Specification Rev. 1.1

![](/pic/beta_v2.png)

### Contents
**Template used:**
* x4 cards: full size, half length, low profile

**FPGA reference boards:**

* https://github.com/gatecat/TrellisBoard
* https://github.com/enjoy-digital/litex-acorn-baseboard

**Symbols:**
* x4
* Bracket

**Footprints:**
* x4 with multiple card outlines
* Full height bracket (with 3D model)

## Comfirmed working

- [x] 12V
- [x] 5V
- [x] 3.3V
- [x] DVI
- [x] WS2812 diodes
- [x] FTDI ove HAT

## Partially working

- [ ] PCIe loopback is working if TX/RX is bricked on boad edge, but not with PCIe externsion on CM4 IO board

## Not tested

- [ ] GPIOs
- [ ] SPDIFs
- [ ] SFPs
- [ ] PCIe comm to PC

# Not working

- [ ] OLED - pins are not connected on ULX4M
- [ ] 1x / 4x PCIe selection - it is not connected

### License
This documentation describes Open Hardware and is licensed under the CERN OHL v.1.2.

You may redistribute and modify this documentation under the terms of the CERN OHL v.1.2. (http://ohwr.org/cernohl). This documentation is distributed WITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF MERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A PARTICULAR PURPOSE. Please see the CERN OHL v.1.2 for applicable conditions.
