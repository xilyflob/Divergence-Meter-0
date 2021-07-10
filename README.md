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
  * In general I have no love for Autodesk products, however when I started this project it came up when looking for software and I at least knew the name. It is free and does cover the projects requirements well.
* MPLAB X IDE
  * XC8 compiler
* Solidworks

# Current Status 7/10/21
Software is at V1.05. It is feature complete, but I have done no hardware testing due to a lack of hardware. There is two versions now, one for the original ds3232 and one for the newer 8803. 

Hardware is at V2.85. Both board versions are now complete, I think. I'm sure I'll find somthing else to tweak as I go on. Currently looking at:
* Move from 5V to 3.3V for logic operation
* Run shift registers @ system input voltage (9-12V)
* Linear regulator -> buck converter
* Different means of HV stepup

The first two appear to be realy easy to do, but I am less confident in my abilities in regards to the last two, mostly in picking the right assiciated passive components.

# Background
Full disclosure time, I have zero formal training in coding or electrical engineering, I am actually a machinist (I guess that makes me qualified to fab the actual box though). On top of this, this is my first time doing any assembly reading, C coding, coding for microchips, or circuit board design. If I make a mistake that you see, PLEASE tell me.

I've wanted to do Tom's divergence meter project basically since I first found it after watching the Steins;Gate show. Never actually had the drive to do it though. Don't ask me why, but at some point in 2021 I went to look at the site, only to find it gone. Wayback Machine has an archive, but more importantly whoever the saint is that runs brotoro.com made a complete functional rehost of the site, which is much less clunky than Wayback. Would definately say that almost losing that info really pushed me to start working on this.

# Licence
Hardware: Creative Commons Attribution-ShareAlike 4.0 International

Software: GNU GPL V3.0

Also just let me know if you use anything. Or if you make this! Would love to see people's projects.
