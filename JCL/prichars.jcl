//ZOWERUN  JOB ,NOTIFY=&SYSUID,
// MSGCLASS=X,MSGLEVEL=(1,1),TIME=(,4),REGION=144M
//* ttt
//* LICENSED MATERIALS - PROPERTY OF IBM
//* "RESTRICTED MATERIALS OF IBM"
//* (C) COPYRIGHT IBM CORPORATION 2018. ALL RIGHTS RESERVED
//*
//*  US GOVERNMENT USERS RESTRICTED RIGHTS - USE, DUPLICATION,
//*  OR DISCLOSURE RESTRICTED BY GSA ADP SCHEDULE
//*  CONTRACT WITH IBM CORPORATION
//*
//***************************
//*  COMPILE HELLOWRD      **
//***************************
//CMPL001 EXEC PROC=ELAXFCOC,
// CICS=,
// DB2=,
// COMP=
//COBOL.SYSDEBUG DD DISP=SHR,
//        DSN=PRICHAR.SAMPLE.SYSDEBUG(HELLOWRD)
//COBOL.SYSLIN DD DISP=SHR,
//        DSN=PRICHAR.SAMPLE.OBJ(HELLOWRD)
//COBOL.SYSLIB DD DISP=SHR,
//        DSN=PRICHAR.SAMPLE.COPYLIB
//COBOL.SYSXMLSD DD DUMMY
//COBOL.SYSIN DD DISP=SHR,
//        DSN=PRICHAR.SAMPLE.JCL(HELLOWRD)
//*
//***************************
//*  LINK HELLOWRD         **
//***************************
//LKED1 EXEC PROC=ELAXFLNK
//LINK.OBJ0000 DD DISP=SHR,
//        DSN=PRICHAR.SAMPLE.OBJ(HELLOWRD)
//LINK.SYSLIN DD *
     INCLUDE OBJ0000
/*
//LINK.SYSLMOD   DD  DISP=SHR,
//        DSN=PRICHAR.SAMPLE.LOAD(HELLOWRD)
//*************************
//* RUN HELLOWRD
//*************************
//SAM1  EXEC   PGM=HELLOWRD,COND=(08,LT)
//STEPLIB DD DSN=PRICHAR.SAMPLE.LOAD,DISP=SHR
//*
//SYSOUT   DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//*
