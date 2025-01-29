Copyright (c) (2015) Fluke Corporation                      MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub RIF/WIF Directory
INSTRUMENT:            Sub RIF Error
INSTRUMENT:            Sub WIF Error
DATE:                  2015-04-30 09:02:37
AUTHOR:                Fluke
REVISION:              $Revision: 24550 $
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       3
NUMBER OF LINES:       103
=============================================================================
#
#  Procedure Author:
#        DAC
#
#  Compatibility:
#        MET/CAL 7.20 or later
#
#  The copyright in this procedure is owned by Fluke Corporation.
#
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON

  1.001  JMPL         RIF_WIF_DIR                  PSUB("RIF/WIF Directory")
  1.002  JMPL         RIF_ERROR                    PSUB("RIF Error")
  1.003  JMPL         WIF_ERROR                    PSUB("WIF Error")
  1.004  DISP         Subprocedure not found!
  1.005  END

  1.006  EVAL   Increment test number

# =====  Sub RIF/WIF Directory  =============================================

  2.001  LABEL        RIF_WIF_DIR
  2.002  MATH         @Error = 0

# Use RIF/WIF Directory if specified.
  2.003  MATH         @RifWifDir = INI("Startup", "RifWifDir")

# Otherwise use User Data Director, if specified.
  2.004  IF           EMPTY(@RifWifDir)
  2.005  MATH         @RifWifDir = INI("Startup", "User_Data_Dir")
  2.006  ENDIF

# Otherwise use Current Working Directory (CWD) if specified.
  2.007  IF           EMPTY(@RifWifDir)
  2.008  MATH         @RifWifDir = INI("Startup", "User_CWD")
  2.009  ENDIF

# Otherwise error.
  2.010  IF           EMPTY(@RifWifDir)
  2.011  MATH         IniFile = IFILE()
  2.012  DISP         No directory specified in:
  2.012  DISP
  2.012  DISP         [32] [V IniFile]
  2.012  DISP
  2.012  DISP         for MATH FSC WIF / RIF functions.
  2.012  DISP         (Write / Read .ini file)
  2.012  DISP
  2.012  DISP         Terminate the procedure and add:
  2.012  DISP
  2.012  DISP         WifRifDir = <path>
  2.012  DISP
  2.012  DISP         to
  2.012  DISP
  2.012  DISP         [32] [V IniFile]
  2.012  DISP
  2.012  DISP         Where <path> is the directory path where WIF and RIF
  2.012  DISP         file I/O will be performed.
  2.013  MATH         @Error = 1
  2.014  ENDIF

  2.015  END

  2.016  EVAL   Increment test number

# =====  Sub RIF Error  =====================================================

  3.001  LABEL        RIF_ERROR
  3.002  HEAD         READ INI FILE (RIF) ERROR
  3.003  DISP         File:
  3.003  DISP         [V @IniFile]
  3.003  DISP
  3.003  DISP         Section:
  3.003  DISP         [91][V @Section][93]
  3.003  DISP
  3.003  DISP         Parameter:
  3.003  DISP         [V @Parameter]
  3.003  DISP
  3.003  DISP         Cannot find File, Section, and/or Parameter!
  3.004  MATH         @Error = 1
  3.005  END

# =====  Sub WIF Error  =====================================================

  3.006  LABEL        WIF_ERROR
  3.007  HEAD         WRITE INI FILE (WIF) ERROR
  3.008  DISP         File:
  3.008  DISP         [V @IniFile]
  3.008  DISP
  3.008  DISP         Cannot create File!
  3.009  MATH         @Error = 1
  3.010  END
