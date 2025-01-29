Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - DC Volts
DATE:                  2023-07-20 14:42:56
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       11
NUMBER OF LINES:       104
CONFIGURATION:         Fluke 5502E
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# The sub procedure for the DC Volts test
  1.001  RSLT         =
  1.002  HEAD         {DC VOLTS}
  1.003  DISP         Turn the rotary switch to V DC

# Setpoints and Measurements for DC Volts
  1.004  HEAD         -2 {6 V Range}
  1.005  5502E        +Voltage = 5.000 V
  1.006  TARGET       -p
  1.007  MEMI         Enter UUT reading in V DC
  1.008  MEMCX        V              0.09% 0.002U

  2.001  RSLT         =
  2.002  HEAD         -2 {60 V Range}
  2.003  5502E        +Voltage = 50.00 V
  2.004  TARGET       -p
  2.005  MEMI         Enter UUT reading in V DC
  2.006  MEMCX        V              0.09% 0.02U

  3.001  RSLT         =
  3.002  HEAD         -2 {600 V Range}
  3.003  5502E        +Voltage = 300.0 V
  3.004  TARGET       -p
  3.005  MEMI         Enter UUT reading in V DC
  3.006  MEMCX        V              0.09% 0.2U

  4.001  RSLT         =
  4.002  HEAD         -2 {1000 V Range}
  4.003  5502E        +Voltage = 1000 V
  4.004  TARGET       -p
  4.005  MEMI         Enter UUT reading in V DC
  4.006  MEMCX        V              0.09% 2U


  5.001  5502E        +Voltage = -1000 V
  5.002  TARGET       -p
  5.003  MEMI         Enter UUT reading in V DC
  5.004  MEMCX        V              0.09% 2U

# back to STANDBY once tests are complete
  6.001  5502E        Standby


# The sub procedure for the DC Volts Freq test
  6.002  RSLT         =
  6.003  RSLT         =
  6.004  HEAD         {DC VOLTS FREQUENCY}
  6.005  DISP         Press the yellow button to select Hz

# Setpoints and Measurements for AC Volts Freq
  6.006  5502E        +Frequency = 45.00 Hz; @Voltage = 3 V
  6.007  TARGET       -p
  6.008  MEMI         Enter UUT reading in Hz
  6.009  MEMCX        Hz             0.1% 0.01U    3V

  7.001  5502E        +Frequency = 50.00 kHz; @Voltage = 30 V
  7.002  TARGET       -p
  7.003  MEMI         Enter UUT reading in kHz
  7.004  MEMCX        kHz            0.1% 0.01U    30V

# back to STANDBY once tests are complete
  8.001  5502E        Standby


# Change to mV
  8.002  RSLT         =
  8.003  RSLT         =
  8.004  HEAD         {DC MILLIVOLTS}
  8.005  DISP         Turn the rotary switch to mV DC

# designate tolerance
  8.006  TOL          0.09% 0.2U

# Setpoints and Measurements for DC milliVolts
  8.007  5502E        +Voltage = 30.0 mV
  8.008  TARGET       -p
  8.009  MEMI         Enter UUT reading in mV DC
  8.010  MEMCX        mV             TOL

  9.001  5502E        +Voltage = -300.0 mV
  9.002  TARGET       -p
  9.003  MEMI         Enter UUT reading in mV DC
  9.004  MEMCX        mV             TOL

 10.001  5502E        +Voltage = 600.0 mV
 10.002  TARGET       -p
 10.003  MEMI         Enter UUT reading in mV DC
 10.004  MEMCX        mV             TOL

# Sub procedure end
 11.001  5502E        Standby
 11.002  END
