Fluke Calibration                                           MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub Select Guardbanding Method
INSTRUMENT:            Sub Select Guardbanding & Ver Method
INSTRUMENT:            Sub Select Guardbanding & Ver Method (No NTHROW)
DATE:                  2019-02-20 14:52:16
AUTHOR:                Fluke
REVISION:              $Revision: 26620 $
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       1
NUMBER OF LINES:       145
=============================================================================
#
#  Procedure Author:
#        DAC, DFM, CAD
#
#  Compatibility:
#        5500/CAL or MET/CAL version 7.20 or later
#
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON

# Set ASK+ K since this sub defaults NMEAS to 1 or greater.
  1.001  ASK+           K

  1.002  MATH         @Section = "MET/CAL Guardbanding Initialization"

# See if GB parameter is specified in MET/CAL initialization (ini) file.
# Note: this parameter will override the guardbanding ini file.
  1.003  MATH         @GB_Method = INI("Startup", "GB")

# If GB was not specified in the MET/CAL ini file, see if GB_INIT parameter
# is specified in MET/CAL initialization file.
  1.004  IF           EMPTY(@GB_Method)
  1.005  MATH         GB_IniFile = INI("Startup", "GB_INIT")

  1.006  IF           EXISTS(GB_IniFile)
  1.007  MATH         @IniFile   = GB_IniFile
  1.008  MATH         @Parameter = "GB"
  1.009  CALL         Sub Initialization File: Read Parameter

  1.010  IF           @Error
  1.011  END
  1.012  ENDIF

  1.013  MATH         @GB_Method = MEM2
  1.014  ENDIF

  1.015  ENDIF        ; EMPTY(@GB_Method)

# If GB method is still not known, see if gb.ini exists in SharedDir.
  1.016  IF           EMPTY(@GB_Method)
  1.017  MATH         SharedDir = INI("Startup", "SharedDir")

  1.018  IF           EMPTY(SharedDir)
  1.019  MATH         SharedDir = "C:/ProgramData/Fluke/METBASE/Shared"
  1.020  ENDIF

  1.021  MATH         GB_IniFile = SharedDir & "/gb.ini"
  1.022  MATH         @IniFile   = GB_IniFile
  1.023  MATH         @Parameter = "GB"

  1.024  IF           EXISTS(GB_IniFile)
  1.025  CALL         Sub Initialization File: Read Parameter

  1.026  IF           @Error
  1.027  END
  1.028  ENDIF

  1.029  MATH         @GB_Method = MEM2

# Create <SharedDir>\gb.ini with default setting of GB = RDS.
  1.030  ELSE
  1.031  MATH         @GB_Method = "RDS"; MEM2 = @GB_Method
  1.032  CALL         Sub Initialization File: Write Parameter

  1.033  IF           @Error
  1.034  END
  1.035  ENDIF

  1.036  ENDIF        ; EXISTS(GB_IniFile)

# Create GB_INIT parameter in MET/CAL initialization file.
  1.037  MATH         @IniFile   = IFILE()
  1.038  MATH         @Section   = "Startup"
  1.039  MATH         @Parameter = "GB_INIT"
  1.040  MATH         MEM2       = GB_IniFile
  1.041  CALL         Sub Initialization File: Write Parameter

  1.042  IF           @Error
  1.043  END
  1.044  ENDIF

# Retain @MeasMode assignment for backwards procedure compatibility.
  1.045  IF           ZCMPI(@GB_Method, "MU")
  1.046  MATH         @MeasMode = "MU"
  1.047  ELSE
  1.048  MATH         @MeasMode = "TAR"
  1.049  ENDIF

  1.050  VSET         GB = [V @GB_Method]
  1.051  ENDIF        ; EMPTY(@GB_Method)

# Prevent warnings due to guardbands applied to assymetrical tolerances.
  1.052  MATH         @Section    = "MET/CAL Guardbanding Initialization"
  1.053  MATH         GB_Overflow = RIF(GB_IniFile, @Section, "GB_OVERFLOW")

  1.054  IF           EMPTY(GB_Overflow)
  1.055  MATH         GB_Overflow = "LIMIT"
  1.056  ENDIF

  1.057  VSET         GB_OVERFLOW = [V GB_Overflow]

# Now set the verification method.
  1.058  IF           PSUBI("Ver")

  1.059  IF           PSUBI("No NTHROW")
  1.060  CALL         Sub Select Verification Method (No NTHROW)
  1.061  ELSE
  1.062  CALL         Sub Select Verification Method
  1.063  ENDIF

  1.064  ENDIF

  1.065  MATH         @Error = 0
  1.066  RSLT         =

  1.067  IF           ZCMPI(@GB_Method, "Direct")
  1.068  RSLT         =Direct guardbanding method used.
  1.069  ELSEIF       ZCMPI(@GB_Method, "MU")
  1.070  RSLT         =Measurement Uncertainty guardbanding method used.
  1.071  ELSEIF       ZCMPI(@GB_Method, "NTUR")
  1.072  RSLT         =Table Based guardbanding method used.
  1.073  ELSEIF       ZCMPI(@GB_Method, "RDS")
  1.074  RSLT         =Root Difference Square guardbanding method used.
  1.075  ELSEIF       ZCMPI(@GB_Method, "TSR")
  1.076  RSLT         =Test Specification Ratio guardbanding method used.
  1.077  ELSEIF       ZCMPI(@GB_Method, "TUR")
  1.078  RSLT         =Test Uncertainty Ratio guardbanding method used.
  1.079  ELSEIF       ZCMPI(@GB_Method, "OFF")
  1.080  ELSE
  1.081  DISP         Unrecognized guardbanding method specified!
  1.082  MATH         @Error = 1
  1.083  ENDIF

  1.084  END
