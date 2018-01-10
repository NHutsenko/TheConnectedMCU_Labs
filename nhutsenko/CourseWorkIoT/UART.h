
/* 
 * File:   UART
 * Author: Eugene Punov
 * Comments: none
 * Revision history: none
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef UART_H
#define	UART_H

#include <xc.h> // include processor files - each processor file is guarded.  

// TODO Insert appropriate #include <>

// TODO Insert C++ class definitions if appropriate

// TODO Insert declarations

// Comment a function and leverage automatic documentation with slash star star

// TODO Insert declarations or function prototypes (right here) to leverage 
// live documentation

void uart4_init(void);  /* UART Initialization */
char uart4_getc(void);  /* get char from UART */
void uart4_putc (char c); /* put one char to UART */
void uart4_puts (char *s);/* put char array to UART */
void uart4_test (void);/* testing uart with massage */


#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */

    // TODO If C++ is being used, regular C code needs function names to have C 
    // linkage so the functions can be used by the c code. 

#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* UART_H */

