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
* Solidworks

# Current Status 6/4/21
Software is at V1.00. It is feature complete, but I have done no hardware testing due to a lack of hardware. 

Hardware is at V2.85. I thought I was done, but some enticing clock options from Micro Crystal presented themselves to me. The two options I am looking at seem to be superior to the DS3232 in different ways, still playing with them in Eagle. Also I had a thought of eliminating the complexity involved in the battery power circit. Notably the possible danger of accidentally running 9V back into the battery if the diode is not used, and the extra drain if it is. I'll try to propely use the SPDT switch to do this, likely change to a ON-OFF-ON switch instead of the original ON-ON one to give a real off switch as well.

# Background
Full disclosure time, I have zero formal training in coding or electrical engineering, I am actually a machinist (I guess that makes me qualified to fab the actual box though). On top of this, this is my first time doing any assembly reading, C coding, coding for microchips, or circuit board design. If I make a mistake that you see, PLEASE tell me.

I've wanted to do Tom's divergence meter project basically since I first found it after watching the Steins;Gate show. Never actually had the drive to do it though. Don't ask me why, but at some point in 2021 I went to look at the site, only to find it gone. Thankfully a backup had been made on Wayback Machine, but more importantly whoever the saint that runs brotoro.com made a complete functional rehost of the site, much less clunky than Wayback. Would definately say that almost losing that info really pushed me to start working on this.

# Licence
Hardware: Creative Commons Attribution-ShareAlike 4.0 International

Software: GNU GPL V3.0

Also just let me know if you use anything.
