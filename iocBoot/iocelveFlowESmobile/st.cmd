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
dbLoadTemplate("db/pid_slow.substitutions")
 
## Configure port driver # USBelveFlowConfig(portName)        
# The name to give to this asyn port driver  
USBelveFlowConfig("elveFlowOB1", 1)

#asynSetTraceMask elveFlowOB1 -1 255

set_requestfile_path("./")
set_requestfile_path($(STD), "stdApp/Db")
set_requestfile_path($(ELVEFLOW), "elveFlowApp/Db")
###set_savefile_path("./autosave")
set_pass0_restoreFile("auto_settings.sav")
set_pass1_restoreFile("auto_settings.sav")

# specify where save files should be
set_savefile_path("${TOP}", "autosave")

cd "${TOP}/iocBoot/${IOC}"
iocInit

# save things every thirty seconds

create_monitor_set("auto_settings.req", 30)

## Start any sequence programs
#seq sncxxx,"user=flowuser"
