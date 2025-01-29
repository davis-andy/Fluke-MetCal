Fluke                                                       MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub Fluke 177/179 (1 yr) DC Voltage VER /5502
DATE:                  2018-01-22 09:31:22
AUTHOR:                Fluke
REVISION:              $Revision: 22231 $
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       10
NUMBER OF LINES:       107
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
  1.002  HEAD         {DC VOLTAGE}
  1.003  RSLT         =
  1.004  HEAD         -2{6 V Range}
  1.005  TARGET       -p
  1.006  DISP         Rotate the DUT function switch to V DC.
  1.007  5502E        +Voltage = +5.000 V
  1.008  TARGET       -m
  1.009  MEMI         Enter DUT reading in volts DC:
  1.010  MEMCX  6     +5.000V        0.09% 0.002U

  2.001  RSLT         =
  2.002  HEAD         -2{600 V Range}
  2.003  TARGET       -p
  2.004  5502E        +Voltage = +300.0 V
  2.005  TARGET       -m
  2.006  MEMI         Enter DUT reading in volts DC:
  2.007  MEMCX  600   +300.0V        0.09% 0.2U

  3.001  RSLT         =
  3.002  HEAD         -2{1000V Range}
  3.003  TARGET       -p
  3.004  5502E        +Voltage = +1000 V
  3.005  TARGET       -m
  3.006  MEMI         Enter DUT reading in volts DC:
  3.007  MEMCX  1000  +1000V         0.15% 2U

  4.001  5502E        +Voltage = -1000 V
  4.002  TARGET       -m
  4.003  MEMI         Enter DUT reading in volts DC:
  4.004  MEMCX  1000  -1000V         0.15% 2U

  5.001  HEAD         -2
  5.002  5502E        Standby

  5.003  RSLT         =
  5.004  HEAD         {DC VOLTAGE FREQUENCY}
  5.005  TARGET       -p
  5.006  DISP         Press the yellow button to select Hz.
  5.007  5502E        +Frequency = 45.00 Hz; Voltage = 3 V
  5.008  TARGET       -m
  5.009  MEMI         Enter DUT reading in hertz:
  5.010  MEMCX  100   45.00Hz        0.1% 0.01U    3V

  6.001  5502E        +Frequency = 50.00 kHz; Voltage = 30 V
  6.002  TARGET       -m
  6.003  MEMI         Enter DUT reading in kilohertz:
  6.004  MEMCX  100   50.00kHz       0.1% 0.01U    30V

  7.001  5502E        Standby

  7.002  RSLT         =
  7.003  HEAD         {DC MILLIVOLTS}
  7.004  TARGET       -p
  7.005  DISP         Rotate the DUT function switch mV DC.
  7.006  5502E        +Voltage = +30.0 mV
  7.007  TARGET       -m
  7.008  MEMI         Enter DUT reading in millivolts DC:
  7.009  MEMCX  600   +30.0mV        0.09% 0.2U

  8.001  5502E        +Voltage = -300.0 mV
  8.002  TARGET       -m
  8.003  MEMI         Enter DUT reading in millivolts DC:
  8.004  MEMCX  600   -300.0mV       0.09% 0.2U

  9.001  5502E        +Voltage = +600.0 mV
  9.002  TARGET       -m
  9.003  MEMI         Enter DUT reading in millivolts DC:
  9.004  MEMCX  600   +600.0mV       0.09% 0.2U

 10.001  HEAD         -2
 10.002  HEAD
 10.003  5502E        Standby
 10.004  END
