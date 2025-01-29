Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - DC Volts
DATE:                  2023-07-21 09:39:27
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       11
NUMBER OF LINES:       68
CONFIGURATION:         Fluke 5500A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# The sub procedure for the DC Volts test
  1.001  RSLT         =
  1.002  HEAD         {DC VOLTS}
  1.003  DISP         Turn the rotary switch to V DC

# Setpoints and Measurements for DC Volts
  1.004  RSLT         =
  1.005  HEAD         -2 {6 V Range}
  1.006  TARGET       -p
  1.007  5500         5.000V         0.09% 0.002U                          2W

  2.001  RSLT         =
  2.002  HEAD         -2 {60 V Range}
  2.003  TARGET       -p
  2.004  5500         50.00V         0.09% 0.02U                           2W

  3.001  RSLT         =
  3.002  HEAD         -2 {600 V Range}
  3.003  TARGET       -p
  3.004  5500         300.0V         0.09% 0.2U                            2W

  4.001  RSLT         =
  4.002  HEAD         -2 {1000 V Range}
  4.003  TARGET       -p
  4.004  5500         1000V          0.15% 2U                              2W
  5.001  5500         -1000V         0.15% 2U                              2W


# The sub procedure for the DC Volts Freq test
  6.001  RSLT         =
  6.002  HEAD         {DC VOLTS FREQUENCY}
  6.003  DISP         Press the yellow button to select Hz

# Setpoints and Measurements for AC Volts Freq
  6.004  TARGET       -p
  6.005  5500         45.00H         0.1% 0.01U    3V             SI       2W
  7.001  5500         50.00kH        0.1% 0.01U    30V            SI       2W


# Change to mV
  8.001  RSLT         =
  8.002  HEAD         {DC MILLIVOLTS}
  8.003  DISP         Turn the rotary switch to mV DC
  8.004  TARGET       -p

# designate tolerance
  8.005  TOL          0.09% 0.2U

# Setpoints and Measurements for DC milliVolts
  8.006  5500         30.0mV         TOL                                   2W
  9.001  5500         -300.0mV       TOL                                   2W
 10.001  5500         600.0mV        TOL                                   2W

# Sub procedure end
 11.001  5500         *                                                 S
 11.002  END
