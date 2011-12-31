/*
 * Copylight (C) 2009, Shunichi Yamamoto, tkrworks.net
 *
 * This file is used the copied code from picnome.h in PICnome project files.
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
 * picratchbox.h,v.1.0.11 2010/11/11
 */

#define MULTI_PLEXER

#include "usb.h"
#include "usb_function_midi.h"
#include "HardwareProfile.h"

_CONFIG1(WDTPS_PS1 & FWPSA_PR32 & WINDIS_OFF & FWDTEN_OFF & ICS_PGx3 & GWRP_OFF & GCP_OFF & JTAGEN_OFF)
_CONFIG2(POSCMOD_HS & I2C1SEL_PRI & IOL1WAY_OFF & OSCIOFNC_OFF & FCKSM_CSDCMD & FNOSC_PRIPLL & PLL96MHZ_ON & PLLDIV_DIV5 & IESO_OFF)
_CONFIG3(WPFP_WPFP0 & SOSCSEL_IO & WUTSEL_LEG & WPDIS_WPDIS & WPCFG_WPCFGDIS & WPEND_WPENDMEM)
_CONFIG4(DSWDTPS_DSWDTPS0 & DSWDTOSC_LPRC & RTCOSC_LPRC & DSBOREN_OFF & DSWDTEN_OFF)

#define	CLOCK 32 // 32MHz

#include "GenericTypeDefs.h"
#include "Compiler.h"
#include "usb_config.h"
#include "usb_device.h"
#include "stdio.h"
#include "math.h"
#include "DEE Emulation 16-bit.h"

// Global Variables
#pragma udata

//for MIDI
unsigned char ReceivedDataBuffer[64];
unsigned char ToSendDataBuffer[64];
USB_AUDIO_MIDI_EVENT_PACKET midiData;

USB_HANDLE USBTxHandle;;
USB_HANDLE USBRxHandle;

USB_VOLATILE BYTE msCounter;

// Global Variables
BYTE i, j, k, p, q, s, t;
char *ch;
BOOL flag = FALSE;
BYTE msg_index = 0, msg_index2 = 0;
BYTE sendmsg[64];
BYTE sendmsg2[18];
BYTE x, y, state;
WORD spibits = 0x0000;

char string[15];
char space[] = " ";

//Button Settings
BYTE start_row = 0, layer = 1;
BYTE toggle[5] = {0, 0, 0, 0, 0};
WORD btnCurrent[8], btnLast[8], btnState[8];
WORD btnDebounceCount[8][8];

void buttonInit(void);
BOOL buttonCheck(int row, int index);
void sendNote(void);

//A/D Conversion Settings
#ifdef MULTI_PLEXER
  #define NUM_ADC_PINS 11//max = 11
  #define NUM_MP_PINS 8//max = 8
  #define FADER_CHK_NUM 8
  #define VOLUME_CHK_NUM 4
  WORD gAdcEnableState = 0;
#else
  #define NUM_ADC_PINS 6//max = 6
  #define ADC_CHK_NUM 8//sy 4
  BYTE gAdcEnableState = 0;
#endif
WORD sum;
BYTE vol = 0;
float fader0 = 0.0, volume0 = 0.0;

BOOL enableAdcFlag = FALSE;
BYTE countChk = 0, countChk2 = 0, enableAdcNum = 0;
BOOL adcSendFlag[NUM_ADC_PINS];
WORD anlg1[NUM_ADC_PINS];
//WORD anlg[ADC_CHK_NUM][NUM_ADC_PINS];
WORD anlg[FADER_CHK_NUM][NUM_ADC_PINS];
WORD anlg0[NUM_ADC_PINS];

//MULTI_PLEXER
#ifdef MULTI_PLEXER
  BYTE scanID;
  BYTE scanCount;
#endif

void sendControlChange(void);

//OSC Messages Receive Setting
BYTE led_data[8];
BOOL firstRun = TRUE;

void initLedDriver(void);
void sendSpiLED(BYTE msb, BYTE lsb);

//for DEE emu
unsigned char vf0addr       = 0;
unsigned char vf1addr       = 10;
unsigned char xfaddr        = 20;
unsigned char rev0addr      = 30;
unsigned char rev1addr      = 40;
unsigned char revxaddr      = 50;
unsigned char intensityaddr = 60;

BYTE xfader_curve = 4;
BYTE volfader_curve[2] = {4, 4};
BYTE xrev  = 0;
BYTE v0rev = 0;
BYTE v1rev = 0;
BYTE intensity = 15;
void receiveMIDIDatas(void);

//sub function
void delayUs(WORD usec);
void delayMs(WORD msec);
int my_atoi(char s);
