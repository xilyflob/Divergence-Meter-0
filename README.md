# Purpose
Recreate Tom Titor's original Divergence Meter project with more up to date hardware and software. Also taking into account current tools and services avalible to makers.

# Goals
* Maintain level of visual accuracy to the show that was in the original.
* Keep code size down so if people don't want to use updated hardware they can still fit it on the old chip.
  * Currently failing this, assembly output from the C code has proven much less efficient than I had anticipated.
* Provide more accessible code for the microcontroller so makers can make changes on their own easier than with the assembly version, also commented well enough that it is easy to understand.
* Produce at least proper drawings for the physical construction. Ideally a solid model as well, however there may be license issues with that.

# Software Used
* Autodesk Eagle
  * Originally used to do the PCB design, the SMT versions were later converted to KiCad. Earlier, simpler converts and redesigns currently remain in those file types.
* KiCad
* MPLAB X IDE
  * XC8 compiler
* Solidworks

# Build Log
Available on [Imgur](https://imgur.com/a/QL4b4lS), maybe one day I will make a website for better layout and such.

# Current Status 11/25/22
Fixed the communications issue with the RTC. The issue was that writing to the RTC over I2C worked great, but reads would get stuck after the write phase of a read. The issue was with the built in repeated start function in the MCU, after removing that and replacing it with a "manual" stop and start it worked great. Bought a whole oscilloscope for diagnosing that and it took only a couple hours, yay. Have updated the software files uploaded here.

Boards are being made and mostly assembled at PCBWay right now. Had to ship the chips I got to them, which was a ridiculous $136. Paid at least as much for them to get them in the first place. I've completed my Rev. A changes to the logic boards and have updated the files here. I'm considering the Rev. A versions to be the first tested functional revision for public release,  go nuts.

Going to be reducing the scope of this project, I'm not finding the motivation to keep up with the other versions I had spoken about in the goals section previously. I will not delete them but they will be zipped up and archived here.

# Background
Full disclosure time, I have zero formal training in coding or electrical engineering, I am actually a machinist (I guess that makes me qualified to fab the actual box though). On top of this, this is my first time doing any assembly reading, C coding, coding for microchips, or circuit board design. If I make a mistake that you see, PLEASE tell me.

I've wanted to do Tom's divergence meter project basically since I first found it after watching the Steins;Gate show. Never actually had the drive to do it though. Don't ask me why, but at some point in 2021 I went to look at the site, only to find it gone. Wayback Machine has an archive, but more importantly whoever the saint is that runs brotoro.com made a complete functional rehost of the site, which is much less clunky than Wayback. Would definitely say that almost losing that info really pushed me to start working on this.

# Thanks
* Jonathan from [SWISSNIXIE](http://www.swissnixie.com/) for helping me understand nixie tube amperage and resistance requirement as well as lending prototyping advice on the HV5623 drivers.
* John from [Taylor Electronics](https://www.shop-tes.com/) for providing data on the current usage of the 1364 HVPS in this specific application.
* /r/PrintedCircuitBoard for doing their best to answer my questions

# Licence
Hardware: Creative Commons Attribution-ShareAlike 4.0 International

Software: GNU GPL V3.0

Also just let me know if you use anything. Or if you make this! Would love to see people's projects.
