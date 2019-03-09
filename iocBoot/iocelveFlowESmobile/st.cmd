#!../../bin/windows-x64-static/elveFlowESmobile

#- You may have to change elveFlowESmobile to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/elveFlowESmobile.dbd"
elveFlowESmobile_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=flowuser")
dbLoadTemplate("db/elveFlow.substitutions")
 
## Configure port driver # USBelveFlowConfig(portName)        
# The name to give to this asyn port driver  
USBelveFlowConfig("elveFlowOB1", 1)

#asynSetTraceMask elveFlowOB1 -1 255

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=flowuser"
