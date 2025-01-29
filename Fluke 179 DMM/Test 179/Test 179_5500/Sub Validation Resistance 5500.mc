Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - Resistance
DATE:                  2023-07-21 09:39:34
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       7
NUMBER OF LINES:       54
CONFIGURATION:         Fluke 5500A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# The sub procedure for the Resistance test
  1.001  RSLT         =
  1.002  HEAD         {RESISTANCE}
  1.003  DISP         Turn the rotary switch to Ω

# display connection picture
  1.004  PIC          5500_17x_cw

# Setpoints and Measurements
  1.005  RSLT         =
  1.006  HEAD         -2 {600 Ω Range}
  1.007  TARGET       -p
  1.008  5500         500.0Z         0.9% 0.2U                             CW

  2.001  RSLT         =
  2.002  HEAD         -2 {6 kΩ Range}
  2.003  TARGET       -p
  2.004  5500         5.000kZ        0.9% 0.001U                           2W

  3.001  RSLT         =
  3.002  HEAD         -2 {60 kΩ Range}
  3.003  TARGET       -p
  3.004  5500         50.00kZ        0.9% 0.01U                            2W

  4.001  RSLT         =
  4.002  HEAD         -2 {600 kΩ Range}
  4.003  TARGET       -p
  4.004  5500         500.0kZ        0.9% 0.1U                             2W

  5.001  RSLT         =
  5.002  HEAD         -2 {6 MΩ Range}
  5.003  TARGET       -p
  5.004  5500         5.000MZ        0.9% 0.001U                           2W

  6.001  RSLT         =
  6.002  HEAD         -2 {50 MΩ Range}
  6.003  TARGET       -p
  6.004  5500         19.00MZ        1.5% 0.03U                            2W

# Sub procedure end
  7.001  5500         *                                                 S
  7.002  END
