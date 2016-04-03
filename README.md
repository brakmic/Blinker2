#### Blinker2

A simple FPGA design project written in VHDL.

#### Requirements

- Xilinx Spartan 6 FPGA compatible board
- Xilinx ISE 14.7 ([free download](http://www.xilinx.com/products/design-tools/ise-design-suite.html))

#### Setup

- Install ISE 17.4 and open the `blinker2.xise` file. 
- Synthesize, Implement and Generate Bitstream file.
- Upload it to the device with 'Configure Target Device' option in ISE

<img src="http://fs5.directupload.net/images/160403/ypy7c43l.png"/>

- In the ISE iMPACT Tool you'll first have to connect your programming cable

<img src="http://fs5.directupload.net/images/160403/d2ro2hmo.png"/>

- The add your newly generated bitfile.

<img src="http://fs5.directupload.net/images/160403/e8erbfib.png"/>

- And finally, program the device.

<img src="http://fs5.directupload.net/images/160403/wkbtmv8m.png"/>

#### Problems

If you're on Windows 10 you'll almost certainly run into driver-install issues and ISE crashes.

To mitigate these annoyances visit [this tutorial](http://www.porlidas.gr/InstDev/InstDevEn.htm).

#### License

[MIT](https://github.com/brakmic/Blinker2/blob/master/LICENSE)