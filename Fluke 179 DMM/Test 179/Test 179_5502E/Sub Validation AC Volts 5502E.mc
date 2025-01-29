JPL                                                         MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - AC Volts
DATE:                  2023-07-20 20:31:40
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       20
NUMBER OF LINES:       137
CONFIGURATION:         Fluke 5502E
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# The sub procedure for the AC Volts test
  1.001  RSLT         =
  1.002  HEAD         {AC VOLTS}
  1.003  DISP         Turn the rotary switch to V AC

# display connection picture
  1.004  PIC          5520_17x_2w

# Setpoints and Measurements for AC Volts
  1.005  RSLT         =
  1.006  HEAD         -2 {600 mV Range}
  1.007  TARGET       -p
  1.008  5502E        +Voltage = 300.0 mV; @Frequency = 45 Hz
  1.009  MEMI         Enter UUT reading in mV AC
  1.010  MEMCX        mV             1% 0.3U       45Hz

  2.001  5502E        +Voltage = 500.0 mV; @Frequency = 500 Hz
  2.002  MEMI         Enter UUT reading in mV AC
  2.003  MEMCX        mV             1% 0.3U       500Hz

  3.001  5502E        +Voltage = 500.0 mV; @Frequency = 1 kHz
  3.002  MEMI         Enter UUT reading in mV AC
  3.003  MEMCX        mV             2% 0.3U       1kHz

  4.001  RSLT         =
  4.002  HEAD         -2 {6 V Range}
  4.003  TARGET       -p
  4.004  5502E        +Voltage = 5.000 V; @Frequency = 45 Hz
  4.005  MEMI         Enter UUT reading in V AC
  4.006  MEMCX        V              1% 0.003U     45Hz

  5.001  5502E        +Voltage = 5.000 V; @Frequency = 500 Hz
  5.002  MEMI         Enter UUT reading in V AC
  5.003  MEMCX        V              1% 0.003U     500Hz

  6.001  5502E        +Voltage = 5.000 V; @Frequency = 1 kHz
  6.002  MEMI         Enter UUT reading in V AC
  6.003  MEMCX        V              2% 0.003U     1kHz

  7.001  RSLT         =
  7.002  HEAD         -2 {60 V Range}
  7.003  TARGET       -p
  7.004  5502E        +Voltage = 50.00 V; @Frequency = 45 Hz
  7.005  MEMI         Enter UUT reading in V AC
  7.006  MEMCX        V              1% 0.03U      45Hz

  8.001  5502E        +Voltage = 50.00 V; @Frequency = 500 Hz
  8.002  MEMI         Enter UUT reading in V AC
  8.003  MEMCX        V              1% 0.03U      500Hz

  9.001  5502E        +Voltage = 50.00 V; @Frequency = 1 kHz
  9.002  MEMI         Enter UUT reading in V AC
  9.003  MEMCX        V              2% 0.03U      1kHz

 10.001  RSLT         =
 10.002  HEAD         -2 {600 V Range}
 10.003  TARGET       -p
 10.004  5502E        +Voltage = 300.0 V; @Frequency = 45 Hz
 10.005  MEMI         Enter UUT reading in V AC
 10.006  MEMCX        V              1% 0.3U       45Hz

 11.001  5502E        +Voltage = 500.0 V; @Frequency = 500 Hz
 11.002  MEMI         Enter UUT reading in V AC
 11.003  MEMCX        V              1% 0.3U       500Hz

 12.001  5502E        +Voltage = 500.0 V; @Frequency = 1 kHz
 12.002  MEMI         Enter UUT reading in V AC
 12.003  MEMCX        V              2% 0.3U       1kHz

 13.001  RSLT         =
 13.002  HEAD         -2 {1000 V Range}
 13.003  TARGET       -p
 13.004  5502E        +Voltage = 1000 V; @Frequency = 45 Hz
 13.005  MEMI         Enter UUT reading in V AC
 13.006  MEMCX        V              1% 3U         45Hz

 14.001  5502E        +Voltage = 1000 V; @Frequency = 500 Hz
 14.002  MEMI         Enter UUT reading in V AC
 14.003  MEMCX        V              1% 3U         500Hz

 15.001  5502E        +Voltage = 1000 V; @Frequency = 1 kHz
 15.002  MEMI         Enter UUT reading in V AC
 15.003  MEMCX        V              2% 3U         1kHz

# back to STANDBY once tests are complete
 16.001  5502E        Standby


# The sub procedure for the AC Volts Freq test
 16.002  RSLT         =
 16.003  HEAD         {AC VOLTS FREQUENCY}
 16.004  DISP         Press the yellow button to select Hz

# Setpoints and Measurements for AC Volts Freq
 16.005  RSLT         =
 16.006  HEAD         -2 {99.99 Hz Range}
 16.007  TARGET       -p
 16.008  5502E        +Frequency = 45.00 Hz; @Voltage = 1 V
 16.009  MEMI         Enter UUT reading in Hz
 16.010  MEMCX        Hz             0.1% 0.01U    1V

 17.001  RSLT         =
 17.002  HEAD         -2 {999.9 Hz Range}
 17.003  TARGET       -p
 17.004  5502E        +Frequency = 900.0 Hz; @Voltage = 1 V
 17.005  MEMI         Enter UUT reading in Hz
 17.006  MEMCX        Hz             0.1% 0.1U     1V

 18.001  RSLT         =
 18.002  HEAD         -2 {9.999 kHz Range}
 18.003  TARGET       -p
 18.004  5502E        +Frequency = 9.000 kHz; @Voltage = 1 V
 18.005  MEMI         Enter UUT reading in kHz
 18.006  MEMCX        kHz            0.1% 0.001U   1V

 19.001  RSLT         =
 19.002  HEAD         -2 {99.99 kHz Range}
 19.003  TARGET       -p
 19.004  5502E        +Frequency = 50.00 kHz; @Voltage = 5 V
 19.005  MEMI         Enter UUT reading in kHz
 19.006  MEMCX        kHz            0.1% 0.01U    5V

# Sub procedure end
 20.001  5502E        Standby
 20.002  END
