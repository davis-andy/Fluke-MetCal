Fluke                                                       MET/CAL Procedure
=============================================================================
INSTRUMENT:            Fluke 179: (1 year) VER /5522A
DATE:                  2018-01-22 11:11:37
AUTHOR:                Fluke
REVISION:              $Revision: 22233 $
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       1
NUMBER OF LINES:       57
CONFIGURATION:         Fluke 5522A
=============================================================================
#
#  Procedure Author:
#        MSD, DAC, VY
#
#  This procedure contains the following tests whose Test Uncertainty Ratio
#  are less than 4:1.
#        CAPACITANCE
#          900 nF; TUR 3.9385
#            9 µF; TUR 3.9385
#           90 µF; TUR 2.5347
#          900 µF; TUR 2.5347
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
  1.002  5522A        Reset
  1.003  ENDIF

  1.004  CALL         Sub Fluke 179 (1 yr) VER /5502

  1.005  END
