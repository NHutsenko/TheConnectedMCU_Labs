/* 
 * File: User Functions
 * Author: Eugene Punov
 * Brief: main functionality of prgramm
 */

/******************************************************************************/
/*  Files to Include                                                          */
/******************************************************************************/
#ifdef __XC32
    #include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h>         /* For uint32_t definition                        */
#include <stdbool.h>        /* For true/false definition                      */

#include "user.h"           /* User funct/params, such as InitApp             */
#include "UART.h"           /* Realization of UART interface                  */

/******************************************************************************/
/* Main Program                                                               */
/******************************************************************************/
/*!
\brief Initialize I/O and Peripherals for application
 Setup functionality and port direction
\param[out] none
\param[in] none
\return none
*/
int32_t main(void)
{
    /* Initialize I/O 
     * and Peripherals
     * for application */
    InitApp();
    uart4_test();  
    ControlStateMachine();
}
