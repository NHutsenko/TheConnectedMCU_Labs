// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************
#include <xc.h>          /* Defines special function registers, CP0 regs  */
#include <stdint.h>          /* For uint32_t definition                       */
#include <sys/attribs.h>
#include <time.h>

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

#include "user.h"            /* variables/params used by user.c               */
#include "OLED.h"
#include "OledChar.h"
#include "OledGrph.h"
#include "UART.h"


/*!
 * \brief Array length calculator
 * 
 * Software realization of delay function, using empty for cycle
 * @param [in] x type of vars into array
 * @param [out] length of mass
 * \return array length
 */
#define NELEMS(x)  (sizeof(x) / sizeof((x)[0]))

// *****************************************************************************
//******************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

/*!
 * array for random numbers
 */
int32_t random_mass[4];
/*!
 * array for user numbers
 */
int32_t my_mass[4];
/*!
 * vars for bulls and cows
 */
int cows = 0, bulls = 0;
/*!
 * iterators
 */
int32_t i, j, num, gameEnd = 0;


/******************************************************************************/
/* User Functions                                                             */

/******************************************************************************/
/*!
 * \brief This function is using for setting buttons on I/O shield
 * 
 * This function is using for setting all used devices
 * \param NONE
 * \return NONE
 */
void InitGPIO(void) {
    // Button inputs
    // Disable analog mode
    ANSELA &= ~(1 << 5);
    // Set directions to input
    TRISA |= (1 << 3);
    TRISD |= (1 << 5);
    TRISF |= (1 << 1);
}

/*!
 * \brief This function is using for setting all used devices
 * 
 * This function is using for setting all used devices
 * \param NONE
 * \return NONE
 */
void InitApp(void) {
    // Initialize peripherals
    InitGPIO();
    
    OledHostInit();
    OledDspInit();
    OledDvrInit();
}
/*!
 * \brief This function is using for choose a number for game
 * 
 * This function is using for chhose a number for game
 * @param [out] integer number from 0 to 9 
 * \return integer number from 0 to 9
 */
int32_t SetNum()
{
    int32_t ret_num = 0;
    while (!BTN3_PORT_BIT)
    {
        DelayMs(200);
        if(BTN1_PORT_BIT)
        {
            DelayMs(200);
            if(ret_num <= 0)
            {
                ret_num = 0;
            }
            else
            {
                ret_num -= 1;
            }
        }
        if(BTN2_PORT_BIT)
        {
            DelayMs(200);
            if(ret_num >= 9)
            {
                ret_num = 9;
            }
            else
            {
                ret_num += 1;
            }
        }
        OledSetCursor(0, 2);
        char num_c [2];
        num_c[0] = ret_num + 48;
        num_c[1] = '\0';
        OledPutString(num_c);
    }
    return ret_num;
}


/*!
 * \brief Game status
 * 
 * This task is using for input user numbers or reseting the game
 */
void Task1(void * pvParameters) {
    
    xSemaphoreTake(xMutex, portMAX_DELAY);
    srand(time(NULL));
    for(i = 0; i < NELEMS(random_mass); i++)
    {
        random_mass[i] = 0 + rand() % 9;
    }
    xSemaphoreGive(xMutex);    
    while (1) {
        for (i = 0; i < NELEMS(my_mass); i++)
        {
            // TODO: Take mutex here
            xSemaphoreTake(xMutex, portMAX_DELAY);
            if(gameEnd != 3){
                OledSetCursor(0,0);
                OledPutString("Input numbers from 0 to 9:");
                int32_t num = SetNum();
                DelayMs(200);
                my_mass[i] = num;
                OledClear();
                gameEnd++;
            }   else{
                OledClear();
                OledSetCursor(0, 0);
                OledPutString("Game end");
                DelayMs(2000);
                OledClear();
                OledSetCursor(0, 0);
                OledPutString("Restarting...");
                DelayMs(2000);
                gameEnd = 0;
            }         
            // TODO: Give mutex here
            xSemaphoreGive(xMutex);
            vTaskDelay(9);
        }     
    }
}
/*!
 * \brief Points tatus
 * 
 * This task is using for checking points status at the game
 */
void Task2(void * pvParameters) {
   
    while (1) {
        // TODO: Add trigger code here    
        // TODO: Take mutex here
        xSemaphoreTake(xMutex, portMAX_DELAY);
        bulls = 0;
        cows = 0;
        for (i = 0; i < NELEMS(random_mass); i++)
        {
            for (j = 0; j < NELEMS(random_mass); j++)
            {
                if(my_mass[j] == random_mass[i] && j != i)
                {
                    cows++;
                }
                if (my_mass[j] == random_mass[i] && j == i)
                {
                    bulls++;
                }
            }
        }
        char bulls_char [2];
        bulls_char[0] = bulls + 48;
        bulls_char[1] = '\0';
    
        char cows_char [2];
        cows_char[0] = cows + 48;
        cows_char[1] = '\0';
        OledSetCursor(0,4);
        OledPutString("bulls ");
        OledPutString(bulls_char);
        OledSetCursor(8, 4);
        OledPutString("cows ");
        OledPutString(cows_char);
        // TODO: Give mutex here
        xSemaphoreGive(xMutex);
        vTaskDelay(10);
    }
}
/*!
 * \brief Delay function
 * 
 * This function is using for delay between operations
 * @param [in] delay in ms
 * \return NONE
 */
void DelayMs(int t) {
    volatile long int count = t*33356;
    
    while (count--)
        ;
}