/**
  Generated Pin Manager File

  Company:
    Microchip Technology Inc.

  File Name:
    pin_manager.c

  Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for pin APIs for all pins selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC16F18444
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.31 and above
        MPLAB             :  MPLAB X 5.45

    Copyright (c) 2013 - 2015 released Microchip Technology Inc.  All rights reserved.
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

#include "pin_manager.h"
#include "../Subroutines.h"

void (*IOCCF0_InterruptHandler)(void);
void (*IOCCF1_InterruptHandler)(void);

void PIN_MANAGER_Initialize(void)
{
    /**
    LATx registers
    */
    LATA = 0x00;
    LATB = 0x00;
    LATC = 0x00;

    /**
    TRISx registers
    */
    TRISA = 0x0B;
    TRISB = 0x50;
    TRISC = 0x03;

    /**
    ANSELx registers
    */
    ANSELC = 0xFC;
    ANSELB = 0xA0;
    ANSELA = 0x37;

    /**
    WPUx registers
    */
    WPUB = 0x00;
    WPUA = 0x00;
    WPUC = 0x00;

    /**
    ODx registers
    */
    ODCONA = 0x00;
    ODCONB = 0x00;
    ODCONC = 0x00;

    /**
    SLRCONx registers
    */
    SLRCONA = 0x37;
    SLRCONB = 0xF0;
    SLRCONC = 0xFF;

    /**
    INLVLx registers
    */
    INLVLA = 0x3F;
    INLVLB = 0xF0;
    INLVLC = 0xFF;

    /**
    IOCx registers 
    */
    //interrupt on change for group IOCCF - flag
    IOCCFbits.IOCCF0 = 0;
    //interrupt on change for group IOCCF - flag
    IOCCFbits.IOCCF1 = 0;
    //interrupt on change for group IOCCN - negative
    IOCCNbits.IOCCN0 = 0;
    //interrupt on change for group IOCCN - negative
    IOCCNbits.IOCCN1 = 0;
    //interrupt on change for group IOCCP - positive
    IOCCPbits.IOCCP0 = 1;
    //interrupt on change for group IOCCP - positive
    IOCCPbits.IOCCP1 = 1;

    // register default IOC callback functions at runtime; use these methods to register a custom function
    //IOCCF0_SetInterruptHandler(IOCCF0_DefaultInterruptHandler); setting this to a custom function does not work here
    //IOCCF1_SetInterruptHandler(IOCCF1_DefaultInterruptHandler);
   
    // Enable IOCI interrupt 
    PIE0bits.IOCIE = 1; 
	
	
    SSP1CLKPPS = 0x0C;   //RB4->MSSP1:SCL1;    
    RB6PPS = 0x14;   //RB6->MSSP1:SDA1;    
    RC4PPS = 0x0D;   //RC4->PWM6:PWM6OUT;    
    RB4PPS = 0x13;   //RB4->MSSP1:SCL1;    
    SSP1DATPPS = 0x0E;   //RB6->MSSP1:SDA1;    

    //Make sure pins are set like we want them
    RA2_UNUSED_SetLow(); //these are unused pins, recommended state for such pins is to be set low
    RA4_UNUSED_SetLow();
    RA5_UNUSED_SetLow();
    RB5_UNUSED_SetLow();
    RB7_UNUSED_SetLow();
    SW1_SetLow(); //switch pins, making sure there is no output
    SW2_SetLow();
    BL_SetLow(); //this blanks the tubes
    LE_SetLow(); //data transfer is on
    CLK_SetLow(); //clock line low
    HVPS_ENABLE_SetLow(); //HVPS off
}
  
void PIN_MANAGER_IOC(void)
{   
	// interrupt on change for pin IOCCF0
    if(IOCCFbits.IOCCF0 == 1)
    {
        //IOCCF0_ISR();
        SW1Interrupt();
        IOCCFbits.IOCCF0 = 0;
    }	
	// interrupt on change for pin IOCCF1
    if(IOCCFbits.IOCCF1 == 1)
    {
        //IOCCF1_ISR();
        SW2Interrupt();
        IOCCFbits.IOCCF1 = 0;
    }	
}

//fuck all this extra junk, we doin it live in the IOC function
///**
//   IOCCF0 Interrupt Service Routine
//*/
//void IOCCF0_ISR(void) {
//
//    // Add custom IOCCF0 code
//
//    // Call the interrupt handler for the callback registered at runtime
//    if(IOCCF0_InterruptHandler)
//    {
//        IOCCF0_InterruptHandler();
//    }
//    IOCCFbits.IOCCF0 = 0;
//}
//
///**
//  Allows selecting an interrupt handler for IOCCF0 at application runtime
//*/
//void IOCCF0_SetInterruptHandler(void (* InterruptHandler)(void)){
//    IOCCF0_InterruptHandler = InterruptHandler;
//}
//
///**
//  Default interrupt handler for IOCCF0
//*/
//void IOCCF0_DefaultInterruptHandler(void){
//    // add your IOCCF0 interrupt custom code
//    // or set custom function using IOCCF0_SetInterruptHandler()
//}
//
///**
//   IOCCF1 Interrupt Service Routine
//*/
//void IOCCF1_ISR(void) {
//
//    // Add custom IOCCF1 code
//
//    // Call the interrupt handler for the callback registered at runtime
//    if(IOCCF1_InterruptHandler)
//    {
//        IOCCF1_InterruptHandler();
//    }
//    IOCCFbits.IOCCF1 = 0;
//}
//
///**
//  Allows selecting an interrupt handler for IOCCF1 at application runtime
//*/
//void IOCCF1_SetInterruptHandler(void (* InterruptHandler)(void)){
//    IOCCF1_InterruptHandler = InterruptHandler;
//}
//
///**
//  Default interrupt handler for IOCCF1
//*/
//void IOCCF1_DefaultInterruptHandler(void){
//    // add your IOCCF1 interrupt custom code
//    // or set custom function using IOCCF1_SetInterruptHandler()
//}

/**
 End of File
*/