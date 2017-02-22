#!../../bin/linux-x86_64/NewFocus8732

< envPaths
epicsEnvSet("STREAM_PROTOCOL_PATH", "${TOP}/iocBoot/${IOC}")

cd "${TOP}"

## Register all support components
dbLoadDatabase("dbd/NewFocus8732.dbd")
NewFocus8732_registerRecordDeviceDriver(pdbbase)

## configure serial port
drvAsynIPPortConfigure("SER1", "<IP>:<PORT>")

## Load record instances
dbLoadRecords("db/NewFocus8732.db", "P=PICO:,R=TEST:,PORT=SER1")

cd "${TOP}/iocBoot/${IOC}"
iocInit

