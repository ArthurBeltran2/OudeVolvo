/**
  ******************************************************************************
  * File     eeprom.c
  * Author   copy from MCD Application Team
  * Version  V1.2.0
  * Date     05-February-2016
  * Brief    This code example shows how to erase and program the Data eeprom
  *          memory
  *
 ===============================================================================
                    #####       MCU Resources     #####
 ===============================================================================
   - Data Eeprom memory
   - GPIO PB4, PA5 for leds
   - SYSTICK (to manage led blinking)
   - RCC
 ===============================================================================
                    ##### How to use this example #####
 ===============================================================================
    - this file must be inserted in a project containing  the following files :
      o system_stm32l0xx.c, startup_stm32l053xx.s
      o stm32l0xx.h to get the register definitions
      o CMSIS files

 ===============================================================================
                    ##### How to test this example #####
 ===============================================================================
    - This example erases the target first data Eeprom word and program it
      with a defined value.
      The programming is performed writng a byte, then a 16-bit word and
      finally a 32-bit word.
      This test is done twice in case the erase value (OxFFFF) was already
      programmed at the first address of the page before the erasing sequence.
      If this example is successful, the green led blinks regularly.
      In case of failure, the red led blinks many times according to the error
      then is off for a longer period.
  *
  ******************************************************************************
  * Attention
  *
  * <h2><center>&copy; COPYRIGHT 2015 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software
  * distributed under the License is distributed on an "AS IS" BASIS,
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "stm32l0xx.h"
#include "eeprom.h"

/**  STM32L0_Snippets
  *
  */



/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* NVM key definitions */
#define FLASH_PDKEY1               ((uint32_t)0x04152637) /*!< Flash power down key1 */
#define FLASH_PDKEY2               ((uint32_t)0xFAFBFCFD) /*!< Flash power down key2: used with FLASH_PDKEY1
                                                              to unlock the RUN_PD bit in FLASH_ACR */

#define FLASH_PEKEY1               ((uint32_t)0x89ABCDEF) /*!< Flash program erase key1 */
#define FLASH_PEKEY2               ((uint32_t)0x02030405) /*!< Flash program erase key: used with FLASH_PEKEY2
                                                               to unlock the write access to the FLASH_PECR register and
                                                               data EEPROM */

#define FLASH_PRGKEY1              ((uint32_t)0x8C9DAEBF) /*!< Flash program memory key1 */
#define FLASH_PRGKEY2              ((uint32_t)0x13141516) /*!< Flash program memory key2: used with FLASH_PRGKEY2
                                                               to unlock the program memory */

#define FLASH_OPTKEY1              ((uint32_t)0xFBEAD9C8) /*!< Flash option key1 */
#define FLASH_OPTKEY2              ((uint32_t)0x24252627) /*!< Flash option key2: used with FLASH_OPTKEY1 to
                                                              unlock the write access to the option byte block */


/* Time-out values */
#define HSI_TIMEOUT_VALUE          ((uint32_t)100)  /* 100 ms */
#define PLL_TIMEOUT_VALUE          ((uint32_t)100)  /* 100 ms */
#define CLOCKSWITCH_TIMEOUT_VALUE  ((uint32_t)5000) /* 5 s    */





/* Delay value : short one is used for the error coding, long one in case of no error
   or between two bursts */
#define SHORT_DELAY 100
#define LONG_DELAY 1000

/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
static __IO uint32_t Tick;
static uint16_t error = 0;


/* exported function prototypes -----------------------------------------------*/
void UnlockPELOCK(void);
void LockNVM(void);
void EepromErase(uint32_t addr);

/* Public functions ---------------------------------------------------------*/

/**
  * Brief   This function unlocks the data EEPROM and the FLASH_PECR.
  *         The data EEPROM will be ready to be erased or programmed
  *         but the program memory will be still locked till PRGLOCK is set.
  *         It first checks no flash operation is on going,
  *         then unlocks PELOCK if it is locked.
  * Param   None
  * Retval  None
  */
__INLINE void UnlockPELOCK(void)
{
  /* (1) Wait till no operation is on going */
  /* (2) Check if the PELOCK is unlocked */
  /* (3) Perform unlock sequence */
  while ((FLASH->SR & FLASH_SR_BSY) != 0) /* (1) */
  {
    /* For robust implementation, add here time-out management */
  }
  if ((FLASH->PECR & FLASH_PECR_PELOCK) != 0) /* (2) */
  {
    FLASH->PEKEYR = FLASH_PEKEY1; /* (3) */
    FLASH->PEKEYR = FLASH_PEKEY2;
  }
}


/**
  * Brief   This function locks the NVM.
  *         It first checks no flash operation is on going,
  *         then locks the flash.
  * Param   None
  * Retval  None
  */
__INLINE void LockNVM(void)
{
  /* (1) Wait till no operation is on going */
  /* (2) Locks the NVM by setting PELOCK in PECR */
  while ((FLASH->SR & FLASH_SR_BSY) != 0) /* (1) */
  {
    /* For robust implementation, add here time-out management */
  }
  FLASH->PECR |= FLASH_PECR_PELOCK; /* (2) */
}

/**
  * Brief   This function erases a word of data EEPROM.
  *         The ERASE bit and DATA bit are set in PECR at the beginning
  *         and reset at the endof the function. In case of successive erase,
  *         these two operations could be performed outside the function.
  *         The flash interrupts must have been enabled prior to call
  *         this function.
  * Param   addr is the 32-bt word address to erase
  * Retval  None
  */
__INLINE void EepromErase(uint32_t addr)
{
  /* (1) Set the ERASE and DATA bits in the FLASH_PECR register
         to enable page erasing */
  /* (2) Write a 32-bit word value at the desired address
         to start the erase sequence */
  /* (3) Enter in wait for interrupt. The EOP check is done in the Flash ISR */
  /* (6) Reset the ERASE and DATA bits in the FLASH_PECR register
         to disable the page erase */
  FLASH->PECR |= FLASH_PECR_ERASE | FLASH_PECR_DATA; /* (1) */
  *(__IO uint32_t *)addr = (uint32_t)0; /* (2) */
  __WFI(); /* (3) */
  FLASH->PECR &= ~(FLASH_PECR_ERASE | FLASH_PECR_DATA); /* (4) */
}


/******************************************************************************/
/*                 STM32L0xx Peripherals Interrupt Handlers                   */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32l0xx.s).                                               */
/******************************************************************************/

/******************************************************************************/
/* STM32L0xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32l0xx.s).                    */
/******************************************************************************/

/* USER CODE BEGIN 1 */

/**
  * Brief   This function handles FLASH interrupt request.
  *         It handles any kind of error even if not used in this example.
  * Param   None
  * Retval  None
  */
void FLASH_IRQHandler(void)
{
  if ((FLASH->SR & FLASH_SR_EOP) != 0)  /* (3) */
  {
    FLASH->SR = FLASH_SR_EOP; /* (4) */
  }
  /* Manage the error cases */
  else if ((FLASH->SR & FLASH_SR_FWWERR) != 0) /* Check Fetch while Write error */
  {
    error |= ERROR_FETCH_DURING_PROG; /* Report the error to the main progran */
    FLASH->SR = FLASH_SR_FWWERR; /* Clear the flag by software by writing it at 1*/
  }
  else if ((FLASH->SR & FLASH_SR_NOTZEROERR) != 0) /* Check Not Zero error */
  /* This error occurs if the address content was not cleared/erased
     before the programming */
  {
    error |= ERROR_NOT_ZERO; /* Report the error to the main progran */
    FLASH->SR = FLASH_SR_NOTZEROERR; /* Clear the flag by software by writing it at 1*/
  }
  else if ((FLASH->SR & FLASH_SR_SIZERR) != 0) /* Check Size error */
  {
    error |= ERROR_SIZE; /* Report the error to the main progran */
    FLASH->SR = FLASH_SR_SIZERR; /* Clear the flag by software by writing it at 1*/
  }
  else if ((FLASH->SR & FLASH_SR_WRPERR) != 0) /* Check Write protection error */
  {
    error |= ERROR_WRITE_PROTECTION; /* Report the error to the main progran */
    FLASH->SR = FLASH_SR_WRPERR; /* Clear the flag by software by writing it at 1*/
  }
  else if ((FLASH->SR & FLASH_SR_RDERR) != 0) /* Check Read-out protection error */
  {
    error |= ERROR_READOUT_PROTECTION; /* Report the error to the main progran */
    FLASH->SR = FLASH_SR_RDERR; /* Clear the flag by software by writing it at 1*/
  }
  else if ((FLASH->SR & FLASH_SR_OPTVERR) != 0) /* Check Option valid error */
  {
    error |= ERROR_OPTION_NOT_VALID; /* Report the error to the main progran */
    FLASH->SR = FLASH_SR_OPTVERR; /* Clear the flag by software by writing it at 1*/
  }
  else if ((FLASH->SR & FLASH_SR_PGAERR) != 0) /* Check alignment error */
  {
    error |= ERROR_ALIGNMENT; /* Report the error to the main progran */
    FLASH->SR = FLASH_SR_PGAERR; /* Clear the flag by software by writing it at 1*/
  }
  else
  {
    error |= ERROR_UNKNOWN;
  }
}

/* USER CODE END 1 */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
