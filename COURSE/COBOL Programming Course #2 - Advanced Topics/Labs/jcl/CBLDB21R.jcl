//CBLDB21R JOB 1,NOTIFY=&SYSUID,REGION=0M
//********************************************************************
//*        RUN                                                       *
//********************************************************************
//RUN     EXEC PGM=IKJEFT01
//STEPLIB  DD DSN=DSNC10.SDSNLOAD,DISP=SHR
//REPORT   DD SYSOUT=*
//SYSTSIN  DD *,SYMBOLS=CNVTSYS
 DSN SYSTEM(DBCG)
 RUN PROGRAM(CBLDB21) PLAN(&SYSUID) LIB('&SYSUID..LOAD')
 END
//SYSIN    DD DUMMY
//SYSUDUMP DD DUMMY
//CEEDUMP  DD DUMMY
//SYSTSPRT DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
/*
