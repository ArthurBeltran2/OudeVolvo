/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    eeprom.h
  * @brief   This file contains the headers of the eeprom handlers.
*/
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __EEPROM_H
#define __EEPROM_H

#ifdef __cplusplus
 extern "C" {
#endif

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */
 /* Error codes used to make the red led blinking */
 #define ERROR_ERASE 0x01
 #define ERROR_PROG_BYTE  0x02
 #define ERROR_PROG_16B_WORD 0x04
 #define ERROR_PROG_32B_WORD 0x08
 #define ERROR_WRITE_PROTECTION 0x10
 #define ERROR_READOUT_PROTECTION 0x20
 #define ERROR_FETCH_DURING_PROG 0x40
 #define ERROR_SIZE 0x80
 #define ERROR_ALIGNMENT 0x100
 #define ERROR_NOT_ZERO 0x200
 #define ERROR_OPTION_NOT_VALID 0x400
 #define ERROR_UNKNOWN 0x800

 #define ERROR_HSI_TIMEOUT 0x55
 #define ERROR_PLL_TIMEOUT 0xAA
 #define ERROR_CLKSWITCH_TIMEOUT 0xBB

// #define FLASH_SR_FWWERR ((uint32_t)0x00020000)


#define DATA_E2_ADDR   ((uint32_t)0x08080000)  /* Data EEPROM address */
#define DATA_BYTE            ((uint8_t)0x12)  /* 8-bits value to be programmed */
#define DATA_16B_WORD            ((uint16_t)0x3456)  /* 16-bits value to be programmed */
#define DATA_32B_WORD            ((uint32_t)0x89ABCDEF)  /* 32-bits value to be programmed */
/* USER CODE END ET */

 /* Exported constants --------------------------------------------------------*/
 /* USER CODE BEGIN EC */

 /* USER CODE END EC */

/* Exported Variables --------------------------------------------------------*/
/* USER CODE BEGIN EC */
//  volatile uint16_t error = 0;
/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/

void UnlockPELOCK(void);
void LockNVM(void);
void EepromErase(uint32_t addr);
/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

#ifdef __cplusplus
}
#endif

#endif /* __EEPROM_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
