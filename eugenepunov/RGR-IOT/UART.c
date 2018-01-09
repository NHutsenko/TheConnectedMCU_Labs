
/* 
 * File: UART
 * Author: Based on main.c by Yuri Panchul 
 * Comments: Modified by Alex Dean
 * Revision history: 
 */

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "UART.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
// *****************************************************************************
// Section: User Functions
// *****************************************************************************
// *****************************************************************************
/**
    <p><b>Function prototype:</b></p>
        void uart4_init(void);
    <p><b>Description:</b></p>
 *      initialize UART
    <p><b>Parameters:</b></p>
 *      none
    <p><b>Returns:</b></p>
 *      none
    
 */
void uart4_init(void)
{
    RPF8R = 2; // PPS for U4RX from pin F2
    U4RXR = 11; // PPS for U4TX to pin F8

    U4STAbits.UTXEN = 1; // enable transmit pin
    U4STAbits.URXEN = 1; // enable receive pin
    U4BRG = ((100 * 1000000) / (16 * 9600)) - 1;
    U4MODEbits.ON = 1; // enable UART
}

/**
    <p><b>Function prototype:</b></p>
        void uart4_getc(void);
    <p><b>Description:</b></p>
 *      read char symboll from UART
    <p><b>Parameters:</b></p>
 *      none
    <p><b>Returns:</b></p>
 *      none
    
 */

char uart4_getc(void)
{
    while (!U4STAbits.URXDA)
        ; // wait until character received
    return U4RXREG; // read character
}
/**
    <p><b>Function prototype:</b></p>
        void uart4_putc(char c);
    <p><b>Description:</b></p>
 *      put char symboll to UART
    <p><b>Parameters:</b></p>
 *      char symbol 'c'
    <p><b>Returns:</b></p>
 *      none
    
 */
void uart4_putc(char c)
{
    while (U4STAbits.UTXBF)
        ; // wait until transmit buffer not full
    U4TXREG = c; // transmit character
}

/**
    <p><b>Function prototype:</b></p>
        void uart4_puts(char *s);
    <p><b>Description:</b></p>
 *      put char array to UART
    <p><b>Parameters:</b></p>
 *      char array 's'
    <p><b>Returns:</b></p>
 *      none
    
 */
void uart4_puts(char* s)
{
    while (*s != '\0')
        uart4_putc(*s++);
}

// Comment a function definition and leverage automatic documentation
/**
    <p><b>Function prototype:</b></p>
        void uart4_test(void);
    <p><b>Description:</b></p>
 *      UART test and beginning program
    <p><b>Parameters:</b></p>
 *      none
    <p><b>Returns:</b></p>
 *      none
    
 */
// TODO Insert function definitions (right here) to leverage live documentation
void uart4_test(void)
{
    char c;

    /* for (;;)
    {
        c = uart4_getc();
        uart4_putc('[');
        uart4_putc (c);
        uart4_puts("]\r\n"); 
    }*/
}
