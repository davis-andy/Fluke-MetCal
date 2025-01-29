Fluke                                                       MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub Fluke 179 (1 yr) Temperature VER /5502
DATE:                  2018-01-22 10:20:53
AUTHOR:                Fluke
REVISION:              $Revision: 22227 $
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       4
NUMBER OF LINES:       61
CONFIGURATION:         Fluke 5502E
=============================================================================
#
#  Procedure Author:
#        MSD, DAC, VY
#
#  Compatibility:
#        MET/CAL 8.1.4 or later
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

  1.001  RSLT         =
  1.002  HEAD         {TEMPERATURE}
  1.003  TARGET       -p
  1.004  DISP         Rotate the DUT function switch mV DC.
  1.004  DISP
  1.004  DISP         Press the yellow button to select Temperature.
  1.004  DISP
  1.004  DISP         If necessary, press the RANGE button to select °C
  1.005  PIC          5520_179_tc.jpg
  1.006  5502E        +Temperature = 0.0 degC; TC_Type = K
  1.007  WAIT         -t 180 Thermal emfs dissipating...
  1.008  TARGET       -m
  1.009  MEMI         Enter DUT reading in degrees Celsius:
  1.010  MEMCX  400   0.0degC        1% 1.0U

  2.001  5502E        +Temperature = -40.0 degC; TC_Type = K
  2.002  TARGET       -m
  2.003  MEMI         Enter DUT reading in degrees Celsius:
  2.004  MEMCX  400   -40.0degC      1% 1.0U

  3.001  5502E        +Temperature = 400.0 degC; TC_Type = K
  3.002  TARGET       -m
  3.003  MEMI         Enter DUT reading in degrees Celsius:
  3.004  MEMCX  400   400.0degC      1% 1.0U

  4.001  HEAD
  4.002  5502E        Standby
  4.003  END
