Copyright (c) (2017) Fluke Corporation                      MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub Fluke 179 (1 yr) VER /5502
DATE:                  2018-01-19 12:01:44
AUTHOR:                Fluke
REVISION:              $Revision: 23315 $
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       1
NUMBER OF LINES:       114
CONFIGURATION:         Fluke 5502E
=============================================================================
#
#  Procedure Author:
#        MSD, DAC, VY
#
#  This procedure contains the following tests whose Test Uncertainty Ratio
#  are less than 4:1.
#        CAPACITANCE
#                     900 nF; TUR 3.9385
#
#  Source:
#        Fluke 175, 177, & 179 True RMS Multimeters
#        Calibration Information
#        PN 1600476 March 2001 Rev. 6, 10/15
#
#  Compatibility:
#        MET/CAL 8.1.4 or later
#
#  Additional Equipment Required:
#        Type K SMP plug to SMP plug thermocouple cable
#        Fluke 80AK SMP to dual banana adapter
#
#  This procedure is intended for use with MET/CAL® calibration software;
#  the terms and conditions set forth in your MET/CAL license apply to this
#  procedure.
#
#  Due to Fluke's policy of continuously updating our products, this procedure
#  may contain minor differences in methods used and/or specifications to
#  those found in the manual or other documentation. While every effort has
#  been made to ensure that this procedure is accurate, Fluke cannot be held
#  responsible for the consequences of error or omissions found within this
#  procedure.
#
#  The copyright in this procedure is owned by Fluke Corporation.
#
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON

  1.001  IF           0
  1.002  5502E        Reset
  1.003  ENDIF

  1.004  ASK-   R   Q N              P                                     V

  1.005  IF           NOT(VERSIONCHECK("8.1.4"))
  1.006  END
  1.007  ENDIF

  1.008  CALL         Sub Display Copyright
  1.009  CALL         Sub High Voltage Safety Warning
  1.010  CALL         Sub Select Failed Test Mode
  1.011  CALL         Sub Select Guardbanding & Ver Method (No NTHROW)

  1.012  HEAD         EQUIPMENT REQUIREMENTS
  1.013  OPBR         -z Do you want to review the list of additional
  1.013  OPBR         equipment and/or accessories required?

  1.014  IF           MEM1
  1.015  DISP         The following additional equipment and/or
  1.015  DISP         accessories are required:
  1.015  DISP
  1.015  DISP         - Type K SMP plug to SMP plug thermocouple cable
  1.015  DISP         - Fluke 80AK SMP to dual banana adapter
  1.016  ENDIF

# NOTE: The execution order of this verification procedure has been optimized
# to minimize operator intervention, while retaining the correct sequence for
# reported test results.  For more information about the method used, refer
# to this application note, available at www.flukecal.com:
# Application Note 6001075: Preserving Results Order While Optimizing
# Execution Sequence in MET/CAL Procedures.

  1.017  CALL         Sub Fluke 175/177/179 (1 yr) AC Voltage VER /5502
  1.018  CALL         Sub Fluke 177/179 (1 yr) DC Voltage VER /5502
  1.019  JMPL         OHMS

  1.020  LABEL        TEMPERATURE
  1.021  CALL         Sub Fluke 179 (1 yr) Temperature VER /5502
  1.022  JMPL         END

  1.023  LABEL        OHMS
  1.024  CALL         Sub Fluke 175/177/179 (1 yr) Resistance VER /5502
  1.025  CALL         Sub Fluke 175/177/179 (1 yr) Capacitance VER /5502
  1.026  CALL         Sub Fluke 175/177/179 (1 yr) Continuity VER /5502
  1.027  CALL         Sub Fluke 175/177/179 (1 yr) Diode Test VER /5502
  1.028  CALL         Sub Fluke 175/177/179 (1 yr) AC Milliamps VER /5502
  1.029  JMPL         DC_MILLIAMPS

  1.030  LABEL        AC_AMPS
  1.031  CALL         Sub Fluke 175/177/179 (1 yr) AC Amps VER /5502
  1.032  JMPL         DC_AMPS

  1.033  LABEL        DC_MILLIAMPS
  1.034  CALL         Sub Fluke 175/177/179 (1 yr) DC Milliamps VER /5502
  1.035  JMPL         AC_AMPS

  1.036  LABEL        DC_AMPS
  1.037  CALL         Sub Fluke 175/177/179 (1 yr) DC Amps VER /5502

  1.038  DISP         Remove all connections.
  1.039  JMPL         TEMPERATURE

  1.040  LABEL        END
  1.041  DISP         Rotate the DUT function switch to OFF.
  1.042  END
