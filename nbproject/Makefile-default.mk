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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=libs/ADC.c libs/PCINT.c libs/USARTAtmega328P.c libs/WatchDog.c main.c MAX7219SPI.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/libs/ADC.o ${OBJECTDIR}/libs/PCINT.o ${OBJECTDIR}/libs/USARTAtmega328P.o ${OBJECTDIR}/libs/WatchDog.o ${OBJECTDIR}/main.o ${OBJECTDIR}/MAX7219SPI.o
POSSIBLE_DEPFILES=${OBJECTDIR}/libs/ADC.o.d ${OBJECTDIR}/libs/PCINT.o.d ${OBJECTDIR}/libs/USARTAtmega328P.o.d ${OBJECTDIR}/libs/WatchDog.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/MAX7219SPI.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/libs/ADC.o ${OBJECTDIR}/libs/PCINT.o ${OBJECTDIR}/libs/USARTAtmega328P.o ${OBJECTDIR}/libs/WatchDog.o ${OBJECTDIR}/main.o ${OBJECTDIR}/MAX7219SPI.o

# Source Files
SOURCEFILES=libs/ADC.c libs/PCINT.c libs/USARTAtmega328P.c libs/WatchDog.c main.c MAX7219SPI.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega328P
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/libs/ADC.o: libs/ADC.c  .generated_files/flags/default/cc3d796868d6ca24f56465159b36bc05fc315a9e .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/libs" 
	@${RM} ${OBJECTDIR}/libs/ADC.o.d 
	@${RM} ${OBJECTDIR}/libs/ADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/libs/ADC.o.d" -MT "${OBJECTDIR}/libs/ADC.o.d" -MT ${OBJECTDIR}/libs/ADC.o -o ${OBJECTDIR}/libs/ADC.o libs/ADC.c 
	
${OBJECTDIR}/libs/PCINT.o: libs/PCINT.c  .generated_files/flags/default/f97db5d7d358f0a380ca5f24fa169051a140fef5 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/libs" 
	@${RM} ${OBJECTDIR}/libs/PCINT.o.d 
	@${RM} ${OBJECTDIR}/libs/PCINT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/libs/PCINT.o.d" -MT "${OBJECTDIR}/libs/PCINT.o.d" -MT ${OBJECTDIR}/libs/PCINT.o -o ${OBJECTDIR}/libs/PCINT.o libs/PCINT.c 
	
${OBJECTDIR}/libs/USARTAtmega328P.o: libs/USARTAtmega328P.c  .generated_files/flags/default/f66c21e93f6da9462481201eb6e4cb1a6f87aad4 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/libs" 
	@${RM} ${OBJECTDIR}/libs/USARTAtmega328P.o.d 
	@${RM} ${OBJECTDIR}/libs/USARTAtmega328P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/libs/USARTAtmega328P.o.d" -MT "${OBJECTDIR}/libs/USARTAtmega328P.o.d" -MT ${OBJECTDIR}/libs/USARTAtmega328P.o -o ${OBJECTDIR}/libs/USARTAtmega328P.o libs/USARTAtmega328P.c 
	
${OBJECTDIR}/libs/WatchDog.o: libs/WatchDog.c  .generated_files/flags/default/c941fb75f2008711f35cb9abc21b4d0c7c86ae38 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/libs" 
	@${RM} ${OBJECTDIR}/libs/WatchDog.o.d 
	@${RM} ${OBJECTDIR}/libs/WatchDog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/libs/WatchDog.o.d" -MT "${OBJECTDIR}/libs/WatchDog.o.d" -MT ${OBJECTDIR}/libs/WatchDog.o -o ${OBJECTDIR}/libs/WatchDog.o libs/WatchDog.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/1729c3757cdacd6c09ed7e34b79fab08d5224027 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/MAX7219SPI.o: MAX7219SPI.c  .generated_files/flags/default/b5460089c349c2f634cae3c772f28d43d2a12491 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MAX7219SPI.o.d 
	@${RM} ${OBJECTDIR}/MAX7219SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/MAX7219SPI.o.d" -MT "${OBJECTDIR}/MAX7219SPI.o.d" -MT ${OBJECTDIR}/MAX7219SPI.o -o ${OBJECTDIR}/MAX7219SPI.o MAX7219SPI.c 
	
else
${OBJECTDIR}/libs/ADC.o: libs/ADC.c  .generated_files/flags/default/6566cf2efb76f1bd05191b729207a9103e93a9ff .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/libs" 
	@${RM} ${OBJECTDIR}/libs/ADC.o.d 
	@${RM} ${OBJECTDIR}/libs/ADC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/libs/ADC.o.d" -MT "${OBJECTDIR}/libs/ADC.o.d" -MT ${OBJECTDIR}/libs/ADC.o -o ${OBJECTDIR}/libs/ADC.o libs/ADC.c 
	
${OBJECTDIR}/libs/PCINT.o: libs/PCINT.c  .generated_files/flags/default/4ea5302c1e14a4acae2bd97aa89437674a27e1e1 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/libs" 
	@${RM} ${OBJECTDIR}/libs/PCINT.o.d 
	@${RM} ${OBJECTDIR}/libs/PCINT.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/libs/PCINT.o.d" -MT "${OBJECTDIR}/libs/PCINT.o.d" -MT ${OBJECTDIR}/libs/PCINT.o -o ${OBJECTDIR}/libs/PCINT.o libs/PCINT.c 
	
${OBJECTDIR}/libs/USARTAtmega328P.o: libs/USARTAtmega328P.c  .generated_files/flags/default/10690877603222a51dddb6f9f6dd831b42b74ecf .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/libs" 
	@${RM} ${OBJECTDIR}/libs/USARTAtmega328P.o.d 
	@${RM} ${OBJECTDIR}/libs/USARTAtmega328P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/libs/USARTAtmega328P.o.d" -MT "${OBJECTDIR}/libs/USARTAtmega328P.o.d" -MT ${OBJECTDIR}/libs/USARTAtmega328P.o -o ${OBJECTDIR}/libs/USARTAtmega328P.o libs/USARTAtmega328P.c 
	
${OBJECTDIR}/libs/WatchDog.o: libs/WatchDog.c  .generated_files/flags/default/9386c9b5a04eb160c6bf828b7220e0d217886944 .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}/libs" 
	@${RM} ${OBJECTDIR}/libs/WatchDog.o.d 
	@${RM} ${OBJECTDIR}/libs/WatchDog.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/libs/WatchDog.o.d" -MT "${OBJECTDIR}/libs/WatchDog.o.d" -MT ${OBJECTDIR}/libs/WatchDog.o -o ${OBJECTDIR}/libs/WatchDog.o libs/WatchDog.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/729e022b06022cb56f25e026e127fd5c9423b53b .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/MAX7219SPI.o: MAX7219SPI.c  .generated_files/flags/default/d382bf3bf96fabf03d30342e2de5caef6dcd5acc .generated_files/flags/default/2f9e58fd8ce1a2611b0e0fd33168db129b9285f3
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MAX7219SPI.o.d 
	@${RM} ${OBJECTDIR}/MAX7219SPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/MAX7219SPI.o.d" -MT "${OBJECTDIR}/MAX7219SPI.o.d" -MT ${OBJECTDIR}/MAX7219SPI.o -o ${OBJECTDIR}/MAX7219SPI.o MAX7219SPI.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/Atmega328P-AC-AC-DimmerTrailingEdge.${IMAGE_TYPE}.hex"
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
