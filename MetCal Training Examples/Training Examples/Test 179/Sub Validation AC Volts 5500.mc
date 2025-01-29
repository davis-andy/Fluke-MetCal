Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - AC Volts /5500
DATE:                  2023-07-20 15:43:41
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       20
NUMBER OF LINES:       84
CONFIGURATION:         Fluke 5500A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# The sub procedure for the AC Volts test
  1.001  RSLT         =
  1.002  HEAD         {AC VOLTS}
  1.003  DISP         Turn the rotary switch to V AC

# display connection picture
  1.004  PIC          5520_17x_2w

# Setpoints and Measurements for AC Volts
  1.005  HEAD         -2 {600 mV Range}
  1.006  TARGET       -p
  1.007  5500         300.0mV        1% 0.3U       45H            SI       2W
  2.001  5500         500.0mV        1% 0.3U       500H           SI       2W
  3.001  5500         500.0mV        2% 0.3U       1kH            SI       2W

  4.001  RSLT         =
  4.002  HEAD         -2 {6 V Range}
  4.003  TARGET       -p
  4.004  5500         5.000V         1% 0.003U     45H            SI       2W
  5.001  5500         5.000V         1% 0.003U     500H           SI       2W
  6.001  5500         5.000V         2% 0.003U     1kH            SI       2W

  7.001  RSLT         =
  7.002  HEAD         -2 {60 V Range}
  7.003  TARGET       -p
  7.004  5500         50.00V         1% 0.03U      45H            SI       2W
  8.001  5500         50.00V         1% 0.03U      500H           SI       2W
  9.001  5500         50.00V         2% 0.03U      1kH            SI       2W

 10.001  RSLT         =
 10.002  HEAD         -2 {600 V Range}
 10.003  TARGET       -p
 10.004  5500         300.0V         1% 0.3U       45H            SI       2W
 11.001  5500         500.0V         1% 0.3U       500H           SI       2W
 12.001  5500         500.0V         2% 0.3U       1kH            SI       2W

 13.001  RSLT         =
 13.002  HEAD         -2 {1000 V Range}
 13.003  TARGET       -p
 13.004  5500         1000V          1% 3U         45H            SI       2W
 14.001  5500         1000V          1% 3U         500H           SI       2W
 15.001  5500         1000V          2% 3U         1kH            SI       2W


# The sub procedure for the AC Volts Freq test
 16.001  RSLT         =
 16.002  RSLT         =
 16.003  HEAD         {AC VOLTS FREQUENCY}
 16.004  DISP         Press the yellow button to select Hz

# Setpoints and Measurements for AC Volts Freq
 16.005  HEAD         -2 {99.99 Hz Range}
 16.006  TARGET       -p
 16.007  5500         45.00H         0.1% 0.01U    1V             SI       2W

 17.001  RSLT         =
 17.002  HEAD         -2 {999.9 Hz Range}
 17.003  TARGET       -p
 17.004  5500         900.0H         0.1% 0.1U     1V             SI       2W

 18.001  RSLT         =
 18.002  HEAD         -2 {9.999 kHz Range}
 18.003  TARGET       -p
 18.004  5500         9.000kH        0.1% 0.001U   1V             SI       2W

 19.001  RSLT         =
 19.002  HEAD         -2 {99.99 kHz Range}
 19.003  TARGET       -p
 19.004  5500         50.00kH        0.1% 0.01U    5V             SI       2W

# Sub procedure end
 20.001  END
