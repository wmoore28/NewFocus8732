TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# build an ioc application

PROD_IOC = NewFocus8732

# NewFocus8732.dbd will be created and installed
DBD += NewFocus8732.dbd
NewFocus8732_DBD += base.dbd
NewFocus8732_DBD += stream.dbd
NewFocus8732_DBD += drvAsynIPPort.dbd
NewFocus8732_DBD += asyn.dbd

# <name>_registerRecordDeviceDriver.cpp will be created from <name>.dbd
NewFocus8732_SRCS += NewFocus8732_registerRecordDeviceDriver.cpp
NewFocus8732_SRCS_DEFAULT += NewFocus8732Main.cpp
NewFocus8732_SRCS_vxWorks += -nil-

#The following adds support from base/src/vxWorks
NewFocus8732_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

#add a definition for each support application used by this application
NewFocus8732_LIBS += stream
NewFocus8732_LIBS += asyn
NewFocus8732_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

