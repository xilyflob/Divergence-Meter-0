# Purpose
Recreate Tom Titor's original Divergence Meter project with more up to date hardware and software. Also taking into account current tools and services avalible to makers.

# Goals
* Maintain level of visual accuracy to the show that was in the original.
* Keep code size down so if people dont want to use updated hardware they can still fit it on the old chip.
  * Currently failing this, assembly output from the C code has proven much less efficient than I had anticipated.
* Provide several sets of hardware packages that cover everything from simple conversion from PCBway files to Eagle ones, to a full desgn revamp with SMT devices.
* Provide more accessable code for the microcontroller so makers can make changes on their own easier than with the assembly version, also commented well enough that it is easy to understand.
* Produce at least proper drawings for the physical construction. Ideally a solid model as well, however there may be licence issues with that.

# Software Used
* Autodesk Eagle
  * Originaly used to do the PCB design, the SMT versions were later converted to KiCad. Earlier, simpler converts and redesigns currently remain in those file types.
* KiCad
* MPLAB X IDE
  * XC8 compiler
* Solidworks

# Current Status 9/3/21
Software is at V1.05. It is feature complete, but I have done no hardware testing due to a lack of hardware. There is two versions now, one for the original DS3232 and one for the newer 8803. 

Hardware is at V3.0. I've submitted the 8803 logic board to several fab/assembly houses for quoting, I'm currently guessing I'll go with PCBWay but we will see.
* I was having issues with getting gerber/drill/pnp files out of the Autodesk products in the formats some of the fab houses wanted. Thus I took the plunge and used KiCad's Eagle file convert feature, for the most part it worked great! The major thing I had to do was fix text positioning since it works differently. 
* I also took the opportunity to change the DC power jack footprint to have real slots instead of the BS that Eagle makes you do.
* I will eventually take the time to complete the conversion and upload them here instead of the Eagle files.
* I was able to do the math on the fuse rating for 12V operation, it...was the same 800mA. I am fairly sure I did this right, so I am guessing that component changes reduced power requirements enough...I think.

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
