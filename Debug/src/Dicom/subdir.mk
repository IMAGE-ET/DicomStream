################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Dicom/DicomPixels.cpp 

OBJS += \
./src/Dicom/DicomPixels.o 

CPP_DEPS += \
./src/Dicom/DicomPixels.d 


# Each subdirectory must supply rules for building sources it contributes
src/Dicom/%.o: ../src/Dicom/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -I"/home/aaron/src/DicomStream/lib/imebra/project_files/library/base/include" -I"/home/aaron/src/DicomStream/lib/imebra/project_files/library/imebra/include" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


