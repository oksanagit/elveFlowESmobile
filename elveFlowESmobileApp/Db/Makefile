TOP=../..
include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#----------------------------------------------------
# Create and install (or just install) into <top>/db
# databases, templates, substitutions like this
#DB += xxx.db
# template is taken from the driver location; update elveFlow.substitutions 
# to look in the folder where you installed elveFlow driver
#DB += elveFlow.template
DB += elveFlow.substitutions
DB += asyn.substitutions
DB += elveFlowOB1sensorLimitsSet.template
#DB += asyn.db

#----------------------------------------------------
# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_template = <templatename>

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

