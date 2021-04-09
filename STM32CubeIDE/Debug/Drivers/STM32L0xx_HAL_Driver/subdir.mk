################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_dma.c \
/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_exti.c \
/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_gpio.c \
/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_pwr.c \
/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_rcc.c \
/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_usart.c \
/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_utils.c 

OBJS += \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_dma.o \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_exti.o \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_gpio.o \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_pwr.o \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_rcc.o \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_usart.o \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_utils.o 

C_DEPS += \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_dma.d \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_exti.d \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_gpio.d \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_pwr.d \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_rcc.d \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_usart.d \
./Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_dma.o: /home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_dma.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32L031xx -DUSE_FULL_LL_DRIVER '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DMSI_VALUE=2097000' '-DHSI_VALUE=16000000' '-DLSI_VALUE=37000' '-DVDD_VALUE=3300' '-DPREFETCH_ENABLE=0' '-DINSTRUCTION_CACHE_ENABLE=1' '-DDATA_CACHE_ENABLE=1' -c -I../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../Drivers/CMSIS/Include -I"/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/STM32CubeIDE/Application/User/Includes" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_dma.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_exti.o: /home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_exti.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32L031xx -DUSE_FULL_LL_DRIVER '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DMSI_VALUE=2097000' '-DHSI_VALUE=16000000' '-DLSI_VALUE=37000' '-DVDD_VALUE=3300' '-DPREFETCH_ENABLE=0' '-DINSTRUCTION_CACHE_ENABLE=1' '-DDATA_CACHE_ENABLE=1' -c -I../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../Drivers/CMSIS/Include -I"/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/STM32CubeIDE/Application/User/Includes" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_exti.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_gpio.o: /home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_gpio.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32L031xx -DUSE_FULL_LL_DRIVER '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DMSI_VALUE=2097000' '-DHSI_VALUE=16000000' '-DLSI_VALUE=37000' '-DVDD_VALUE=3300' '-DPREFETCH_ENABLE=0' '-DINSTRUCTION_CACHE_ENABLE=1' '-DDATA_CACHE_ENABLE=1' -c -I../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../Drivers/CMSIS/Include -I"/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/STM32CubeIDE/Application/User/Includes" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_gpio.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_pwr.o: /home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_pwr.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32L031xx -DUSE_FULL_LL_DRIVER '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DMSI_VALUE=2097000' '-DHSI_VALUE=16000000' '-DLSI_VALUE=37000' '-DVDD_VALUE=3300' '-DPREFETCH_ENABLE=0' '-DINSTRUCTION_CACHE_ENABLE=1' '-DDATA_CACHE_ENABLE=1' -c -I../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../Drivers/CMSIS/Include -I"/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/STM32CubeIDE/Application/User/Includes" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_pwr.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_rcc.o: /home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_rcc.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32L031xx -DUSE_FULL_LL_DRIVER '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DMSI_VALUE=2097000' '-DHSI_VALUE=16000000' '-DLSI_VALUE=37000' '-DVDD_VALUE=3300' '-DPREFETCH_ENABLE=0' '-DINSTRUCTION_CACHE_ENABLE=1' '-DDATA_CACHE_ENABLE=1' -c -I../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../Drivers/CMSIS/Include -I"/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/STM32CubeIDE/Application/User/Includes" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_rcc.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_usart.o: /home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_usart.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32L031xx -DUSE_FULL_LL_DRIVER '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DMSI_VALUE=2097000' '-DHSI_VALUE=16000000' '-DLSI_VALUE=37000' '-DVDD_VALUE=3300' '-DPREFETCH_ENABLE=0' '-DINSTRUCTION_CACHE_ENABLE=1' '-DDATA_CACHE_ENABLE=1' -c -I../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../Drivers/CMSIS/Include -I"/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/STM32CubeIDE/Application/User/Includes" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_usart.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_utils.o: /home/arthur/uitwisselmap/ST/projecten/OudeVolvo/Drivers/STM32L0xx_HAL_Driver/Src/stm32l0xx_ll_utils.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DSTM32L031xx -DUSE_FULL_LL_DRIVER '-DHSE_VALUE=8000000' '-DHSE_STARTUP_TIMEOUT=100' '-DLSE_STARTUP_TIMEOUT=5000' '-DLSE_VALUE=32768' '-DMSI_VALUE=2097000' '-DHSI_VALUE=16000000' '-DLSI_VALUE=37000' '-DVDD_VALUE=3300' '-DPREFETCH_ENABLE=0' '-DINSTRUCTION_CACHE_ENABLE=1' '-DDATA_CACHE_ENABLE=1' -c -I../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../Drivers/CMSIS/Include -I"/home/arthur/uitwisselmap/ST/projecten/OudeVolvo/STM32CubeIDE/Application/User/Includes" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32L0xx_HAL_Driver/stm32l0xx_ll_utils.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

