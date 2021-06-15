/* 
 * File:    Subfunctions.c
 * Author:  /u/xilyflob
 * License: GNU GPL V3.0
 */

#include "Variables.h"
#include "Subroutines.h"
#include "mcc_generated_files/mcc.h"

//START DISPLAY FUNCTIONS
void SplitLoad(uint8_t first)
{
    DisplayBuf[first] = BCDSplit[0]; //tens place goes in the first tube
    DisplayBuf[first + 1] = BCDSplit[1]; //ones place goes in the second
}

void DisplayBufSave(void)
{
    for (Pos=8; Pos--;) //this will loop until all values in the display buffer are 10, a number that will not display anything
    {
        DisplaySave[Pos] = DisplayBuf[Pos]; //copy over the current value
    }
}

void EmptyTubes(void)
{
    for (Pos=8; Pos--;) //this will loop until all values in the display buffer are 10, a number that will not display anything
    {
        DisplayBuf[Pos] = 10; //change current value to 10
    }
}

void EEPROMBufferFill(uint8_t addr)
{
    for (Pos=8; Pos--;)
    {
        DisplayBuf[Pos] = EEPROM_Read(addr); //get a number from the EEPROM
        addr--; //move to the next number in EEPROM
    }
}

void TubesOff(void)
{
    PWM6CONbits.PWM6EN = 0; //turn of the PWM generator
    BL_SetLow(); //blank the tubes
    HVPS_ENABLE_SetLow(); //turn off the HVPS
}

void TubesOn(void)
{
    PWM6_LoadDutyValue(((5190 * Brightness) / 100)); //Load the brightness value into the PWM generator
    PWM6CONbits.PWM6EN = 1; //turn on the PWM generator
    BL_SetHigh(); //unblank the tubes
    HVPS_ENABLE_SetHigh(); //turn on the HVPS
}

void Pulse(void)
{
    PWM6_LoadDutyValue(519); //flash full brightness
    _delay(104000); //these lengths are based on looks
    PWM6_LoadDutyValue(415); //level 8 brightness, pre calculated value
    _delay(26000);
    PWM6_LoadDutyValue(363); //level 7 brightness
    _delay(21000);
    PWM6_LoadDutyValue(311); //level 6 brightness
    _delay(16000);
    PWM6_LoadDutyValue(207); //level 4 brightness
}

void TubeValuePicker (uint8_t start)
{
    if (TimeSet) //will pass if TimeSet is set
    {
        while (1) //more loops
        {
            Loader(); //load what we got
            Temp = Buttons(); //button press
            if (Temp == 1) //if short SW1
                DisplayBuf[2] = R; //set to negative
            else if (Temp == 2) //if long SW1
                DisplayBuf[2] = 10; //set to positive
            else //will get there if SW2 was pressed
                break; //move on to the rest of the selection
        }
    }
    for (Pos=start; Pos<8; Pos++) //start setting the tubes, cant do loop code saving for usability
    {
        if (Pos == 1) //skip the DP tube
            continue; //and go to the next tube
        while (1) //loop this bit
        {
            Loader(); //load values so far
            Temp = Buttons(); //get a button press
            if (Temp == 1) //if short SW1
            {
                DisplayBuf[Pos]++; //increment number
                if (DisplayBuf[Pos] == 11) //if we pass 10
                    DisplayBuf[Pos] = 0; //wrap to 0
            }
            else if (Temp == 2) //if long SW1
            {
                DisplayBuf[Pos]--; //decrement number
                if (DisplayBuf[Pos] == 255) //if we pass 0
                    DisplayBuf[Pos] = 10; //wrap to 10
            }
            else //if SW2
                break; //next tube
        } 
    }
}

void RandomWL(void)
{
    uint8_t WLtype; //this will determine if a 1, 0, or nothing will go in the first tube
    
    WLtype = RandomNum(255); //get a value to set the WL type
    NegWL = 0; //clear the negative WL flag
    DisplayBuf[0] = 0;//a alpha WL, 93.6% chance, if we aren't anything else, this will pass through to the loader
    if (WLtype <= 3) //a "negative" WL, 1.6% chance
    {
        DisplayBuf[0] = 1; //picked this number so it's not super obvious that a neg WL was gotten
        NegWL = 1; //set the negative WL flag
    }
    else if (WLtype <= 15 && WLtype > 3) //a beta WL, 4.3% chance
        DisplayBuf[0] = 1; //set the first tube for a beta line
    AnimBuf[0] = RunLength[RandomNum(7)]; //load a value for animation length for the first tube
    for (Pos=7; Pos>2; Pos--) //load a value for animation length for the other tubes
    {                         //starting on the third tube since the point does not animate and the first is preset
        AnimBuf[Pos] = RunLength[RandomNum(63)]; //value loading for tubes 3-8,
    }   //these values by extention will also generate the rest of the random WL
    while (1) //this will loop until all the numbers have settled (what follows is the animation portion)
    {
        Action = 0; //clear the flag
        if (AnimBuf[0] != 0) //if the animation has not finished for the first tube
        {
            AnimBuf[0]--; //decrement animation counter
            Action = 1; //set the flag
            DisplayBuf[0]++; //increment the number displayed in the tube
            if (DisplayBuf[0] >= 10) //has the tube been incremented to 10? will also handle accidentally starting at 10
                DisplayBuf[0] = 0; //if so wrap back to 0
        }
        else if (AnimBuf[0] == 0 && NegWL == 1) //if the animation has ended AND the neg WL flag is set
            DisplayBuf[0] = 10; //blank the tube
        for (Pos=7; Pos>2; Pos--) //this will do the same thing as the above if for
        {                         //the first tube, but for tubes 3-8
            if (AnimBuf[Pos] != 0) //completion check
            {
                AnimBuf[Pos]--; //decrement animation counter
                Action = 1; //flag set
                DisplayBuf[Pos]++; //increment displayed value
                if (DisplayBuf[Pos] >= 10) //did we get to 10?
                    DisplayBuf[Pos] = 0; //wrap to 0
            }
        }
        if (Action == 1) //if a tube has been changed, display it
            Loader();
        else if (Action == 0) //if no tubes changed then we are done
            break;
        _delay(debounce); //time for tube display
    }
    Pulse(); //flash tubes at the end of the animation
}

void FixedWL(void)
{
    for (Pos=8; Pos--;) //load a value for animation length for the tubes
    {
        AnimBuf[Pos] = RunLength[RandomNum(63)]; //value loading for tubes
    }
    AnimBuf[1] = 0; //clear the value for the second tube, it is a fixed DP, done this way since it is more efficient
    while (1) //this will loop until all the numbers have settled (what follows is the animation portion)
    {
        Action = 0; //clear the flag
        for (Pos=8; Pos--;) //this covers all tubes
        {
            if (AnimBuf[Pos] != 0) //if the animation has not finished
            {
                AnimBuf[Pos]--; //decrement the animation counter
                if (AnimBuf[Pos] == 0) //if the animation is now done
                {
                    DisplayBuf[Pos] = DisplaySave[Pos]; //get the right value in the buffer, the animation does not land on the right one
                    continue; //end this loop, this does not count as an animation
                }
                else //otherwise
                {
                    Action = 1; //set flag
                    DisplayBuf[Pos]++; //increment the display
                    if (DisplayBuf[Pos] == 10) //if display gets to 10
                        DisplayBuf[Pos] = 0; //wrap to 0
                }
            }
        }
        if (Action == 1) //if a tube has been changed, display it
            Loader();
        else if (Action == 0) //if no tubes changed then we are done
            break;
        _delay(debounce); //time for tube display
    }
    Pulse(); //flash tubes at the end of the animation
}

void Loader(void)
{
    char regp; //for counter
    char shftregpln[12] = {L,1,2,3,4,5,6,7,8,9,0,R}; //this is the order of the inputs into the tube as setup on the board
    
    for (Pos=0; Pos<8; Pos++) //this will rotate through all the tubes, 
    { //cant use any fancy c compiler tricks for space saving, this must be done in order
        for (regp=0; regp<13; regp++) //this will check where the 1 needs to be to display the value correctly
        {
            if (shftregpln[regp] == DisplayBuf[Pos]) //the actual search check
            {
                DIN_SetHigh(); //set DIN high to send a 1
                CLK_SetHigh(); //raise the CLK line
                CLK_SetLow(); //flip the CLK line to create a voltage drop and the 1 is read by the shift register
            }
            else
            {
                DIN_SetLow(); //ensure that DIN is low a 1 wont be sent
                CLK_SetHigh(); //raise the CLK line
                CLK_SetLow(); //flip the CLK line to create a voltage drop and the 0 is read by the shift register
            }
        }
    }
    LE_SetHigh(); //load the latches
    LE_SetLow(); //return to low to prep for the next loader run
}
//END DISPLAY FUNCTIONS

//START INTERRUPT FUNCTIONS
void SW1Interrupt(void)
{
    _delay(10000); //button debouce
    while (SW1_GetValue()){} //chillin, waiting for button release
    GoDM = 1; //set the flag to go the DM function
}

void SW2Interrupt(void)
{
    _delay(10000); //button debouce
    while (SW2_GetValue()){} //chillin, waiting for button release
    GoDate = 1; //set the flag to go to the date
}
//END INTERRUPT FUNCTIONS

//START SETTING FUNCTIONS
void BCDSetInc(uint8_t max, uint8_t min, uint8_t i2creg)
{
    uint8_t value; //value of the setting being worked on
    
    if (i2creg == BlankStarti2c) //if we faked our way in here
        value = BlankStart; //get the starting blank hour
    else if (i2creg == BlankEndi2c) //the other fake entry
        value = BlankEnd; //get the ending blank hour
    else //most of the time we get here
        value = I2CRead(i2creg); //get the value from the clock for the setting
    OldSet = value; //copy for use later
    while(1) //foreverrrrrrrr
    {
        BCD2Bin(value); //real numbers for display
        SplitLoad(6); //load to buffer
        Loader(); //load it to the display
        _delay(debounce); //debounce the tubes
        Temp = Buttons(); //get a button press
        if (Temp == 3) //if SW2 is pressed
            break; //number changing done, leave the while loop
        else if (Temp == 1) //if SW1 is short pressed
        {
            value++; //increment the setting value
            if ((value & 0xF) == 0xA) //if we passed 9 in the ones place
                value = (value & 0xF0) + 10; //clear the ones place and add 10
            if (value > max) //if the value is greater than the max value
                value = min; //wrap to min
        }
        else //if SW1 is long pressed
        {
            if (value - min == 0) //this evaluating true means that any more decrement would exceed the minimum, so we wrap to the max
                value = max; //wrap to the maximum value
            else //otherwise
            {
                if ((value & 0xF) == 0) //if the ones place is 0
                    value = (value + 9) - 10; //add 9, then subtract 10
                else //otherwise
                    value--; //decrement the setting value
            }
        }
    }
    if (value != OldSet) //if the value changed
    {
        if (i2creg == BlankStarti2c) //for the blank starting hour
            BlankStart = value; //save to the active storage
        else if (i2creg == BlankEndi2c) //for the blank ending hour
            BlankEnd = value; //save to the active storage
        else //everything else
        {
            I2CWrite(i2creg, value); //write it to the place we got it
            if (i2creg == MinutesReg) //if we were doing the minutes
                I2CWrite(SecondsReg, 0); //clear the seconds register
        }
    }
}

void OtherSetInc(uint8_t max, uint8_t min, uint8_t *eeaddr, uint8_t *value)
{
    OldSet = *value; //copy for use later
    while(1) //changing loop
    {
        if (eeaddr == &HourTypeStore) //if we are doing 12/24 mode
        {
            DisplayBuf[6] = 1; //start assuming 12 hour setting is desired
            DisplayBuf[7] = 2;
            if (HourType == 0) //if in 24 hour mode though
            {
                DisplayBuf[6] = 2; //swap to 24 if 24 is selected
                DisplayBuf[7] = 4;
            }
        }
        else //everything else
        {
            NumSplit(value); //split the stored value
            SplitLoad(6); //load to the buffer
        }
        Loader(); //Display the value
        Temp = Buttons(); //get a button press
        if (Temp == 3) //if SW2 was pressed
            break;
        else if (Temp == 1) //if SW1 is short pressed
        {
            (*value)++; //increment the ones
            if (*value > max) //if we are above the maximum
                *value = min; //wrap to min
        }
        else //if SW1 is long pressed
        {
            if (*value -  min == 0) //if currently at the minimum
                *value = max; //wrap to max
            else //otherwise
                (*value)--; //decrement value
        }
        if (eeaddr == &BrightnessStore) //if we were doing brightness
            PWM6_LoadDutyValue(((5190 * (Brightness)) / 100)); //Load the brightness value into the PWM generator
    }
    if (*value != OldSet) //if the value changed
        EEPROM_Write(eeaddr, *value); //save to the setting storage
}
//END SETTING FUNCTIONS

//START EEPROM FUNCTIONS
uint8_t EEPROM_Read(uint8_t addr)
{
    NVMCON1bits.NVMREGS = 1; //this is a direct copy from eeprom_routines.h
    NVMADRL = (addr) & 0xFFu; //it is here for easier code reading
    NVMADRH = 0x70;
    NVMCON1bits.RD = 1;
    return NVMDATL;
}

void EEPROM_Write(uint8_t addr, uint8_t data)
{
    while (NVMCON1bits.WR){} //this is a direct copy from eeprom_routines.h
	NVMCON1bits.NVMREGS = 1; //it is here for easier code reading
	NVMADRL = (addr) & 0xFFu;
	NVMADRH = 0x70;
	NVMDATH = 0;
	NVMDATL = (data) & 0xFFu;
	STATUSbits.CARRY = 0;
	if (INTCONbits.GIE)
    {
		STATUSbits.CARRY = 1;
	}
	INTCONbits.GIE = 0;
	NVMCON1bits.WREN = 1;
	NVMCON2 = 0x55;
	NVMCON2 = 0xAA;
	NVMCON1bits.WR = 1;
	while (NVMCON1bits.WR){}
	NVMCON1bits.WREN = 0;
	if (STATUSbits.CARRY)
    {
		INTCONbits.GIE = 1;
	}
}
//END EEPROM FUNCTIONS

//START I2C FUNCTIONS
uint8_t I2CRead(uint8_t reg)
{
    uint8_t receiveddata; //the data we get back will be temporarily stored here
    
    I2COpen(&reg); //initialize the I2C connection
    SSP1CON2bits.RSEN = 1; //start the repeated start sequence
    I2CIrqWait(); //wait for the interrupt
    SSP1BUF = (ClockAddress << 1 | 1); //send the clock address in read mode
    I2CIrqWait(); //wait for the interrupt
    if (SSP1CON2bits.ACKSTAT) //if there was NACK
        I2CFail(); //insert error handle here
    SSP1CON2bits.RCEN = 1; //enable receiving
    I2CIrqWait(); //wait for the interrupt
    receiveddata = SSP1BUF; //get the returned data
    SSP1CON2bits.ACKDT = 1; //prep to send a NACK
    SSP1CON2bits.ACKEN = 1; //do the NACK sequence
    I2CIrqWait(); //wait for the interrupt
    I2CClose(); //I2C closing sequence
    return receiveddata; //return what we got
}

void I2CWrite(uint8_t reg, uint8_t data)
{
    I2COpen(&reg); //initialize the I2C
    SSP1BUF = data; //send the data we want to write
    if (SSP1CON2bits.ACKSTAT) //if there was NACK
        I2CFail(); //insert error handle here
    I2CIrqWait(); //wait for the interrupt
    I2CClose(); //I2C closing sequence
}

void I2COpen(uint8_t *regptr)
{
    PIR3bits.SSP1IF = 0; //clear the interrupt bit in case it was set for some reason
    PIE3bits.SSP1IE = 1; //enable interrupts for I2C
    SSP1CON1bits.SSPEN = 1; //enable the I2C
    SSP1CON2bits.SEN = 1; //send the start signal over the pins
    I2CIrqWait(); //wait for the interrupt
    SSP1BUF = (ClockAddress << 1); //send the clock address in write mode
    I2CIrqWait(); //wait for the interrupt
    if (SSP1CON2bits.ACKSTAT) //if there was NACK
        I2CFail(); //insert error handle here
    SSP1BUF = *regptr; //send the register we want to read
}

void I2CClose(void)
{
    SSP1CON2bits.PEN = 1; //start the close sequence
    I2CIrqWait(); //wait for the interrupt
    PIE3bits.SSP1IE = 0; //disable interrupts for I2C
    SSP1CON1bits.SSPEN = 0; //disable the I2C
}

void I2CIrqWait(void)
{
    while (!PIR3bits.SSP1IF); //wait for the interrupt bit
    PIR3bits.SSP1IF = 0; //clear the interrupt bit
}

void I2CFail(void)
{
    EmptyTubes(); //clear the tubes
    DisplayBuf[5] = 6; //set the last 3 to 6
    DisplayBuf[6] = 6;
    DisplayBuf[7] = 6;
    Loader(); //display the tubes
    while (1){} //guess i live here now (must power off the device, check the battery levels)
}
//END I2C FUNCTIONS

//START PROGRAM WORK FUNCTIONS
void NumSplit(uint8_t input)
{
    BCDSplit[1] = input; //get the input into a generally available variable
    BCDSplit[0] = 0; //zero out the other half
    while(BCDSplit[1] >= 10) //while we are above 10
    {
        BCDSplit[0]++; //increment tens place
        BCDSplit[1] -= 10; //take 10 off of the orig value
    }
}

uint8_t RandomNum(uint8_t upper)
{
    uint8_t rand_num; //the random number

    srand(TMR0_ReadTimer()); //randomize the randomizer
    rand_num = (rand() % (upper + 1)); //get the random number, the upper variable controls the upper limit
    return rand_num; //return the number
}

uint8_t Buttons(void)
{
    uint16_t presstime = 500; //how long a long press is in ms (user definable)
    buttoncounter = 13; //13 is the base value to account for the 10ms debounce and a consistent 3 interrupt undershoot that the timer does
    
    while(1) //keep watching forever
    {    
        if (SW1_GetValue()) //looking for SW1 press
        {
            _delay(10000); //basic button debounce
            TMR4_Start(); //start the timer, 1ms period, interrupt enabled
            while (SW1_GetValue()){} //wait for button release, it would take 50+ days for the counter to overflow, so i'm gonna say that forever is an ok loop
            TMR4_Stop(); //stop the timer
            if (buttoncounter > presstime) //more than 500ms?
            {
                return 2; //end function, return 2
            }
            return 1; //end function, return 1
        }
        else if (SW2_GetValue()) //or looking for SW2 press
        {
            _delay(10000); //basic button debounce
            while (SW2_GetValue()){} //wait for button release
            return 3; //end function, return 3
        }
    }
}

uint8_t Bin2BCD(void)
{
    return (((BCDSplit[0] << 4) | BCDSplit[1])); //combine the two values into the packed BCD
}

void BCD2Bin(uint8_t input)
{
    BCDSplit[1] = input & 0xF; //get ones place
    input = (input >> 4) | (input << 4); //swapf equivelent, will trade the positions of the digits in the BCD
    BCDSplit[0] = input & 0xF; //get tens place
}
//END PROGRAM WORK FUNCTIONS

/**
 End of File
*/