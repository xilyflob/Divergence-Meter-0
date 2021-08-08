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
  * Fusion 360 for 3D rendering
  * In general I have no love for Autodesk products, however when I started this project it came up when looking for software and I at least knew the name. It is free and does cover the projects requirements well. Also now having learned it, I unfortunately really hate the interface of KiCad, it just doesn't work well for me.
* MPLAB X IDE
  * XC8 compiler
* Solidworks

# Current Status 8/7/21
Software is at V1.05. It is feature complete, but I have done no hardware testing due to a lack of hardware. There is two versions now, one for the original DS3232 and one for the newer 8803. 

Hardware is at V2.75. Currently the 8803 version is at its most complete, and the DS3232 version of the logic board does not yet reflect changes I've made to the 8803 version. The display board has had some large changes made as well.
* Logic board is now officially half the size of the original, my goal for boosting battery space.
* Changed the HV5622 chips on the driver board to HV5623 which are designed to run at 5V natively with a higher max data frequency while being physically smaller, allowing the final shrink to 50% original size.
* Determined that the boards import *mostly* ok to KiCad, silkscreen is off in some places and the planes are present but dont pour?
* Need to review wattage ratings for resistors on the display board, I feel like they may be way overkill.
* Need to determine fuse ratings, and by extention reccomended batteries. Everything in the system can handle a fairly wide range of voltages given the correct fuse and trim resistor adjustment. Thus I'd like to provide several fuse options.

The boards are at a stage where I really need more knowlegable outside eyes on it.

# Background
Full disclosure time, I have zero formal training in coding or electrical engineering, I am actually a machinist (I guess that makes me qualified to fab the actual box though). On top of this, this is my first time doing any assembly reading, C coding, coding for microchips, or circuit board design. If I make a mistake that you see, PLEASE tell me.

I've wanted to do Tom's divergence meter project basically since I first found it after watching the Steins;Gate show. Never actually had the drive to do it though. Don't ask me why, but at some point in 2021 I went to look at the site, only to find it gone. Wayback Machine has an archive, but more importantly whoever the saint is that runs brotoro.com made a complete functional rehost of the site, which is much less clunky than Wayback. Would definately say that almost losing that info really pushed me to start working on this.

# Thanks
* Jonathan from [SWISSNIXIE](http://www.swissnixie.com/) for helping me understand nixie tube amperage and resistance requirement as well as lending prototyping advice on the HV5623 drivers

# Licence
Hardware: Creative Commons Attribution-ShareAlike 4.0 International

Software: GNU GPL V3.0

Also just let me know if you use anything. Or if you make this! Would love to see people's projects.
