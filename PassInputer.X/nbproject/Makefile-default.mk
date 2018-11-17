#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PassInputer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PassInputer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=Sources/MLA/USB/usb_device.c Sources/MLA/USB/usb_device_hid.c Sources/MLA/USB/usb_hal_16bit.c Sources/Project/app_device_keyboard.c Sources/Project/app_led_usb_status.c Sources/Project/main.c Sources/Project/system.c Sources/Project/usb_descriptors.c Sources/Project/usb_events.c Sources/Project/bsp/buttons.c Sources/Project/bsp/leds.c Sources/Project/pass_state.c Sources/Project/lock_state.c Sources/Project/ascii_to_usb_usage.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Sources/MLA/USB/usb_device.o ${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o ${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o ${OBJECTDIR}/Sources/Project/app_device_keyboard.o ${OBJECTDIR}/Sources/Project/app_led_usb_status.o ${OBJECTDIR}/Sources/Project/main.o ${OBJECTDIR}/Sources/Project/system.o ${OBJECTDIR}/Sources/Project/usb_descriptors.o ${OBJECTDIR}/Sources/Project/usb_events.o ${OBJECTDIR}/Sources/Project/bsp/buttons.o ${OBJECTDIR}/Sources/Project/bsp/leds.o ${OBJECTDIR}/Sources/Project/pass_state.o ${OBJECTDIR}/Sources/Project/lock_state.o ${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Sources/MLA/USB/usb_device.o.d ${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o.d ${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o.d ${OBJECTDIR}/Sources/Project/app_device_keyboard.o.d ${OBJECTDIR}/Sources/Project/app_led_usb_status.o.d ${OBJECTDIR}/Sources/Project/main.o.d ${OBJECTDIR}/Sources/Project/system.o.d ${OBJECTDIR}/Sources/Project/usb_descriptors.o.d ${OBJECTDIR}/Sources/Project/usb_events.o.d ${OBJECTDIR}/Sources/Project/bsp/buttons.o.d ${OBJECTDIR}/Sources/Project/bsp/leds.o.d ${OBJECTDIR}/Sources/Project/pass_state.o.d ${OBJECTDIR}/Sources/Project/lock_state.o.d ${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Sources/MLA/USB/usb_device.o ${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o ${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o ${OBJECTDIR}/Sources/Project/app_device_keyboard.o ${OBJECTDIR}/Sources/Project/app_led_usb_status.o ${OBJECTDIR}/Sources/Project/main.o ${OBJECTDIR}/Sources/Project/system.o ${OBJECTDIR}/Sources/Project/usb_descriptors.o ${OBJECTDIR}/Sources/Project/usb_events.o ${OBJECTDIR}/Sources/Project/bsp/buttons.o ${OBJECTDIR}/Sources/Project/bsp/leds.o ${OBJECTDIR}/Sources/Project/pass_state.o ${OBJECTDIR}/Sources/Project/lock_state.o ${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o

# Source Files
SOURCEFILES=Sources/MLA/USB/usb_device.c Sources/MLA/USB/usb_device_hid.c Sources/MLA/USB/usb_hal_16bit.c Sources/Project/app_device_keyboard.c Sources/Project/app_led_usb_status.c Sources/Project/main.c Sources/Project/system.c Sources/Project/usb_descriptors.c Sources/Project/usb_events.c Sources/Project/bsp/buttons.c Sources/Project/bsp/leds.c Sources/Project/pass_state.c Sources/Project/lock_state.c Sources/Project/ascii_to_usb_usage.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PassInputer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ256GB110
MP_LINKER_FILE_OPTION=,--script=p24FJ256GB110.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Sources/MLA/USB/usb_device.o: Sources/MLA/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/MLA/USB" 
	@${RM} ${OBJECTDIR}/Sources/MLA/USB/usb_device.o.d 
	@${RM} ${OBJECTDIR}/Sources/MLA/USB/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/MLA/USB/usb_device.c  -o ${OBJECTDIR}/Sources/MLA/USB/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/MLA/USB/usb_device.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/MLA/USB/usb_device.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o: Sources/MLA/USB/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/MLA/USB" 
	@${RM} ${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/MLA/USB/usb_device_hid.c  -o ${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o: Sources/MLA/USB/usb_hal_16bit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/MLA/USB" 
	@${RM} ${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o.d 
	@${RM} ${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/MLA/USB/usb_hal_16bit.c  -o ${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/app_device_keyboard.o: Sources/Project/app_device_keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/app_device_keyboard.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/app_device_keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/app_device_keyboard.c  -o ${OBJECTDIR}/Sources/Project/app_device_keyboard.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/app_device_keyboard.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/app_device_keyboard.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/app_led_usb_status.o: Sources/Project/app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/app_led_usb_status.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/app_led_usb_status.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/app_led_usb_status.c  -o ${OBJECTDIR}/Sources/Project/app_led_usb_status.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/app_led_usb_status.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/app_led_usb_status.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/main.o: Sources/Project/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/main.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/main.c  -o ${OBJECTDIR}/Sources/Project/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/system.o: Sources/Project/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/system.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/system.c  -o ${OBJECTDIR}/Sources/Project/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/system.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/usb_descriptors.o: Sources/Project/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/usb_descriptors.c  -o ${OBJECTDIR}/Sources/Project/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/usb_descriptors.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/usb_descriptors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/usb_events.o: Sources/Project/usb_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/usb_events.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/usb_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/usb_events.c  -o ${OBJECTDIR}/Sources/Project/usb_events.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/usb_events.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/usb_events.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/bsp/buttons.o: Sources/Project/bsp/buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project/bsp" 
	@${RM} ${OBJECTDIR}/Sources/Project/bsp/buttons.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/bsp/buttons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/bsp/buttons.c  -o ${OBJECTDIR}/Sources/Project/bsp/buttons.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/bsp/buttons.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/bsp/buttons.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/bsp/leds.o: Sources/Project/bsp/leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project/bsp" 
	@${RM} ${OBJECTDIR}/Sources/Project/bsp/leds.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/bsp/leds.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/bsp/leds.c  -o ${OBJECTDIR}/Sources/Project/bsp/leds.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/bsp/leds.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/bsp/leds.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/pass_state.o: Sources/Project/pass_state.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/pass_state.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/pass_state.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/pass_state.c  -o ${OBJECTDIR}/Sources/Project/pass_state.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/pass_state.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/pass_state.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/lock_state.o: Sources/Project/lock_state.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/lock_state.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/lock_state.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/lock_state.c  -o ${OBJECTDIR}/Sources/Project/lock_state.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/lock_state.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/lock_state.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o: Sources/Project/ascii_to_usb_usage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/ascii_to_usb_usage.c  -o ${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/Sources/MLA/USB/usb_device.o: Sources/MLA/USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/MLA/USB" 
	@${RM} ${OBJECTDIR}/Sources/MLA/USB/usb_device.o.d 
	@${RM} ${OBJECTDIR}/Sources/MLA/USB/usb_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/MLA/USB/usb_device.c  -o ${OBJECTDIR}/Sources/MLA/USB/usb_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/MLA/USB/usb_device.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/MLA/USB/usb_device.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o: Sources/MLA/USB/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/MLA/USB" 
	@${RM} ${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/MLA/USB/usb_device_hid.c  -o ${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/MLA/USB/usb_device_hid.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o: Sources/MLA/USB/usb_hal_16bit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/MLA/USB" 
	@${RM} ${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o.d 
	@${RM} ${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/MLA/USB/usb_hal_16bit.c  -o ${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/MLA/USB/usb_hal_16bit.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/app_device_keyboard.o: Sources/Project/app_device_keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/app_device_keyboard.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/app_device_keyboard.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/app_device_keyboard.c  -o ${OBJECTDIR}/Sources/Project/app_device_keyboard.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/app_device_keyboard.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/app_device_keyboard.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/app_led_usb_status.o: Sources/Project/app_led_usb_status.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/app_led_usb_status.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/app_led_usb_status.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/app_led_usb_status.c  -o ${OBJECTDIR}/Sources/Project/app_led_usb_status.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/app_led_usb_status.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/app_led_usb_status.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/main.o: Sources/Project/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/main.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/main.c  -o ${OBJECTDIR}/Sources/Project/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/main.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/system.o: Sources/Project/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/system.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/system.c  -o ${OBJECTDIR}/Sources/Project/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/system.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/system.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/usb_descriptors.o: Sources/Project/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/usb_descriptors.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/usb_descriptors.c  -o ${OBJECTDIR}/Sources/Project/usb_descriptors.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/usb_descriptors.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/usb_descriptors.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/usb_events.o: Sources/Project/usb_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/usb_events.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/usb_events.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/usb_events.c  -o ${OBJECTDIR}/Sources/Project/usb_events.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/usb_events.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/usb_events.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/bsp/buttons.o: Sources/Project/bsp/buttons.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project/bsp" 
	@${RM} ${OBJECTDIR}/Sources/Project/bsp/buttons.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/bsp/buttons.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/bsp/buttons.c  -o ${OBJECTDIR}/Sources/Project/bsp/buttons.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/bsp/buttons.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/bsp/buttons.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/bsp/leds.o: Sources/Project/bsp/leds.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project/bsp" 
	@${RM} ${OBJECTDIR}/Sources/Project/bsp/leds.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/bsp/leds.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/bsp/leds.c  -o ${OBJECTDIR}/Sources/Project/bsp/leds.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/bsp/leds.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/bsp/leds.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/pass_state.o: Sources/Project/pass_state.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/pass_state.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/pass_state.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/pass_state.c  -o ${OBJECTDIR}/Sources/Project/pass_state.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/pass_state.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/pass_state.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/lock_state.o: Sources/Project/lock_state.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/lock_state.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/lock_state.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/lock_state.c  -o ${OBJECTDIR}/Sources/Project/lock_state.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/lock_state.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/lock_state.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o: Sources/Project/ascii_to_usb_usage.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Sources/Project" 
	@${RM} ${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o.d 
	@${RM} ${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  Sources/Project/ascii_to_usb_usage.c  -o ${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"Headers" -I"Headers/MLA" -I"Headers/MLA/USB" -I"Headers/Project" -I"Headers/Project/bsp" -I"../" -I"../.." -I"./" -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/Sources/Project/ascii_to_usb_usage.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PassInputer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PassInputer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PassInputer.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PassInputer.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}/xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PassInputer.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
