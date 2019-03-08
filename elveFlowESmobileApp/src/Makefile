TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = elveFlowESmobile
# elveFlowESmobile.dbd will be created and installed
DBD += elveFlowESmobile.dbd

# elveFlowESmobile.dbd will be made up from these files:
## save/restore elveFlowESmobile_DBD += asSupport.dbd
##elveFlowESmobile_DBD += sscanSupport.dbd
elveFlowESmobile_DBD += base.dbd
elveFlowESmobile_DBD += asyn.dbd
#elveFlowESmobile_DBD += stdSupport.dbd
elveFlowESmobile_DBD += elveFlowSupport.dbd


# Include dbd files from all support applications:
#elveFlowESmobile_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
elveFlowESmobile_LIBS += Elveflow64
elveFlowESmobile_LIBS += Elveflow
elveFlowESmobile_LIBS += asyn
#elveFlowESmobile_LIBS += std
#elveFlowESmobile_LIBS += sscan

# elveFlowESmobile_registerRecordDeviceDriver.cpp derives from elveFlowESmobile.dbd
elveFlowESmobile_SRCS += elveFlowESmobile_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
elveFlowESmobile_SRCS_DEFAULT += elveFlowESmobileMain.cpp
elveFlowESmobile_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#elveFlowESmobile_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
elveFlowESmobile_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

