/* 
 * File:    Subfunctions.c
 * Author:  /u/xilyflob
 * License: GNU GPL V3.0
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef SUBROUTINES
#define	SUBROUTINES

#include <xc.h> // include processor files - each processor file is guarded.
#include <stdint.h>
#include <stdbool.h>

//START "MAIN" FUNCTIONS
/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Part of the main function, displays the current date, reached by way of interrupt flag setting.
 * @Example
    DateDisplay();
 */
void DateDisplay(void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Part of the main function, does the divergence meter display, reached by way of interrupt flag setting.
 * @Example
    DMDisplay();
 */
void DMDisplay(void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Part of the main function, handles all of the settings, reached by way of SW2 while in date mode.
 * @Example
    Settings();
 */
void Settings(void);
//END "MAIN" FUNCTIONS

//START DISPLAY FUNCTIONS
/**
 * @Param
    first = the position of the first tube in the pair that is being loaded
 * @Returns
    none
 * @Description
    Loads the contents of BCDSplit sequentially into two tubes.
 * @Example
    SplitLoad(6);
 */
void SplitLoad(uint8_t first);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Saves a backup of the DisplayBuf array. Some functions do things in there but then need to return to a value.
 * @Example
    DisplayBufSave();
 */
void DisplayBufSave(void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    This fills displaybuf with values that will not display anything on the tubes.
 * @Example
    FillBlanks();
 */
void EmptyTubes(void);

/**
 * @Param
    addr = an eeprom address
 * @Returns
    none
 * @Description
    Handles loading eeprom values into the tubes, in program preset hex values are incremented for this.
 * @Example
    EEPROMBufferFill(seedadr);
 */
void EEPROMBufferFill(uint8_t addr);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Disables to the tubes via the BL pin and disabling the HVPS.
 * @Example
    TubesOff();
 */
void TubesOff(void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Enables the tubes at the electrical level.
 * @Example
    TubesOn();
 */
void TubesOn(void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    A tube brightness pulse serving as an animation.
 * @Example
    Pulse();
 */
void Pulse(void);

/**
 * @Param
    start = the tube position to start the selection sequence
 * @Returns
    none
 * @Description
    This handles by tube user settable numbers.
 * @Example
    TubeValuePicker(0);
 */
void TubeValuePicker (uint8_t start);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
   Sets the animation lengths for randomly generated world lines.
   These lengths also by effect generate the random world line itself.
   Then runs the animation.
 * @Example
    RandomWL();
 */
void RandomWL(void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
   Sets the animation lengths for the fixed world lines. Then runs the animation.
 * @Example
    FixedWL();
 */
void FixedWL(void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Translates a value to be displayed into shift register form and sends it to the shift register and then latches the display.
 * @Example
    Loader();
 */
void Loader(void);
//END DISPLAY FUNCTIONS

//START INTERRUPT FUNCTIONS
/**
 * @Param
    none
 * @Returns
    none
 * @Description
    SW1 interrupt handling for button presses during main clock function.
 * @Example
    Don't call this.
 */
void SW1Interrupt(void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    SW2 interrupt handling for button presses during main clock function.
 * @Example
    Don't call this.
 */
void SW2Interrupt(void);
//END INTERRUPT FUNCTIONS

//START SETTING FUNCTIONS
/**
 * @Param
    max = the maximum value for the setting being adjusted
    min = the minimum value for the setting being adjusted
    i2creg = the register that the setting is in in the clock
 * @Returns
    none
 * @Description
    This handles changing the clock values and the requisite displaying.
 * @Example
    BCDSetInc(23, 0, HoursReg);
 */
void BCDSetInc(uint8_t max, uint8_t min, uint8_t i2creg);

/**
 * @Param
    max = the maximum value for the setting being adjusted
    min = the minimum value for the setting being adjusted
    eeaddr = the address in EEPROM that the setting is at (&variable)
    value = the ram variable of the setting you want to change (&variable)
 * @Returns
    none
 * @Description
    This handles changing the setting values and displaying them to the tubes.
 * @Example
    OtherSetInc(1, 0, &HourTypeStore, &HourType);
 */
void OtherSetInc(uint8_t max, uint8_t min, uint8_t *eeaddr, uint8_t *value);
//END SETTING FUNCTIONS

//START EEPROM FUNCTIONS
/**
 * @Param
    The address you want to read (&variable)
 * @Returns
    The data at the address
 * @Description
    Reads the requested EEPROM register and returns the value.
 * @Example
    EEPROM_Read(&HourTypeStore);
 */
uint8_t EEPROM_Read(uint8_t addr);

/**
 * @Param
    addr - the address that you are looking to write to (&variable)
    data -  the data to write
 * @Returns
    none
 * @Description
    Writes to the EEPROM register.
 * @Example
    EEPROM_Write(&HourTypeStore, HourType);
 */
void EEPROM_Write(uint8_t addr, uint8_t data);
//END EEPROM FUNCTIONS

//START I2C FUNCTIONS
/**
 * @Param
    reg = the address in the clock
 * @Returns
    The read data
 * @Description
    Reads values from the clock.
 * @Example
    I2CRead(DateReg);
 */
uint8_t I2CRead(uint8_t reg);

/**
 * @Param
    reg = the address in the clock
    data = the data to be written to the clock
 * @Returns
    none
 * @Description
    Writes values to the clock.
 * @Example
    I2CWrite(SecondsReg, 0);
 */
void I2CWrite(uint8_t reg, uint8_t data);

/**
 * @Param
    *regptr = the register that was given to the I2C function
 * @Returns
    none
 * @Description
    Opening sequence for I2C functions.
 * @Example
    I2COpen(&reg); //always looks like this
 */
void I2COpen(uint8_t *regptr);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Closing sequence for I2C functions.
 * @Example
    I2CClose();
 */
void I2CClose(void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Waits for the interrupt bit to get set and then resets it.
 * @Example
    I2CIrqWait();
 */
void I2CIrqWait(void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Will happen if a NACK is received.
 * @Example
    I2CFail();
 */
void I2CFail(void);
//END I2C FUNCTIONS

//START PROGRAM WORK FUNCTIONS
/**
 * @Param
    input = a two digit number, eg 42
 * @Returns
    none, indirectly the input but split into tens and ones in BCDSplit[]
 * @Description
    Splits a two digit number up into tens and ones, helpful for display and other things
 * @Example
    NumSplit(36);
 */
void NumSplit(uint8_t input);

/**
 * @Param
    upper = the maximum value you want back
 * @Returns
    A random number that is <= upper
 * @Description
    A "random" number generator with an upper limit.
 * @Example
    AnimBuf[6] = RunLength[RandomNum(10)];
 */
uint8_t RandomNum(uint8_t upper);

/**
 * @Param
    none
 * @Returns
    1 = short SW1, 2 = long SW1, 3 = SW2
 * @Description
    Watches for button presses and determines what press happened, returning a value assigned to that press.
 * @Example
    Temp = Buttons();
 */
uint8_t Buttons(void);

/**
 * @Param
    none
 * @Returns
    a packed BCD number
 * @Description
    Combines the contents of BCDSplit into a BCD number. Not used, but remains in case it is needed.
    The two numbers that are being put into the BCD should be in BCDSplit[].
 * @Example
    Temp = Bin2BCD();
 */
uint8_t Bin2BCD(void);

/**
 * @Param
    input = BCD data, eg, 0x10, 0b00110000
 * @Returns
    none, see description
 * @Description
    Converts the input into regular decimal format. Output will be in BCDSplit[].
 * @Example
    BCD2Bin(0x36);
 */
void BCD2Bin(uint8_t input);
//END PROGRAM WORK FUNCTIONS

#endif	/* SUBROUTINES */

