################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../sobel.cpp 

OBJS += \
./source/sobel.o 

CPP_DEPS += \
./source/sobel.d 


# Each subdirectory must supply rules for building sources it contributes
source/sobel.o: C:/XUP/v2_1/PYNQ-master/boards/ip/hls/BYU/sobel/sobel.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -IC:/Xilinx/Vivado/2017.4/include -IC:/XUP/v2_1/PYNQ-master/boards/ip/hls/BYU -IC:/Xilinx/Vivado/2017.4/include/etc -IC:/Xilinx/Vivado/2017.4/win64/tools/auto_cc/include -IC:/Xilinx/Vivado/2017.4/win64/tools/systemc/include -IC:/Xilinx/Vivado/2017.4/include/ap_sysc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


