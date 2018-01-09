/* 
 * File: User Functions
 * Author: Eugene Punov
 * Brief: main functionality of prgramm
 */

/******************************************************************************/
/* Files to Include                                                           */
/******************************************************************************/

#ifdef __XC32
#include <xc.h> /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h> /* For uint32_t definition                       */
#include <stdbool.h> /* For true/false definition                     */
#include <string.h> /* For string                                    */
#include "user.h" /* variables/params used by user.c               */
#include <sys/attribs.h>
#include "UART.h"

/******************************************************************************/
/* User Functions                                                             */

/******************************************************************************/

/******************************************************************************/
/* Global Variable Declaration                                                */
/******************************************************************************/

/******************************************************************************/
/* Main Program                                                               */
/******************************************************************************/

/*!
\brief Initialize input output
 Setup functionality and port direction
\param[out] none
\param[in] none
\return none
*/
void init_gpio(void)
{
    /* Setup functionality and port direction */
    // LED output
    // Disable analog mode
    ANSELBbits.ANSB13 = 1;
    // LED outputs
    // Disable analog mode if present
    ANSELG &= ~(1 << 15);
    ANSELB &= ~(1 << 11);
    // Set direction to output
    TRISG &= ~((1 << 6) | (1 << 15));
    TRISB &= ~((1 << 11));
    TRISD &= ~((1 << 4));
    // Turn off LEDs for initialization
    LD1_PORT_BIT = LD2_PORT_BIT = LD3_PORT_BIT = LD4_PORT_BIT = 0;

    // BTN1 and BTN2 inputs
    // Disable analog mode
    ANSELA &= ~(1 << 5);
    // Set directions to input
    TRISA |= (1 << 5);
    TRISA |= (1 << 4);

    //Digital output
    // Set direction to output
    TRISE &= ~((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3));

    TRISDCLR = 1 << 11;
}

/*!
 \brief Initialize Timer2
 Initialize Timer2. Configure OC4,OC5,OC8 control register. Configure PWM for RGB.
\param[out] none
\param[in] none
\return none
*/
void InitTimer2AndOC5And4And8(void)
{
    // Initialize Timer2. See details in Section 14 (Timers)
    // of the PIC32 Family Reference Manual
    T2CON = 0; // clear timer settings to defaults
    T2CONbits.TCKPS = 7; // divide clock by 256 with prescaler
    TMR2 = 0; // clear counter to 0
    // Set period for timer using symbol PWM_PERIOD_COUNTS from user.h
    PR2 = PWM_PERIOD_COUNTS - 1;

    // Set initial duty cycle to 50%
    OC8R = PWM_PERIOD_COUNTS / 2;
    // Set reload duty cycle to 50%
    OC8RS = PWM_PERIOD_COUNTS / 2;
    // Configure OC5 control register
    OC8CONbits.ON = 1; // Turn on OC5
    OC8CONbits.OC32 = 0; // Select 16 bit mode
    OC8CONbits.OCTSEL = 0; // Select timer 2
    OC8CONbits.OCM = 6; // Select PWM mode without fault pin

    RPD12R = 12; // Select OC8 38

    // Set initial duty cycle to 50%
    OC5R = PWM_PERIOD_COUNTS / 2;
    // Set reload duty cycle to 50%
    OC5RS = PWM_PERIOD_COUNTS / 2;
    // Configure OC5 control register
    OC5CONbits.ON = 1; // Turn on OC5
    OC5CONbits.OC32 = 0; // Select 16 bit mode
    OC5CONbits.OCTSEL = 0; // Select timer 2
    OC5CONbits.OCM = 6; // Select PWM mode without fault pin

    RPE9R = 11; // Select OC5 7

    // Set initial duty cycle to 50%
    OC4R = PWM_PERIOD_COUNTS / 2;
    // Set reload duty cycle to 50%
    OC4RS = PWM_PERIOD_COUNTS / 2;
    // Configure OC5 control register
    OC4CONbits.ON = 1; // Turn on OC5
    OC4CONbits.OC32 = 0; // Select 16 bit mode
    OC4CONbits.OCTSEL = 0; // Select timer 2
    OC4CONbits.OCM = 6; // Select PWM mode without fault pin

    RPE5R = 11; // Select OC4 31

    // Start Timer 2
    T2CONbits.ON = 1;

    OC8RS = 0;
    OC5RS = 0;
    OC4RS = 0;
}

/*!
 begins program
\param[out] none
\param[in] none
\return none
*/
void init_app(void)
{
    // Initialize peripherals
    InitTimer2AndOC5And4And8();
    init_gpio();
    uart4_init();
}
/*!
 func for control rgb led(set color)
\param[out] none
\param[in] red, green, blue (PwM)
\return none
*/
void rgb(int red, int green, int blue)
{
    OC8RS = red;
    OC5RS = green;
    OC4RS = blue;
}
/*!
 \brief all functional of programm
 
 Functional:
 command a - turn on RGB led.
 command f - fade mode
 command c - set color
 command b - set brightness
\param[out] none
\param[in] none
\return none
*/

void start_program()
{

    while (1) {

        char cmd = ' ';
        int color = 0;
        int bright = 0;
        int i = 0;
        char rgb[4] = { 0 };
        cmd = uart4_getc();
        switch (cmd) {
        case 'a':
            OC8RS = 4095;
            OC5RS = 4095;
            OC4RS = 4095;
            break;
        case 'f':
            fade();
            break;
        case 'c': //color

            for (i; i <= 2; i++) {
                rgb[i] = uart4_getc();
                delay(10);
            }
            color = atoi(rgb);
            if (color >= 100 && color <= 355) {
                OC8RS = 255 - color + 100;
            }
            else if (color >= 356 && color <= 511) {
                OC5RS = 511 - color;
            }
            else if (color >= 512 && color <= 767) {
                OC4RS = 767 - color;
            }

            cmd = ' ';
            break;

        case 'b':
            for (i; i <= 2; i++) {
                rgb[i] = uart4_getc();
                delay(10);
            }
            bright = atoi(rgb);
            brightness(bright);

        default:
            cmd = ' ';
            break;
        }
    }
}
/*!
 fade mode
\param[out] none
\param[in] none
\return none
*/
void fade()
{
    int i = 0;
    // fade from green to red
    for (i = 0; i < 255; i++) {
        OC8RS = i;
        OC5RS = 255 - i;
        OC4RS = 0;
        delay(20);
    }

    // fade from red to blue
    for (i = 0; i < 255; i++) {
        OC8RS = 255 - i;
        OC5RS = 0;
        OC4RS = i;
        delay(20);
    }

    // fade from blue to green
    for (i = 0; i < 255; i++) {
        OC8RS = 0;
        OC5RS = i;
        OC4RS = 255 - i;
        delay(20);
    }
}
/*!
 func delay
\param[out] none
\param[in] n - time in mills
\return none
*/
void delay(uint32_t n)
{
    volatile uint32_t i;
    for (; n > 0; n--) {
        for (i = 0; i < 10000; i++)
            ;
    }
}
/*!
 func delay
\param[out] none
\param[in] brigh(PWM)
\return none
*/
void brightness(int bright)
{

    OC8RS = bright - 100;
    OC5RS = bright - 100;
    OC4RS = bright - 100;
}
