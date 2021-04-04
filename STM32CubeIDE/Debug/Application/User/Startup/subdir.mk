################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Application/User/Startup/startup_stm32l031k6tx.s 

OBJS += \
./Application/User/Startup/startup_stm32l031k6tx.o 

S_DEPS += \
./Application/User/Startup/startup_stm32l031k6tx.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Startup/startup_stm32l031k6tx.o: ../Application/User/Startup/startup_stm32l031k6tx.s
	arm-none-eabi-gcc -mcpu=cortex-m0plus -g3 -c -x assembler-with-cpp -MMD -MP -MF"Application/User/Startup/startup_stm32l031k6tx.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@" "$<"

