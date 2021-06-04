/*
  Main Source File

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs
    Based on the original assembly source code created by Tom Titor of /a/ in 2012
    for the Divergence Meter project.

  Original author:
   Tom Titor of /a/
  
  Rewrite author: 
    /u/xilyflob

  Version:
    1.00

  License:
    GNU GPL V3.0
  
  Generation Information :
      Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
      Device            :  PIC16F18444
      Driver Version    :  2.00
*/

/* Version History
 * 0.00 - Initial code rewrite, Initial MCC config
 * 0.05 - Initial code rewrite exceeded the program memory of the new device before
 *        even getting close to the end of the original program. Large areas
 *        completely rewritten, again, to produce better assembly code. MCC config
 *        had also been tweaked several times at this point.
 * 0.50 - Reached max program memory AGAIN. This time I gave in and now you should
 *        always compile the code at optimization level 2 or better.
 * 0.75 - Took a close look at the pre generated code that the program is using.
 *        Found several places where the code could be simplified/improved/removed.
 * 1.00 - Feature complete. I2C routines now totally custom, saving like 20% program
 *        space. Current program size is 3112/4096 words and 200/512 bytes of data.
 *        Hardware testing has not occurred yet.
 */

/* Notes by the rewriter
 * 
 * As a general note, you can get the original .asm file to load into the modern
 * MPLABX. However the version of assembly code that is now used is "very" different
 * than what it was written in. Commands are juuuuust different enough to trip up
 * almost every line. For example andwf does not use w or f for the second operator
 * it uses 0 or 1 now and hex and binary numbers are called out differently. I am 
 * unsure if you can force the software to cram the .asm file into the chip as it
 * is, maybe the .hex file. I did not pursue this to any extent at all.
 * 
 * Several of the original subroutines are either not recreated or are radically
 * different compared to their assembly versions. Any delay is a good example.
 * 
 * The EEPROM is slightly altered from its original form since I handled storage
 * and syntax of the display buffer differently. I also could not figure out how
 * to decode the original hex.
 * 
 * The blanking hours are now stored in EEPROM, even with the old processor there
 * was space in the EEPROM for these numbers. I believe they were stored in the 
 * clock  for simplicity in altering the settings but I feel it opens it to data
 * data loss when the backup battery dies.
 * 
 * Brightness control is now run by an honest to god hardware PWM generator, not
 * the admittedly effective, but messy and hard to understand software version that
 * was present in the original program.
 * 
 * I could not understand how the slide flag affected the loader sub well enough
 * to be able to replicate it, thus I have come up with a different way to do the
 * same thing. Unfortunately due to this it means that it is likely much less 
 * efficient.
 * 
 * I had wanted to not work in BCD for readability, but in an effort to reduce 
 * program size I had to do it in the end.
 * 
 * To determine how long a delay is, take the value and put a decimal point after
 * the second digit for milliseconds. (16000 -> 16ms)
 */

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#include "mcc_generated_files/mcc.h"
#include "limits.h"
#include "Variables.h"
#include "Subroutines.h"

//EEPROM Initialization
__EEPROM_DATA(1,R,1,3,0,4,2,6); //these are world lines that appear in the anime/VN, they are in order of appearance
__EEPROM_DATA(0,R,5,7,1,0,2,4); //this is not present in Variables.h since it was duplicating it while in there
__EEPROM_DATA(0,R,5,7,1,0,1,5);
__EEPROM_DATA(0,R,5,2,3,2,9,9);
__EEPROM_DATA(0,R,4,5,6,9,0,3);
__EEPROM_DATA(0,R,4,0,9,4,2,0);
__EEPROM_DATA(0,R,3,3,7,1,8,7);
__EEPROM_DATA(0,R,4,0,9,4,3,1);
__EEPROM_DATA(1,R,0,4,8,5,9,6);
__EEPROM_DATA(10,R,2,7,5,3,4,9);
__EEPROM_DATA(0,R,4,5,6,9,1,4);
__EEPROM_DATA(0,R,5,2,3,3,0,7);
__EEPROM_DATA(0,R,5,7,1,0,4,6);
__EEPROM_DATA(1,R,1,3,0,2,3,8);
__EEPROM_DATA(1,R,0,4,8,5,9,6);

void Startup(void) //one time startup function
{
    // DEVICE INITIALIZATION
    SYSTEM_Initialize(); //MCC generated startup
    TMR0_StartTimer(); //start TMR0, it is used for the random number generator
    //END DEVICE INITIALIZATION

    //PROGRAM INITIALIZATION
    //Interrupt Initialize (global is done later)
    INTERRUPT_PeripheralInterruptEnable();
    
    //Load EEPROM settings into RAM for fast access
    TimeFast = TimeFastStore; //time animation speed 
    TimeAdj = TimeAdjStore; //time adjustment setting initialize
    DateFormat = DateFormatStore; //date format setting initialize
    Brightness = BrightnessStore; //brightness setting initialize
    HourType = HourTypeStore; //12/24 hour setting initialize
    BlankStart = BlankStartStore; //blanking setting initialize
    BlankEnd = BlankEndStore; //blanking setting initialize

    //DS3232 startup check and initialization
    if (I2CRead(StatusReg) == 0b11001000) //checks status register matches the POR state (will true if this is the "first" time it has seen power)
    {
        I2CWrite(StatusReg, 0b01001000); //this clears bit 7 in the status/control register, starting the oscillator.
        I2CWrite(MinutesReg, 0x30); //this and the next 4 lines set up a default date/time, which is the first time a D-mail is sent
        I2CWrite(HoursReg, 0x12);
        I2CWrite(DateReg, 0x28);
        I2CWrite(MonthReg, 0x7);
        I2CWrite(YearReg, 0x10);
    }
    
    //Display Initialize
    EmptyTubes(); //blank the tubes
    Loader(); //load the blank tubes to the display
    TubesOn(); //turn the tubes on
    //END PROGRAM INITIALIZATION
    StartupDone = 1; //permanent bit to indicate that startup has been done 
}

void main(void) //Time Display
{
    uint8_t newsec; //latest second read from the clock
    uint8_t oldsec; //the previous second read from the clock
    uint8_t spincount; //counter for the animation at 30s
    uint8_t shift; //slide shift counter
    
    if (!StartupDone) //check if we have done startup or not
        Startup(); //run the initialization
    ei(); //start looking for interrupts, often turned off while in other areas of the program
    while(1) //this all happens until an interrupt sends us places via flags
    {
        if (GoDate == 1) //if the GoDate flag has been set
            DateDisplay(); //display the date
        else if (GoDM == 1) //if the GoDM flag has been set
            DMDisplay(); //go to the DM routines
        oldsec = newsec; //save the last read second for comparison
        newsec = I2CRead(SecondsReg); //get the next second, maybe
        BCD2Bin(newsec); //convert to binary for display
        if (newsec != oldsec) //is it actually a different second
        {
            SplitLoad(6); //load the seconds into the buffer
            if (newsec == 0x30) //if we are at a 30s
            {
                DisplayBuf[0] = 0; //in case this was blanked in 12 hour mode
                DisplayBuf[2] = 0; //get the decimal point in
                DisplayBuf[5] = 0; //this one as well
                for (spincount=41; spincount--;) //do 40 animation cycles, no need to save the display since it will loop back to the same numbers
                {
                    for (Pos=8; Pos--;) //tube loop
                    {
                        DisplayBuf[Pos]++; //increment the displayed value
                        if (DisplayBuf[Pos] == 10) //if we get to 10
                            DisplayBuf[Pos] = 0; //wrap to 0
                    }
                    Loader(); //once all the tubes are done
                    _delay(debounce); //tube display time
                }
                DateDisplay(); //display the date for a bit once the animation is done
            }
            else if (newsec == 0x59) //if we are near the top of a minute
            {
                DisplayBufSave(); //make a backup of the display
                for (shift=8; shift--;) //shift the display out the left side
                {
                    for (Pos=0; Pos<8; Pos++) //shift through the tubes
                    { //no fancy c compiler tricks for space saving, only works one way around        
                        DisplayBuf[Pos] = DisplayBuf[Pos + 1]; //make the tube = the next one
                    }
                    DisplayBuf[7] = 10; //except for the last one, it back fills the display with blanks
                    Loader(); //display this round
                    _delay(40000); //time for display
                } //ok, the display is now blank
                for (shift=8; shift--;) //now we shift the blank tubes out and shift in the saved values
                {
                    DisplayBuf[7] = DisplaySave[shift]; //get saved value and put it in the right most tube
                    Loader(); //display this
                    _delay(40000); //time for display
                    for (Pos=0; Pos<8; Pos++) //shift though the tubes
                    { //no fancy c compiler tricks for space saving, only works one way around
                        DisplayBuf[Pos] = DisplayBuf[Pos + 1]; //make the tube = the next one, in preparation for the next value to be added
                    }
                }
            }
            BCD2Bin(I2CRead(MinutesReg)); //get the minutes
            SplitLoad(3); //load the minutes into the buffer
            Temp = I2CRead(HoursReg); //get the hour, in a variable for later checks
            BCD2Bin(Temp); //load the hours into the buffer
            if (Temp == BlankStart) //are we at the start of the blank time?
                TubesOff(); //if so, turn off the display
            else if (Temp == BlankEnd) //are we at the end of the blank time?
                TubesOn(); //if so, turn on the display
            SplitLoad(0); //load the hours into the buffer
            if (HourType == 1) //12 hour mode?
            {
                if (Temp > 0x12) //is the current hour 13+?
                {
                    DisplayBuf[0] -= 1; //subtract 12 if so
                    DisplayBuf[1] -= 2;
                }
                if (DisplayBuf[0] == 0) //is the hour below 10?
                {
                    DisplayBuf[0] = 10; //since we are less than 10, the first tube does not need a digit 
                }
            }
            DisplayBuf[2] = R; //right DPs
            DisplayBuf[5] = R;
            if (DisplayBuf[7] & 1) //if seconds are even, swap to left DP
            {
                DisplayBuf[2] = L; //left DPs
                DisplayBuf[5] = L;
            }
            if (TimeAdj != 0) //if there is a time adjust setting
            {
                TimeAdj--; //decrement, this is basically a counter
                if (TimeAdj == 0) //if we are now at 0
                {
                    while(I2CRead(SecondsReg) != 0b00000001){} //wait until we get a 1 in the seconds register
                    if (TimeFast == 1) //if we are set up for moving backward
                        I2CWrite(SecondsReg, 0b00000000); //take that 1 and make it a 0
                    else //if we are setup for moving forward
                        I2CWrite(SecondsReg, 0b00000010); //take that 1 and make it a 2
                    TimeAdj = TimeAdjStore; //reset the counter from the stored setting
                }
            }
            if ((DisplayBuf[3]|DisplayBuf[4]|DisplayBuf[6]|DisplayBuf[7]) == 0) //all these positions must be 0 to be true
            {
                DisplayBufSave(); //save the display
                FixedWL(); //run a fixed animation
            }
            Loader(); //load it all to the tubes
            _delay(debounce); //display time
        }
    }
}

void DateDisplay(void)
{
    GoDate = 0; //clear the flag in case we got here via that
    di(); //turn off interrupts, buttons are used for other things here
    BCD2Bin(I2CRead(DateReg)); //get the date
    SplitLoad(3); //load the date into the buffer
    BCD2Bin(I2CRead(MonthReg)); //get the month
    SplitLoad(0); //load the month into the buffer
    BCD2Bin(I2CRead(YearReg)); //get the year
    SplitLoad(6); //load the year into the buffer
    DisplayBuf[2] = 10; //blank separating tubes
    DisplayBuf[5] = 10;
    if (DateFormat == 1) //if DDMMYY is preferred 
    {
        Temp = DisplayBuf[0]; //quick save of the month
        Pos = DisplayBuf[1]; //borrowing this here to save memory
        DisplayBuf[0] = DisplayBuf[3]; //flip the month 10s over
        DisplayBuf[1] = DisplayBuf[4]; //flip the month 1s over
        DisplayBuf[3] = Temp; //flip the day 10s over
        DisplayBuf[4] = Pos; //flip the day 1s over
    }
    while (SW2_GetValue()){} //wait for SW2 to be released
    Loader(); //display the date
    _delay(debounce); //give the tubes a second to display
    for (Pos=121; Pos--;) //loop here, showing the date, for about 3 seconds 
    {
        if (SW2_GetValue()) //check if SW2 got pressed again
            Settings(); //go to the settings
        _delay(debounce); //small delay
    }
    return; //back to the time
}

void DMDisplay(void)
{
    uint8_t seedadr = 0x77; //starting EEPROM address for loading saved values 
    
    di(); //turn off interrupts, buttons are used for other things here
    GoDM = 0; //clear flag if we got here by interrupt
    EEPROMBufferFill(seedadr);
    Loader(); //show the WL
    seedadr = 0x07; //move the starting point to the "first" number of the next WL
    while (1) //main loop, i am not happy with this double while loop thing, may implement 4th button press type to avoid this
    {
        Temp = Buttons(); //get a button press
        if (Temp == 1) //if short SW1
            RandomWL(); //do a random number
        else if (Temp == 2) //if long SW1
        {
            while (1) //sub loop
            {
                if (seedadr == 0x7F) //this is the address that will be present after the last WL
                    break; //leave sub loop
                EEPROMBufferFill(seedadr);
                DisplayBufSave(); //backup the display buffer
                FixedWL(); //animation returning to original state
                seedadr += 8; //move the starting point to the "first" number of the next WL
                Temp = Buttons(); //get another button press
                if (Temp == 1) //if short SW1
                    continue; //go around again for the next WL
                else if (Temp == 2) //if long SW1
                    return; //go to clock
                else //if SW2, user defined WL
                {
                    EmptyTubes(); //clear tube buffer in preparation for setting the WL
                    DisplayBuf[1] = R; //set the DP
                    TubeValuePicker(0); //cycle for setting the WL
                    for (Pos=9; Pos--;) //this will blink the tubes 4 times (4 on 4 off)
                    {
                        BL_Toggle(); //flip the blanking bit
                        _delay(28000); //delay for a bit
                    }
                    DisplayBufSave(); //save the user set number here
                    while (1) //loop this last part
                    {
                        Temp = Buttons(); //get a button return
                        if (Temp == 1) //if short SW1
                        {
                            if (Toggle == 1) //if we are on an even loop
                                FixedWL(); //do the fixed animation
                            else //if on the odd loop
                                RandomWL(); //random WL and animation
                            Toggle ^= 1; //flip the toggle bit
                        }
                        else //if anything else
                            return; //go back to the time
                    }
                }
            }
        }
        else //we get here if a 3 (SW2) was returned
            return; //back to the time
    }
}

void Settings(void)
{
    di(); //turn off interrupts, buttons are used for other things here
    EmptyTubes(); //clear tubes
    DisplayBuf[4] = 1; //load the version number
    DisplayBuf[5] = L;
    DisplayBuf[6] = 0;
    DisplayBuf[7] = 0;
    Loader(); //display the version number
    while (SW2_GetValue()){} //wait for SW2 release
    _delay(debounce); //debounce the tubes/button
    EmptyTubes(); //empty the tubes
    DisplayBuf[0] = 0; //setting #1
    DisplayBuf[1] = 1;
    BCDSetInc(0x23, 0, HoursReg); //do the hour setting
    DisplayBuf[1]++; //setting #2
    BCDSetInc(0x59, 0, MinutesReg); //do the minute setting
    DisplayBuf[1]++; //setting #3
    OtherSetInc(1, 0, &HourTypeStore, &HourType); //do the hour format setting
    DisplayBuf[1]++; //setting #4
    BCDSetInc(0x31, 0x1, DateReg); //do the date setting
    DisplayBuf[1]++; //setting #5
    BCDSetInc(0x12, 0x1, MonthReg); //do the month setting
    DisplayBuf[1]++; //setting #6
    BCDSetInc(0x99, 0, MonthReg); //do the year setting
    DisplayBuf[1]++; //setting #7
    OtherSetInc(1, 0, &DateFormatStore, &DateFormat); //do the date format setting
    DisplayBuf[1]++; //setting #8
    BCDSetInc(0x23, 0, BlankStarti2c); //do the blank start hour setting
    EEPROM_Write(&BlankStartStore, BlankStart); //save the setting
    DisplayBuf[1]++; //setting #9
    BCDSetInc(0x23, 0, BlankEndi2c); //do the blank ending hour setting
    EEPROM_Write(&BlankEndStore, BlankEnd); //save the setting
    DisplayBuf[0]++; //setting #10
    DisplayBuf[1] = 0;
    DisplayBuf[2] = R; //assuming that TimeFast is default
    if (TimeFast == 0) //but if it is not
        DisplayBuf[2] = 10; //blank the tube
    TimeSet = 1; //set the flag so we know that we are doing the setting version
    DisplayBuf[3] = 0; //set the rest of the tubes to 0
    DisplayBuf[4] = 0;
    DisplayBuf[5] = 0;
    DisplayBuf[6] = 0;
    DisplayBuf[7] = 0;
    TubeValuePicker(3); //set the values for the time delay interval
    TimeSet = 0; //done with the flag
    if (DisplayBuf[2] == R) //check for TimeFast setting
        TimeFast = 1; //time adjustments will now be negative
    else // will get here if the tube is blank
        TimeFast = 0; //time adjustments will now be positive
    TimeAdj = 0; //clear the TimeAdj variable, needs to be empty for what comes next
    for (Pos=3; Pos<8; Pos++) //starting at position  3 since that is where the numbers start from
    { //must go in order for this one, no space saving tricks
        TimeAdj = (TimeAdj * 10) + DisplayBuf[Pos]; //add the current position in
        if (Pos == 6 && TimeAdj > 6554) //if the user put in a value that is too large
        {
            TimeAdj = USHRT_MAX; //set the adjustment to the maximum possible
            break; //get out of here
        }
    }//setting now set
    EEPROM_Write(&TimeFastStore, TimeFast); //save the first part of the setting
    EEPROM_Write(&TimeAdjStore, (TimeAdj & 0x00FF)); //save the second part of the setting
    EEPROM_Write((&TimeAdjStore + 1), ((TimeAdj >> 8) & 0x00FF)); //save the final part of the setting
    DisplayBuf[1]++; //setting #11
    OtherSetInc(10, 1, &BrightnessStore, &Brightness); //do the brightness setting
}
/**
 End of File
*/