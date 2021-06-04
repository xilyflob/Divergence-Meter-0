/* 
 * File:    Subfunctions.c
 * Author:  /u/xilyflob
 * License: GNU GPL V3.0
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef VARIABLES
#define	VARIABLES

#include <xc.h> // include processor files - each processor file is guarded.  

#define L 0x4C //L in hex
#define R 0x52 //R in hex
#define debounce 16000 //standard debounce delay value
#define BlankStarti2c 0x14 //a real address, but not used for storage of the blanking hours
#define BlankEndi2c 0x15 //a real address, but not used for storage of the blanking hours

//Fixed clock values
#define ClockAddress 0b1101000 //address for accessing the clock
#define SecondsReg 0x00 // location of the seconds in the clock
#define MinutesReg 0x01 //location of the minutes in the clock
#define HoursReg 0x02 //location of the hours in the clock
#define DateReg 0x04 //location of the date in the clock
#define MonthReg 0x05 //location of the month in the clock
#define YearReg 0x06 //location of the year in the clock
#define StatusReg 0x0F //location of the control/status register in the clock

//Display Stuff
uint8_t DisplayBuf[8] = {0}; //actual things to be displayed
uint8_t RunLength[] = {20,30,40,50,50,60,60,70,15,25,35,45,55,55,55,65,18,19,22, //Hokay so, this contains the pre set animation lengths for the tube animations.
                       23,24,26,27,28,29,31,32,33,34,36,37,38,39,41,42,43,44,46, //The first 8 are multiples of 10, the first 16 are multiples of 5, and the rest
                       47,48,49,16,51,17,52,68,53,67,21,69,54,56,56,64,57,57,66, //are spaced distributed to give a pleasing animation.
                       58,58,63,59,59,61,62};
uint8_t AnimBuf[8] = {0}; // storage for the animation lengths
uint8_t DisplaySave[8] = {0}; //backup for the display buffer as some subfunctions mess the actual buffer up

//Flags and counters
__bit NegWL = 0; //"negative" WL flag
__bit Action = 0; //flag for if an action was taken on a round of animation
__bit GoDate = 0; //go to the date display, used by the interrupts
__bit GoDM = 0; //go to the DM display, used by the interrupts
__bit Toggle = 0; //flag for the user set WL to swap between the set one and random ones
__bit TimeSet = 0; //flag to indicate that we are at the TimeAdj setting run of TubeValuePicker
__bit StartupDone; //ensure that startup only runs once
uint8_t Pos; //often used counter when running though tubes for various things
uint16_t buttoncounter; //TMR4 interrupt counter

//Live copies of EEPROM settings
uint8_t TimeFast; //indicates which direction of adjust in during a time adjustment
uint16_t TimeAdj; //value for the time adjustment offset
uint8_t DateFormat; //setting for the date format
uint8_t Brightness; //value for the brightness of the tube
uint8_t HourType; //setting for 12/24 hour modes
uint8_t BlankStart; //hour that the tubes will turn off automatically
uint8_t BlankEnd; //hour that the tubes will turn on automatically, if set to the same as the start, there will be no blank period

//other things
uint8_t Temp; //a working register
uint8_t OldSet; //used for old settings and other random stuff
uint8_t BCDSplit[2] = {0}; //used for getting digits out of BCD values

//EEPRROM Variables
__eeprom uint8_t TimeFastStore = 1; //Fast or slow time setting, indicates weather to move back (1) or forward (0), Default: 1
__eeprom uint16_t TimeAdjStore = 0; //Time adjustment value, this is the number of hours in between 1 second of drift in the clock, Default: 0
__eeprom uint8_t DateFormatStore = 0; //Date format MMDDYY (0) or DDMMYY (1), Default: 0
__eeprom uint8_t BrightnessStore = 5; //Brightness setting 0-7, Default: 5
__eeprom uint8_t HourTypeStore = 1; //12/24 hour setting 12 (1) or 24 (0), Default: 1
__eeprom uint8_t BlankStartStore = 22; //hour that the tubes will auto turn off, Default: 22 (10PM)
__eeprom uint8_t BlankEndStore = 22; //hour that the tubes will auto turn on, Default: 22 (10PM)
//End EEPROM Initialization

#endif	/* VARIABLES */

