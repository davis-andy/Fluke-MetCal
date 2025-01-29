JPL                                                         MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - DC Volts
DATE:                  2023-07-20 20:51:42
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       11
NUMBER OF LINES:       98
CONFIGURATION:         Fluke 5502E
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
  1.007  5502E        +Voltage = 5.000 V
  1.008  MEMI         Enter UUT reading in V DC
  1.009  MEMCX        V              0.09% 0.002U

  2.001  RSLT         =
  2.002  HEAD         -2 {60 V Range}
  2.003  TARGET       -p
  2.004  5502E        +Voltage = 50.00 V
  2.005  MEMI         Enter UUT reading in V DC
  2.006  MEMCX        V              0.09% 0.02U

  3.001  RSLT         =
  3.002  HEAD         -2 {600 V Range}
  3.003  TARGET       -p
  3.004  5502E        +Voltage = 300.0 V
  3.005  MEMI         Enter UUT reading in V DC
  3.006  MEMCX        V              0.09% 0.2U

  4.001  RSLT         =
  4.002  HEAD         -2 {1000 V Range}
  4.003  TARGET       -p
  4.004  5502E        +Voltage = 1000 V
  4.005  MEMI         Enter UUT reading in V DC
  4.006  MEMCX        V              0.15% 2U

  5.001  5502E        +Voltage = -1000 V
  5.002  MEMI         Enter UUT reading in V DC
  5.003  MEMCX        V              0.15% 2U

# back to STANDBY once tests are complete
  6.001  5502E        Standby


# The sub procedure for the DC Volts Freq test
  6.002  RSLT         =
  6.003  HEAD         {DC VOLTS FREQUENCY}
  6.004  DISP         Press the yellow button to select Hz

# Setpoints and Measurements for AC Volts Freq
  6.005  TARGET       -p
  6.006  5502E        +Frequency = 45.00 Hz; @Voltage = 3 V
  6.007  MEMI         Enter UUT reading in Hz
  6.008  MEMCX        Hz             0.1% 0.01U    3V

  7.001  5502E        +Frequency = 50.00 kHz; @Voltage = 30 V
  7.002  MEMI         Enter UUT reading in kHz
  7.003  MEMCX        kHz            0.1% 0.01U    30V

# back to STANDBY once tests are complete
  8.001  5502E        Standby


# Change to mV
  8.002  RSLT         =
  8.003  HEAD         {DC MILLIVOLTS}
  8.004  DISP         Turn the rotary switch to mV DC
  8.005  TARGET       -p

# designate tolerance
  8.006  TOL          0.09% 0.2U

# Setpoints and Measurements for DC milliVolts
  8.007  5502E        +Voltage = 30.0 mV
  8.008  MEMI         Enter UUT reading in mV DC
  8.009  MEMCX        mV             TOL

  9.001  5502E        +Voltage = -300.0 mV
  9.002  MEMI         Enter UUT reading in mV DC
  9.003  MEMCX        mV             TOL

 10.001  5502E        +Voltage = 600.0 mV
 10.002  MEMI         Enter UUT reading in mV DC
 10.003  MEMCX        mV             TOL

# Sub procedure end
 11.001  5502E        Standby
 11.002  END
