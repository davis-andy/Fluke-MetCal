Fluke Calibration                                           MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub Select Verification Method
INSTRUMENT:            Sub Select Verification Method (No NTHROW)
DATE:                  2019-02-20 14:52:17
AUTHOR:                Fluke
REVISION:              $Revision: 26619 $
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       1
NUMBER OF LINES:       118
=============================================================================
#
#  Procedure Author:
#        DFM, DAC
#
#  Compatibility:
#        5500/CAL or MET/CAL 7.20 or later
#
#  The copyright in this procedure is owned by Fluke Corporation.
#
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON

# Set ASK+ K since this sub defaults NMEAS to 1 or greater.
  1.001  ASK+           K

  1.002  MATH         SharedDir = INI("Startup", "SharedDir")

  1.003  IF           EMPTY(SharedDir)
  1.004  MATH         SharedDir = "C:/ProgramData/Fluke/METBASE/Shared"
  1.005  ENDIF

# If Measurement Uncertainty initialization file does not exist, create it
# with NTHROW = 1 and NMEAS = 1.
  1.006  MATH         MU_IniFile = INI("Startup", "MU_INIT")

  1.007  IF           EMPTY(MU_IniFile)
  1.008  MATH         MU_IniFile = SharedDir & "/mu.ini"
  1.009  ENDIF

  1.010  MATH         @IniFile   = MU_IniFile
  1.011  MATH         @Section   = "Measurement Uncertainty Initialization"
  1.012  MATH         @Parameter = "NTHROW"
  1.013  MATH         @NThrow = RIF(@IniFile, @Section, @Parameter)

  1.014  IF           EMPTY(@NThrow)
  1.015  MATH         MEM2 = 1
  1.016  CALL         Sub Initialization File: Write Parameter

  1.017  IF           @Error
  1.018  END
  1.019  ENDIF

  1.020  ENDIF

  1.021  MATH         @Parameter = "NMEAS"
  1.022  MATH         @NMeas = RIF(@IniFile, @Section, @Parameter)

  1.023  IF           EMPTY(@NMeas)
  1.024  MATH         MEM2 = 1
  1.025  CALL         Sub Initialization File: Write Parameter

  1.026  IF           @Error
  1.027  END
  1.028  ENDIF

  1.029  ENDIF

  1.030  MATH         @IniFile = MU_IniFile

# Set NTHROW.
  1.031  IF           PSUBI("No NTHROW")
  1.032  MATH         @NThrow = 0

# See if NTHROW parameter is specified in MET/CAL initialization file.
# Note, the MET/CAL ini file overrides the measurement uncertainty ini file.
  1.033  ELSE
  1.034  MATH         @NThrow = INI("Startup", "NTHROW")

# If NTHROW was not specified in the MET/CAL ini file, use value written
# to mu.ini above.
  1.035  IF           EMPTY(@NThrow)
  1.036  MATH         @Parameter = "NTHROW"
  1.037  CALL         Sub Initialization File: Read Parameter

  1.038  IF           @Error
  1.039  END
  1.040  ENDIF

  1.041  MATH         @NThrow = MEM2
  1.042  ENDIF

  1.043  ENDIF        ; PSUBI("No NTHROW")

# Set NMEAS.
# See if NMEAS parameter is specified in MET/CAL initialization file.
# Note, the MET/CAL ini file overrides the measurement uncertainty ini file.
  1.044  MATH         @NMeas = INI("Startup", "NMEAS")

# If NMEAS was not specified in the MET/CAL ini file, use value written
# to mu.ini above.
  1.045  IF           EMPTY(@NMeas)
  1.046  MATH         @Parameter = "NMEAS"
  1.047  CALL         Sub Initialization File: Read Parameter

  1.048  IF           @Error
  1.049  END
  1.050  ENDIF

  1.051  MATH         @NMeas = MEM2
  1.052  ENDIF

# Retain @MeasMode assignment for backwards procedure compatibility.
  1.053  IF           NOT(ISVAR("@MeasMode"))
  1.054  MATH         @MeasMode = "TAR"
  1.055  ENDIF

  1.056  VSET         NTHROW = [V @NThrow]; NMEAS = [V @NMeas]
  1.057  END
