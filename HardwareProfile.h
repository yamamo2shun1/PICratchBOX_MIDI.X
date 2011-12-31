/*
 * Copylight (C) 2009, Shunichi Yamamoto, tkrworks.net
 *
 * This file is used the copied code from HardwareProfile.h in PICnome project files.
 *
 * Copylight (C) 2011, Shunichi Yamamoto, tkrworks.net
 *
 * This file is part of PICratchBOX.
 *
 * PICratchBOX is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option ) any later version.
 *
 * PICratchBOX is distributed in the hope that it will be useful,
 * but WITHIOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.   See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with PICratchBOX. if not, see <http:/www.gnu.org/licenses/>.
 *
 * HardwareProfile.h,v.1.0.11 2010/11/11
 */

    /*******************************************************************/
    /******** USB stack hardware selection options *********************/
    /*******************************************************************/
    //This section is the set of definitions required by the MCHPFSUSB
    //  framework.  These definitions tell the firmware what mode it is
    //  running in, and where it can find the results to some information
    //  that the stack needs.
    //These definitions are required by every application developed with
    //  this revision of the MCHPFSUSB framework.  Please review each
    //  option carefully and determine which options are desired/required
    //  for your application.

    //#define USE_SELF_POWER_SENSE_IO
    //sy #define tris_self_power     TRISAbits.TRISA2    // Input
    #define self_power          1

    //#define USE_USB_BUS_SENSE_IO
      //sy #define tris_usb_bus_sense  TRISBbits.TRISB5    // Input
    #define USB_BUS_SENSE       1 
   
    //Uncomment this to make the output HEX of this project 
    //   to be able to be bootloaded using the HID bootloader
    #define PROGRAMMABLE_WITH_USB_HID_BOOTLOADER	

    //If the application is going to be used with the HID bootloader
    //  then this will provide a function for the application to 
    //  enter the bootloader from the application (optional)
    #if defined(PROGRAMMABLE_WITH_USB_HID_BOOTLOADER)
         #define EnterBootloader() __asm__("goto 0x400")
    #endif   

    /*******************************************************************/
    /******** Application specific definitions *************************/
    /*******************************************************************/

    /** TC74HC164 ******************************************************/
    #define SR_CLK LATBbits.LATB13
    #define SR_A   LATBbits.LATB14

    /** TC74HC165 ******************************************************/
    #define SR_SL   LATAbits.LATA4
    #define SR_CLK2 LATBbits.LATB4
    #define SR_QH   PORTBbits.RB5

    /** MAX7219CNG *****************************************************/
    #define LDD_LOAD LATBbits.LATB9

    /** TC74HC4051AP ***************************************************/
#ifdef MULTI_PLEXER
    #define MP_A LATBbits.LATB2
    #define MP_B LATBbits.LATB3
    #define MP_C LATBbits.LATB15
#endif

    /** I/O pin definitions ********************************************/
    #define INPUT_PIN 1
    #define OUTPUT_PIN 0
