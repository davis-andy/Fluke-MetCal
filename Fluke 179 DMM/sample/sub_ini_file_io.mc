Copyright (c) (2015) Fluke Corporation                      MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub Initialization File: Write Parameter
INSTRUMENT:            Sub Initialization File: Read Parameter
DATE:                  2015-04-30 09:02:08
AUTHOR:                Fluke
REVISION:              $Revision: 27413 $
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       3
NUMBER OF LINES:       68
=============================================================================
#
# Procedure Author:
#        ZAC
#
# The copyright for this procedure is owned by Fluke Corporation.
#
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON

  1.001  JMPL         WRITE                        PSUB("Write")
  1.002  JMPL         READ                         PSUB("Read")
  1.003  DISP         Subprocedure Not Found!
  1.004  END

  1.005  EVAL   Increment Test Number

# =====  Sub Initialization File: Write Parameter ==========================

#  Example Usage:
# 1.001  MATH         @IniFile = "esa_toi_gc_levels.ini"; @Section = "53_MHz"
# 1.002  MATH         @Parameter = "pwr_lvl"; MEM2 = @TestLvl
# 1.003  CALL         Sub Initialization File: Write Parameter

  2.001  LABEL        WRITE
  2.002  MATH         Insert = WIF(@IniFile, @Section, @Parameter, MEM2)

  2.003  IF           EMPTY(Insert)
  2.004  CALL         Sub WIF Error
  2.005  ELSE
  2.006  MATH         @Error = 0
  2.007  ENDIF

  2.008  END

  2.009  EVAL   Increment Test Number

# =====  Sub Initialization File: Read Parameter ===========================

#  Example Usage:
# 1.001  MATH         @IniFile = "esa_toi_gc_levels.ini"; @Section = "53_MHz"
# 1.002  MATH         @Parameter = "pwr_lvl"
# 1.003  CALL         Sub Initialization File: Read Parameter
# 1.004  DISP         53 MHz Reference Power = [MEM2] dBm

  3.001  LABEL        READ

  3.002  MATH         MEM2 = RIF(@IniFile, @Section, @Parameter)

  3.003  IF           EMPTY(MEM2)
  3.004  CALL         Sub RIF Error
  3.005  ELSE
  3.006  MATH         @Error = 0
  3.007  ENDIF

  3.008  END
