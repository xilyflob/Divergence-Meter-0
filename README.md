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

# Current Status 10/15/22
I continue to have issues communicating over the I2C bus to the RTC chip, admittedly I have not really looked into it much yet. I plan to diagnose and solve this issue next.

Microchip is making the HV5623 chips again!!!!!!!!!!!!!!!!!!!!!!!! Even better I have some in hand ready to go to assembly. Working on re-exporting everything to get PCBWay going again, also have to ship the chips to China.

Going to be reducing the scope of this project, I'm not finding the motivation to keep up with the other versions I had spoken about in the goals section previously. I will not delete them but they will be zipped up and archived here.

# Background
Full disclosure time, I have zero formal training in coding or electrical engineering, I am actually a machinist (I guess that makes me qualified to fab the actual box though). On top of this, this is my first time doing any assembly reading, C coding, coding for microchips, or circuit board design. If I make a mistake that you see, PLEASE tell me.

I've wanted to do Tom's divergence meter project basically since I first found it after watching the Steins;Gate show. Never actually had the drive to do it though. Don't ask me why, but at some point in 2021 I went to look at the site, only to find it gone. Wayback Machine has an archive, but more importantly whoever the saint is that runs brotoro.com made a complete functional rehost of the site, which is much less clunky than Wayback. Would definately say that almost losing that info really pushed me to start working on this.

# Thanks
* Jonathan from [SWISSNIXIE](http://www.swissnixie.com/) for helping me understand nixie tube amperage and resistance requirement as well as lending prototyping advice on the HV5623 drivers.
* John from [Taylor Electronics](https://www.shop-tes.com/) for providing data on the current usage of the 1364 HVPS in this specific application.
* /r/PrintedCircuitBoard for doing their best to answer my questions

# Licence
Hardware: Creative Commons Attribution-ShareAlike 4.0 International

Software: GNU GPL V3.0

Also just let me know if you use anything. Or if you make this! Would love to see people's projects.
