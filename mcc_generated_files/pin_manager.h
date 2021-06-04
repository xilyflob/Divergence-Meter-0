/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for .
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC16F18444
        Driver Version    :  2.11
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.31 and above
        MPLAB 	          :  MPLAB X 5.45	
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

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

/**
  Section: Included Files
*/

#include <xc.h>

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set RA2_UNUSED aliases
#define RA2_UNUSED_TRIS                 TRISAbits.TRISA2
#define RA2_UNUSED_LAT                  LATAbits.LATA2
#define RA2_UNUSED_PORT                 PORTAbits.RA2
#define RA2_UNUSED_WPU                  WPUAbits.WPUA2
#define RA2_UNUSED_OD                   ODCONAbits.ODCA2
#define RA2_UNUSED_ANS                  ANSELAbits.ANSA2
#define RA2_UNUSED_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define RA2_UNUSED_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define RA2_UNUSED_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define RA2_UNUSED_GetValue()           PORTAbits.RA2
#define RA2_UNUSED_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define RA2_UNUSED_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define RA2_UNUSED_SetPullup()          do { WPUAbits.WPUA2 = 1; } while(0)
#define RA2_UNUSED_ResetPullup()        do { WPUAbits.WPUA2 = 0; } while(0)
#define RA2_UNUSED_SetPushPull()        do { ODCONAbits.ODCA2 = 0; } while(0)
#define RA2_UNUSED_SetOpenDrain()       do { ODCONAbits.ODCA2 = 1; } while(0)
#define RA2_UNUSED_SetAnalogMode()      do { ANSELAbits.ANSA2 = 1; } while(0)
#define RA2_UNUSED_SetDigitalMode()     do { ANSELAbits.ANSA2 = 0; } while(0)

// get/set RA4_UNUSED aliases
#define RA4_UNUSED_TRIS                 TRISAbits.TRISA4
#define RA4_UNUSED_LAT                  LATAbits.LATA4
#define RA4_UNUSED_PORT                 PORTAbits.RA4
#define RA4_UNUSED_WPU                  WPUAbits.WPUA4
#define RA4_UNUSED_OD                   ODCONAbits.ODCA4
#define RA4_UNUSED_ANS                  ANSELAbits.ANSA4
#define RA4_UNUSED_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define RA4_UNUSED_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define RA4_UNUSED_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define RA4_UNUSED_GetValue()           PORTAbits.RA4
#define RA4_UNUSED_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define RA4_UNUSED_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)
#define RA4_UNUSED_SetPullup()          do { WPUAbits.WPUA4 = 1; } while(0)
#define RA4_UNUSED_ResetPullup()        do { WPUAbits.WPUA4 = 0; } while(0)
#define RA4_UNUSED_SetPushPull()        do { ODCONAbits.ODCA4 = 0; } while(0)
#define RA4_UNUSED_SetOpenDrain()       do { ODCONAbits.ODCA4 = 1; } while(0)
#define RA4_UNUSED_SetAnalogMode()      do { ANSELAbits.ANSA4 = 1; } while(0)
#define RA4_UNUSED_SetDigitalMode()     do { ANSELAbits.ANSA4 = 0; } while(0)

// get/set RA5_UNUSED aliases
#define RA5_UNUSED_TRIS                 TRISAbits.TRISA5
#define RA5_UNUSED_LAT                  LATAbits.LATA5
#define RA5_UNUSED_PORT                 PORTAbits.RA5
#define RA5_UNUSED_WPU                  WPUAbits.WPUA5
#define RA5_UNUSED_OD                   ODCONAbits.ODCA5
#define RA5_UNUSED_ANS                  ANSELAbits.ANSA5
#define RA5_UNUSED_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define RA5_UNUSED_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define RA5_UNUSED_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define RA5_UNUSED_GetValue()           PORTAbits.RA5
#define RA5_UNUSED_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define RA5_UNUSED_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define RA5_UNUSED_SetPullup()          do { WPUAbits.WPUA5 = 1; } while(0)
#define RA5_UNUSED_ResetPullup()        do { WPUAbits.WPUA5 = 0; } while(0)
#define RA5_UNUSED_SetPushPull()        do { ODCONAbits.ODCA5 = 0; } while(0)
#define RA5_UNUSED_SetOpenDrain()       do { ODCONAbits.ODCA5 = 1; } while(0)
#define RA5_UNUSED_SetAnalogMode()      do { ANSELAbits.ANSA5 = 1; } while(0)
#define RA5_UNUSED_SetDigitalMode()     do { ANSELAbits.ANSA5 = 0; } while(0)

// get/set RB4 procedures
#define RB4_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define RB4_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define RB4_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define RB4_GetValue()              PORTBbits.RB4
#define RB4_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define RB4_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define RB4_SetPullup()             do { WPUBbits.WPUB4 = 1; } while(0)
#define RB4_ResetPullup()           do { WPUBbits.WPUB4 = 0; } while(0)
#define RB4_SetAnalogMode()         do { ANSELBbits.ANSB4 = 1; } while(0)
#define RB4_SetDigitalMode()        do { ANSELBbits.ANSB4 = 0; } while(0)

// get/set RB5_UNUSED aliases
#define RB5_UNUSED_TRIS                 TRISBbits.TRISB5
#define RB5_UNUSED_LAT                  LATBbits.LATB5
#define RB5_UNUSED_PORT                 PORTBbits.RB5
#define RB5_UNUSED_WPU                  WPUBbits.WPUB5
#define RB5_UNUSED_OD                   ODCONBbits.ODCB5
#define RB5_UNUSED_ANS                  ANSELBbits.ANSB5
#define RB5_UNUSED_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define RB5_UNUSED_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define RB5_UNUSED_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define RB5_UNUSED_GetValue()           PORTBbits.RB5
#define RB5_UNUSED_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define RB5_UNUSED_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define RB5_UNUSED_SetPullup()          do { WPUBbits.WPUB5 = 1; } while(0)
#define RB5_UNUSED_ResetPullup()        do { WPUBbits.WPUB5 = 0; } while(0)
#define RB5_UNUSED_SetPushPull()        do { ODCONBbits.ODCB5 = 0; } while(0)
#define RB5_UNUSED_SetOpenDrain()       do { ODCONBbits.ODCB5 = 1; } while(0)
#define RB5_UNUSED_SetAnalogMode()      do { ANSELBbits.ANSB5 = 1; } while(0)
#define RB5_UNUSED_SetDigitalMode()     do { ANSELBbits.ANSB5 = 0; } while(0)

// get/set RB6 procedures
#define RB6_SetHigh()            do { LATBbits.LATB6 = 1; } while(0)
#define RB6_SetLow()             do { LATBbits.LATB6 = 0; } while(0)
#define RB6_Toggle()             do { LATBbits.LATB6 = ~LATBbits.LATB6; } while(0)
#define RB6_GetValue()              PORTBbits.RB6
#define RB6_SetDigitalInput()    do { TRISBbits.TRISB6 = 1; } while(0)
#define RB6_SetDigitalOutput()   do { TRISBbits.TRISB6 = 0; } while(0)
#define RB6_SetPullup()             do { WPUBbits.WPUB6 = 1; } while(0)
#define RB6_ResetPullup()           do { WPUBbits.WPUB6 = 0; } while(0)
#define RB6_SetAnalogMode()         do { ANSELBbits.ANSB6 = 1; } while(0)
#define RB6_SetDigitalMode()        do { ANSELBbits.ANSB6 = 0; } while(0)

// get/set RB7_UNUSED aliases
#define RB7_UNUSED_TRIS                 TRISBbits.TRISB7
#define RB7_UNUSED_LAT                  LATBbits.LATB7
#define RB7_UNUSED_PORT                 PORTBbits.RB7
#define RB7_UNUSED_WPU                  WPUBbits.WPUB7
#define RB7_UNUSED_OD                   ODCONBbits.ODCB7
#define RB7_UNUSED_ANS                  ANSELBbits.ANSB7
#define RB7_UNUSED_SetHigh()            do { LATBbits.LATB7 = 1; } while(0)
#define RB7_UNUSED_SetLow()             do { LATBbits.LATB7 = 0; } while(0)
#define RB7_UNUSED_Toggle()             do { LATBbits.LATB7 = ~LATBbits.LATB7; } while(0)
#define RB7_UNUSED_GetValue()           PORTBbits.RB7
#define RB7_UNUSED_SetDigitalInput()    do { TRISBbits.TRISB7 = 1; } while(0)
#define RB7_UNUSED_SetDigitalOutput()   do { TRISBbits.TRISB7 = 0; } while(0)
#define RB7_UNUSED_SetPullup()          do { WPUBbits.WPUB7 = 1; } while(0)
#define RB7_UNUSED_ResetPullup()        do { WPUBbits.WPUB7 = 0; } while(0)
#define RB7_UNUSED_SetPushPull()        do { ODCONBbits.ODCB7 = 0; } while(0)
#define RB7_UNUSED_SetOpenDrain()       do { ODCONBbits.ODCB7 = 1; } while(0)
#define RB7_UNUSED_SetAnalogMode()      do { ANSELBbits.ANSB7 = 1; } while(0)
#define RB7_UNUSED_SetDigitalMode()     do { ANSELBbits.ANSB7 = 0; } while(0)

//these were edited by me beyond this point, all the other crap that is included just made the program larger when they were used
// get/set SW1 aliases
#define SW1_TRIS                 TRISCbits.TRISC0
#define SW1_LAT                  LATCbits.LATC0
#define SW1_PORT                 PORTCbits.RC0
#define SW1_WPU                  WPUCbits.WPUC0
#define SW1_OD                   ODCONCbits.ODCC0
#define SW1_ANS                  ANSELCbits.ANSC0
#define SW1_SetHigh()            LATCbits.LATC0 = 1
#define SW1_SetLow()             LATCbits.LATC0 = 0
#define SW1_Toggle()             LATC ^= 0b00000001
#define SW1_GetValue()           PORTCbits.RC0
#define SW1_SetDigitalInput()    TRISCbits.TRISC0 = 1
#define SW1_SetDigitalOutput()   TRISCbits.TRISC0 = 0
#define SW1_SetPullup()          WPUCbits.WPUC0 = 1
#define SW1_ResetPullup()        WPUCbits.WPUC0 = 0
#define SW1_SetPushPull()        ODCONCbits.ODCC0 = 0
#define SW1_SetOpenDrain()       ODCONCbits.ODCC0 = 1
#define SW1_SetAnalogMode()      ANSELCbits.ANSC0 = 1
#define SW1_SetDigitalMode()     ANSELCbits.ANSC0 = 0

// get/set SW2 aliases
#define SW2_TRIS                 TRISCbits.TRISC1
#define SW2_LAT                  LATCbits.LATC1
#define SW2_PORT                 PORTCbits.RC1
#define SW2_WPU                  WPUCbits.WPUC1
#define SW2_OD                   ODCONCbits.ODCC1
#define SW2_ANS                  ANSELCbits.ANSC1
#define SW2_SetHigh()            LATCbits.LATC1 = 1
#define SW2_SetLow()             LATCbits.LATC1 = 0
#define SW2_Toggle()             LATC ^= 0b00000010
#define SW2_GetValue()           PORTCbits.RC1
#define SW2_SetDigitalInput()    TRISCbits.TRISC1 = 1
#define SW2_SetDigitalOutput()   TRISCbits.TRISC1 = 0
#define SW2_SetPullup()          WPUCbits.WPUC1 = 1
#define SW2_ResetPullup()        WPUCbits.WPUC1 = 0
#define SW2_SetPushPull()        ODCONCbits.ODCC1 = 0
#define SW2_SetOpenDrain()       ODCONCbits.ODCC1 = 1
#define SW2_SetAnalogMode()      ANSELCbits.ANSC1 = 1
#define SW2_SetDigitalMode()     ANSELCbits.ANSC1 = 0

// get/set DEBUG aliases
#define DEBUG_TRIS                 TRISCbits.TRISC2
#define DEBUG_LAT                  LATCbits.LATC2
#define DEBUG_PORT                 PORTCbits.RC2
#define DEBUG_WPU                  WPUCbits.WPUC2
#define DEBUG_OD                   ODCONCbits.ODCC2
#define DEBUG_ANS                  ANSELCbits.ANSC2
#define DEBUG_SetHigh()            LATCbits.LATC2 = 1
#define DEBUG_SetLow()             LATCbits.LATC2 = 0
#define DEBUG_Toggle()             LATC ^= 0b00000100
#define DEBUG_GetValue()           PORTCbits.RC2
#define DEBUG_SetDigitalInput()    TRISCbits.TRISC2 = 1
#define DEBUG_SetDigitalOutput()   TRISCbits.TRISC2 = 0
#define DEBUG_SetPullup()          WPUCbits.WPUC2 = 1
#define DEBUG_ResetPullup()        WPUCbits.WPUC2 = 0
#define DEBUG_SetPushPull()        ODCONCbits.ODCC2 = 0
#define DEBUG_SetOpenDrain()       ODCONCbits.ODCC2 = 1
#define DEBUG_SetAnalogMode()      ANSELCbits.ANSC2 = 1
#define DEBUG_SetDigitalMode()     ANSELCbits.ANSC2 = 0

// get/set CLK aliases
#define CLK_TRIS                 TRISCbits.TRISC3
#define CLK_LAT                  LATCbits.LATC3
#define CLK_PORT                 PORTCbits.RC3
#define CLK_WPU                  WPUCbits.WPUC3
#define CLK_OD                   ODCONCbits.ODCC3
#define CLK_ANS                  ANSELCbits.ANSC3
#define CLK_SetHigh()            LATCbits.LATC3 = 1
#define CLK_SetLow()             LATCbits.LATC3 = 0
#define CLK_Toggle()             LATC ^= 0b00001000
#define CLK_GetValue()           PORTCbits.RC3
#define CLK_SetDigitalInput()    TRISCbits.TRISC3 = 1
#define CLK_SetDigitalOutput()   TRISCbits.TRISC3 = 0
#define CLK_SetPullup()          WPUCbits.WPUC3 = 1
#define CLK_ResetPullup()        WPUCbits.WPUC3 = 0
#define CLK_SetPushPull()        ODCONCbits.ODCC3 = 0
#define CLK_SetOpenDrain()       ODCONCbits.ODCC3 = 1
#define CLK_SetAnalogMode()      ANSELCbits.ANSC3 = 1
#define CLK_SetDigitalMode()     ANSELCbits.ANSC3 = 0

// get/set BL aliases
#define BL_TRIS                 TRISCbits.TRISC4
#define BL_LAT                  LATCbits.LATC4
#define BL_PORT                 PORTCbits.RC4
#define BL_WPU                  WPUCbits.WPUC4
#define BL_OD                   ODCONCbits.ODCC4
#define BL_ANS                  ANSELCbits.ANSC4
#define BL_SetHigh()            LATCbits.LATC4 = 1
#define BL_SetLow()             LATCbits.LATC4 = 0
#define BL_Toggle()             LATC ^= 0b00010000
#define BL_GetValue()           PORTCbits.RC4
#define BL_SetDigitalInput()    TRISCbits.TRISC4 = 1
#define BL_SetDigitalOutput()   TRISCbits.TRISC4 = 0
#define BL_SetPullup()          WPUCbits.WPUC4 = 1
#define BL_ResetPullup()        WPUCbits.WPUC4 = 0
#define BL_SetPushPull()        ODCONCbits.ODCC4 = 0
#define BL_SetOpenDrain()       ODCONCbits.ODCC4 = 1
#define BL_SetAnalogMode()      ANSELCbits.ANSC4 = 1
#define BL_SetDigitalMode()     ANSELCbits.ANSC4 = 0

// get/set DIN aliases
#define DIN_TRIS                 TRISCbits.TRISC5
#define DIN_LAT                  LATCbits.LATC5
#define DIN_PORT                 PORTCbits.RC5
#define DIN_WPU                  WPUCbits.WPUC5
#define DIN_OD                   ODCONCbits.ODCC5
#define DIN_ANS                  ANSELCbits.ANSC5
#define DIN_SetHigh()            LATCbits.LATC5 = 1
#define DIN_SetLow()             LATCbits.LATC5 = 0
#define DIN_Toggle()             LATC ^= 0b00100000
#define DIN_GetValue()           PORTCbits.RC5
#define DIN_SetDigitalInput()    TRISCbits.TRISC5 = 1
#define DIN_SetDigitalOutput()   TRISCbits.TRISC5 = 0
#define DIN_SetPullup()          WPUCbits.WPUC5 = 1
#define DIN_ResetPullup()        WPUCbits.WPUC5 = 0
#define DIN_SetPushPull()        ODCONCbits.ODCC5 = 0
#define DIN_SetOpenDrain()       ODCONCbits.ODCC5 = 1
#define DIN_SetAnalogMode()      ANSELCbits.ANSC5 = 1
#define DIN_SetDigitalMode()     ANSELCbits.ANSC5 = 0

// get/set LE aliases
#define LE_TRIS                 TRISCbits.TRISC6
#define LE_LAT                  LATCbits.LATC6
#define LE_PORT                 PORTCbits.RC6
#define LE_WPU                  WPUCbits.WPUC6
#define LE_OD                   ODCONCbits.ODCC6
#define LE_ANS                  ANSELCbits.ANSC6
#define LE_SetHigh()            LATCbits.LATC6 = 1
#define LE_SetLow()             LATCbits.LATC6 = 0
#define LE_Toggle()             LATC ^= 0b01000000
#define LE_GetValue()           PORTCbits.RC6
#define LE_SetDigitalInput()    TRISCbits.TRISC6 = 1
#define LE_SetDigitalOutput()   TRISCbits.TRISC6 = 0
#define LE_SetPullup()          WPUCbits.WPUC6 = 1
#define LE_ResetPullup()        WPUCbits.WPUC6 = 0
#define LE_SetPushPull()        ODCONCbits.ODCC6 = 0
#define LE_SetOpenDrain()       ODCONCbits.ODCC6 = 1
#define LE_SetAnalogMode()      ANSELCbits.ANSC6 = 1
#define LE_SetDigitalMode()     ANSELCbits.ANSC6 = 0

// get/set HVPS_ENABLE aliases
#define HVPS_ENABLE_TRIS                 TRISCbits.TRISC7
#define HVPS_ENABLE_LAT                  LATCbits.LATC7
#define HVPS_ENABLE_PORT                 PORTCbits.RC7
#define HVPS_ENABLE_WPU                  WPUCbits.WPUC7
#define HVPS_ENABLE_OD                   ODCONCbits.ODCC7
#define HVPS_ENABLE_ANS                  ANSELCbits.ANSC7
#define HVPS_ENABLE_SetHigh()            LATCbits.LATC7 = 1
#define HVPS_ENABLE_SetLow()             LATCbits.LATC7 = 0
#define HVPS_ENABLE_Toggle()             LATC ^= 0b10000000
#define HVPS_ENABLE_GetValue()           PORTCbits.RC7
#define HVPS_ENABLE_SetDigitalInput()    TRISCbits.TRISC7 = 1
#define HVPS_ENABLE_SetDigitalOutput()   TRISCbits.TRISC7 = 0
#define HVPS_ENABLE_SetPullup()          WPUCbits.WPUC7 = 1
#define HVPS_ENABLE_ResetPullup()        WPUCbits.WPUC7 = 0
#define HVPS_ENABLE_SetPushPull()        ODCONCbits.ODCC7 = 0
#define HVPS_ENABLE_SetOpenDrain()       ODCONCbits.ODCC7 = 1
#define HVPS_ENABLE_SetAnalogMode()      ANSELCbits.ANSC7 = 1
#define HVPS_ENABLE_SetDigitalMode()     ANSELCbits.ANSC7 = 0

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);

//see the pin_manager.c file for an explanation of this
///**
// * @Param
//    none
// * @Returns
//    none
// * @Description
//    Interrupt on Change Handler for the IOCCF0 pin functionality
// * @Example
//    IOCCF0_ISR();
// */
//void IOCCF0_ISR(void);
//
///**
//  @Summary
//    Interrupt Handler Setter for IOCCF0 pin interrupt-on-change functionality
//
//  @Description
//    Allows selecting an interrupt handler for IOCCF0 at application runtime
//    
//  @Preconditions
//    Pin Manager intializer called
//
//  @Returns
//    None.
//
//  @Param
//    InterruptHandler function pointer.
//
//  @Example
//    PIN_MANAGER_Initialize();
//    IOCCF0_SetInterruptHandler(MyInterruptHandler);
//
//*/
//void IOCCF0_SetInterruptHandler(void (* InterruptHandler)(void));
//
///**
//  @Summary
//    Dynamic Interrupt Handler for IOCCF0 pin
//
//  @Description
//    This is a dynamic interrupt handler to be used together with the IOCCF0_SetInterruptHandler() method.
//    This handler is called every time the IOCCF0 ISR is executed and allows any function to be registered at runtime.
//    
//  @Preconditions
//    Pin Manager intializer called
//
//  @Returns
//    None.
//
//  @Param
//    None.
//
//  @Example
//    PIN_MANAGER_Initialize();
//    IOCCF0_SetInterruptHandler(IOCCF0_InterruptHandler);
//
//*/
//extern void (*IOCCF0_InterruptHandler)(void);
//
///**
//  @Summary
//    Default Interrupt Handler for IOCCF0 pin
//
//  @Description
//    This is a predefined interrupt handler to be used together with the IOCCF0_SetInterruptHandler() method.
//    This handler is called every time the IOCCF0 ISR is executed. 
//    
//  @Preconditions
//    Pin Manager intializer called
//
//  @Returns
//    None.
//
//  @Param
//    None.
//
//  @Example
//    PIN_MANAGER_Initialize();
//    IOCCF0_SetInterruptHandler(IOCCF0_DefaultInterruptHandler);
//
//*/
//void IOCCF0_DefaultInterruptHandler(void);
//
//
///**
// * @Param
//    none
// * @Returns
//    none
// * @Description
//    Interrupt on Change Handler for the IOCCF1 pin functionality
// * @Example
//    IOCCF1_ISR();
// */
//void IOCCF1_ISR(void);
//
///**
//  @Summary
//    Interrupt Handler Setter for IOCCF1 pin interrupt-on-change functionality
//
//  @Description
//    Allows selecting an interrupt handler for IOCCF1 at application runtime
//    
//  @Preconditions
//    Pin Manager intializer called
//
//  @Returns
//    None.
//
//  @Param
//    InterruptHandler function pointer.
//
//  @Example
//    PIN_MANAGER_Initialize();
//    IOCCF1_SetInterruptHandler(MyInterruptHandler);
//
//*/
//void IOCCF1_SetInterruptHandler(void (* InterruptHandler)(void));
//
///**
//  @Summary
//    Dynamic Interrupt Handler for IOCCF1 pin
//
//  @Description
//    This is a dynamic interrupt handler to be used together with the IOCCF1_SetInterruptHandler() method.
//    This handler is called every time the IOCCF1 ISR is executed and allows any function to be registered at runtime.
//    
//  @Preconditions
//    Pin Manager intializer called
//
//  @Returns
//    None.
//
//  @Param
//    None.
//
//  @Example
//    PIN_MANAGER_Initialize();
//    IOCCF1_SetInterruptHandler(IOCCF1_InterruptHandler);
//
//*/
//extern void (*IOCCF1_InterruptHandler)(void);
//
///**
//  @Summary
//    Default Interrupt Handler for IOCCF1 pin
//
//  @Description
//    This is a predefined interrupt handler to be used together with the IOCCF1_SetInterruptHandler() method.
//    This handler is called every time the IOCCF1 ISR is executed. 
//    
//  @Preconditions
//    Pin Manager intializer called
//
//  @Returns
//    None.
//
//  @Param
//    None.
//
//  @Example
//    PIN_MANAGER_Initialize();
//    IOCCF1_SetInterruptHandler(IOCCF1_DefaultInterruptHandler);
//
//*/
//void IOCCF1_DefaultInterruptHandler(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/