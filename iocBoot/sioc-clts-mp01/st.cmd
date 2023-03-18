#!iocSpecificRelease/bin/linuxRT-x86_64/l2MpsLN
#
# SIOC:UNDS:MP01
#

< envPaths

epicsEnvSet("SLOT_ID", "2")
epicsEnvSet("FPGA_IP","10.0.1.10${SLOT_ID}")
epicsEnvSet("FACILITY","lcls")
epicsEnvSet("TYPE","LN")

epicsEnvSet("LOCATION","CLTS")
epicsEnvSet("LOCATION_INDEX","MP01")
epicsEnvSet("MODE_INPV", "0")

#
# Loads common Link Node startup
#
< ${TOP}/iocBoot/common/start.cmd

cpswLoadConfigFile("iocBoot/${IOC}/configs/specifics.yaml", "mmio")

system("scripts/setupBPClockRT.sh shm-sps-sp05-1")
