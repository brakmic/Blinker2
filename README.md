#### Click-Flasher

A simple FPGA design project written in VHDL.

#### Requirements

- Xilinx Spartan 6 board
- Xilinx ISE 14.7 ([free download](http://www.xilinx.com/products/design-tools/ise-design-suite.html))

#### Setup

- Install ISE 17.4 and open the `blinker2.xise` file.
- **Synthesize** VHDL, **Implement** Design & **Generate** Bitstream file.
- Upload it to the device with `Configure Target Device` option.

<img src="http://fs5.directupload.net/images/160403/ypy7c43l.png"/>

- In the **ISE iMPACT** Tool you'll first have to establish a connection to your programming cable.

<img src="http://fs5.directupload.net/images/160403/d2ro2hmo.png"/>

- The add your newly generated bitfile.

<img src="http://fs5.directupload.net/images/160403/e8erbfib.png"/>

- And finally, program the device.

<img src="http://fs5.directupload.net/images/160403/wkbtmv8m.png"/>

#### Video

<a href="http://www.youtube.com/watch?feature=player_embedded&v=13CHJehqqGs"
target="_blank"><img src="http://img.youtube.com/vi/13CHJehqqGs/0.jpg"
alt="Click Flasher" width="240" height="180" border="3" /></a>

#### Problems

If you're on Windows 10 you'll almost certainly run into driver installation issues and ISE crashes.

To mitigate these annoyances visit [this tutorial](http://www.porlidas.gr/InstDev/InstDevEn.htm).

#### License

[MIT](https://github.com/brakmic/Blinker2/blob/master/LICENSE)