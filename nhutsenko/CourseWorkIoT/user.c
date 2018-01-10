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

/*!
\brief Initialize input output
 Setup functionality and port direction
\param[out] none
\param[in] none
\return none
*/
void InitGpio(void)
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

    //Digital output
    // Set direction to output
    TRISE &= ~((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3));

    TRISDCLR = 1 << 11;
}
/*!
* \brief peripherals initialization
* \param[out] none
* \param[in] none
* \return none
*/
void InitApp(void)
{
    InitGpio();
    uart4_init();
}

/*!
* \brief state machine for control LED's by Bluetooth
* This function looks like state machine, has 2 states
* all LED's turned ON and all LED's turned OFF.
* State machine controls by Bluetooth and UART
* \param[out] none
* \param[in] none
* \return none
*/
void ControlStateMachine()
{
    char cmd = ' ';
    while(1){
    cmd = uart4_getc();
        switch (cmd) {
        case '1':
            LD1_PORT_BIT = LD2_PORT_BIT = LD3_PORT_BIT = LD4_PORT_BIT = 1;
            break;
        case '0':
            LD1_PORT_BIT = LD2_PORT_BIT = LD3_PORT_BIT = LD4_PORT_BIT = 0;
            break;
        default:
            cmd = ' ';
            break;
        }
    }
}
