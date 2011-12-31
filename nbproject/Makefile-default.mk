#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile

# Environment
# Adding MPLAB X bin directory to path
PATH:=/Applications/microchip/mplabx/mplab_ide.app/Contents/Resources/mplab_ide/mplab_ide/modules/../../bin/:$(PATH)
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PICratchBOX_MIDI.X.${IMAGE_TYPE}.out
else
IMAGE_TYPE=production
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PICratchBOX_MIDI.X.${IMAGE_TYPE}.out
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED="${OBJECTDIR}/DEE Emulation 16-bit.o" "${OBJECTDIR}/Flash Operations.o" "${OBJECTDIR}/PIC24 HID Bootloader Remapping.o" ${OBJECTDIR}/USB/usb_device.o ${OBJECTDIR}/picratchbox.o ${OBJECTDIR}/usb_descriptors.o

# Object Files
OBJECTFILES=${OBJECTDIR}/DEE\ Emulation\ 16-bit.o ${OBJECTDIR}/Flash\ Operations.o ${OBJECTDIR}/PIC24\ HID\ Bootloader\ Remapping.o ${OBJECTDIR}/USB/usb_device.o ${OBJECTDIR}/picratchbox.o ${OBJECTDIR}/usb_descriptors.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH="/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/bin/"
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC="/Applications/microchip/mplabc30/v3.30c/bin/pic30-gcc"
# MP_BC is not defined
MP_AS="/Applications/microchip/mplabc30/v3.30c/bin/pic30-as"
MP_LD="/Applications/microchip/mplabc30/v3.30c/bin/pic30-ld"
MP_AR="/Applications/microchip/mplabc30/v3.30c/bin/pic30-ar"
DEP_GEN=${MP_JAVA_PATH}java -jar "/Applications/microchip/mplabx/mplab_ide.app/Contents/Resources/mplab_ide/mplab_ide/modules/../../bin/extractobjectdependencies.jar" 
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps
MP_CC_DIR="/Applications/microchip/mplabc30/v3.30c/bin"
# MP_BC_DIR is not defined
MP_AS_DIR="/Applications/microchip/mplabc30/v3.30c/bin"
MP_LD_DIR="/Applications/microchip/mplabc30/v3.30c/bin"
MP_AR_DIR="/Applications/microchip/mplabc30/v3.30c/bin"
# MP_BC_DIR is not defined

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PICratchBOX_MIDI.X.${IMAGE_TYPE}.out

MP_PROCESSOR_OPTION=24FJ64GB002
MP_LINKER_FILE_OPTION=,--script="boot_hid_p24FJ64GB002.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/Flash\ Operations.o: Flash\ Operations.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Flash\ Operations.o.d 
	@${RM} ${OBJECTDIR}/Flash\ Operations.o.ok ${OBJECTDIR}/Flash\ Operations.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Flash Operations.o.d" -t $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  "Flash Operations.s" -o "${OBJECTDIR}/Flash Operations.o" -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_PK3=1 -g  -MD "${OBJECTDIR}/Flash Operations.o.d"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/PIC24\ HID\ Bootloader\ Remapping.o: PIC24\ HID\ Bootloader\ Remapping.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/PIC24\ HID\ Bootloader\ Remapping.o.d 
	@${RM} ${OBJECTDIR}/PIC24\ HID\ Bootloader\ Remapping.o.ok ${OBJECTDIR}/PIC24\ HID\ Bootloader\ Remapping.o.err 
	@${FIXDEPS} "${OBJECTDIR}/PIC24 HID Bootloader Remapping.o.d" -t $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  "PIC24 HID Bootloader Remapping.s" -o "${OBJECTDIR}/PIC24 HID Bootloader Remapping.o" -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 --defsym=__MPLAB_DEBUG=1 --defsym=__ICD2RAM=1 --defsym=__DEBUG=1 --defsym=__MPLAB_DEBUGGER_PK3=1 -g  -MD "${OBJECTDIR}/PIC24 HID Bootloader Remapping.o.d"$(MP_EXTRA_AS_POST)
	
else
${OBJECTDIR}/Flash\ Operations.o: Flash\ Operations.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Flash\ Operations.o.d 
	@${RM} ${OBJECTDIR}/Flash\ Operations.o.ok ${OBJECTDIR}/Flash\ Operations.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Flash Operations.o.d" -t $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  "Flash Operations.s" -o "${OBJECTDIR}/Flash Operations.o" -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/Flash Operations.o.d"$(MP_EXTRA_AS_POST)
	
${OBJECTDIR}/PIC24\ HID\ Bootloader\ Remapping.o: PIC24\ HID\ Bootloader\ Remapping.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/PIC24\ HID\ Bootloader\ Remapping.o.d 
	@${RM} ${OBJECTDIR}/PIC24\ HID\ Bootloader\ Remapping.o.ok ${OBJECTDIR}/PIC24\ HID\ Bootloader\ Remapping.o.err 
	@${FIXDEPS} "${OBJECTDIR}/PIC24 HID Bootloader Remapping.o.d" -t $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE)  "PIC24 HID Bootloader Remapping.s" -o "${OBJECTDIR}/PIC24 HID Bootloader Remapping.o" -omf=elf -p=$(MP_PROCESSOR_OPTION) --defsym=__MPLAB_BUILD=1 -g  -MD "${OBJECTDIR}/PIC24 HID Bootloader Remapping.o.d"$(MP_EXTRA_AS_POST)
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.ok ${OBJECTDIR}/usb_descriptors.o.err 
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"./" -I"./Include" -I"./Include/USB" -I"./USB" -MMD -MF "${OBJECTDIR}/usb_descriptors.o.d" -o ${OBJECTDIR}/usb_descriptors.o usb_descriptors.c  
	
${OBJECTDIR}/picratchbox.o: picratchbox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/picratchbox.o.d 
	@${RM} ${OBJECTDIR}/picratchbox.o.ok ${OBJECTDIR}/picratchbox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/picratchbox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"./" -I"./Include" -I"./Include/USB" -I"./USB" -MMD -MF "${OBJECTDIR}/picratchbox.o.d" -o ${OBJECTDIR}/picratchbox.o picratchbox.c  
	
${OBJECTDIR}/DEE\ Emulation\ 16-bit.o: DEE\ Emulation\ 16-bit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/DEE\ Emulation\ 16-bit.o.d 
	@${RM} ${OBJECTDIR}/DEE\ Emulation\ 16-bit.o.ok ${OBJECTDIR}/DEE\ Emulation\ 16-bit.o.err 
	@${FIXDEPS} "${OBJECTDIR}/DEE Emulation 16-bit.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"./" -I"./Include" -I"./Include/USB" -I"./USB" -MMD -MF "${OBJECTDIR}/DEE Emulation 16-bit.o.d" -o "${OBJECTDIR}/DEE Emulation 16-bit.o" "DEE Emulation 16-bit.c"  
	
${OBJECTDIR}/USB/usb_device.o: USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/USB 
	@${RM} ${OBJECTDIR}/USB/usb_device.o.d 
	@${RM} ${OBJECTDIR}/USB/usb_device.o.ok ${OBJECTDIR}/USB/usb_device.o.err 
	@${FIXDEPS} "${OBJECTDIR}/USB/usb_device.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"./" -I"./Include" -I"./Include/USB" -I"./USB" -MMD -MF "${OBJECTDIR}/USB/usb_device.o.d" -o ${OBJECTDIR}/USB/usb_device.o USB/usb_device.c  
	
else
${OBJECTDIR}/usb_descriptors.o: usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.d 
	@${RM} ${OBJECTDIR}/usb_descriptors.o.ok ${OBJECTDIR}/usb_descriptors.o.err 
	@${FIXDEPS} "${OBJECTDIR}/usb_descriptors.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"./" -I"./Include" -I"./Include/USB" -I"./USB" -MMD -MF "${OBJECTDIR}/usb_descriptors.o.d" -o ${OBJECTDIR}/usb_descriptors.o usb_descriptors.c  
	
${OBJECTDIR}/picratchbox.o: picratchbox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/picratchbox.o.d 
	@${RM} ${OBJECTDIR}/picratchbox.o.ok ${OBJECTDIR}/picratchbox.o.err 
	@${FIXDEPS} "${OBJECTDIR}/picratchbox.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"./" -I"./Include" -I"./Include/USB" -I"./USB" -MMD -MF "${OBJECTDIR}/picratchbox.o.d" -o ${OBJECTDIR}/picratchbox.o picratchbox.c  
	
${OBJECTDIR}/DEE\ Emulation\ 16-bit.o: DEE\ Emulation\ 16-bit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/DEE\ Emulation\ 16-bit.o.d 
	@${RM} ${OBJECTDIR}/DEE\ Emulation\ 16-bit.o.ok ${OBJECTDIR}/DEE\ Emulation\ 16-bit.o.err 
	@${FIXDEPS} "${OBJECTDIR}/DEE Emulation 16-bit.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"./" -I"./Include" -I"./Include/USB" -I"./USB" -MMD -MF "${OBJECTDIR}/DEE Emulation 16-bit.o.d" -o "${OBJECTDIR}/DEE Emulation 16-bit.o" "DEE Emulation 16-bit.c"  
	
${OBJECTDIR}/USB/usb_device.o: USB/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/USB 
	@${RM} ${OBJECTDIR}/USB/usb_device.o.d 
	@${RM} ${OBJECTDIR}/USB/usb_device.o.ok ${OBJECTDIR}/USB/usb_device.o.err 
	@${FIXDEPS} "${OBJECTDIR}/USB/usb_device.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -I"./" -I"./Include" -I"./Include/USB" -I"./USB" -MMD -MF "${OBJECTDIR}/USB/usb_device.o.d" -o ${OBJECTDIR}/USB/usb_device.o USB/usb_device.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PICratchBOX_MIDI.X.${IMAGE_TYPE}.out: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/PICratchBOX_MIDI.X.${IMAGE_TYPE}.out ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/PICratchBOX_MIDI.X.${IMAGE_TYPE}.out: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PICratchBOX_MIDI.X.${IMAGE_TYPE}.out ${OBJECTFILES_QUOTED_IF_SPACED}        -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}/pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PICratchBOX_MIDI.X.${IMAGE_TYPE}.out -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard $(addsuffix .d, ${OBJECTFILES}))
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
