Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - AC Volts /5502E
INSTRUMENT:            Sub 179 Handheld DMM Validation - AC Volts /5500
DATE:                  2023-07-20 15:46:45
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       39
NUMBER OF LINES:       236
CONFIGURATION:         Fluke 5502E
CONFIGURATION:         Fluke 5500A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# Choose which sub procedure to jump to
  1.001  JMPL         m_5502E                  PSUBI("5502E")
  1.002  JMPL         m_5500                   PSUBI("5500")
  1.003  DISP         No Sub Procedure Found
  1.004  END


#### 5502E SECTION ####
  1.005  LABEL        m_5502E
# The sub procedure for the AC Volts test
  1.006  RSLT         =
  1.007  HEAD         {AC VOLTS}
  1.008  DISP         Turn the rotary switch to V AC

# display connection picture
  1.009  PIC          5520_17x_2w

# Setpoints and Measurements for AC Volts
  1.010  HEAD         -2 {600 mV Range}
  1.011  5502E        +Voltage = 300.0 mV; @Frequency = 45 Hz
  1.012  TARGET       -p
  1.013  MEMI         Enter UUT reading in mV AC
  1.014  MEMCX        mV             1% 0.3U       45Hz

  2.001  5502E        +Voltage = 500.0 mV; @Frequency = 500 Hz
  2.002  TARGET       -p
  2.003  MEMI         Enter UUT reading in mV AC
  2.004  MEMCX        mV             1% 0.3U       500Hz

  3.001  5502E        +Voltage = 500.0 mV; @Frequency = 1 kHz
  3.002  TARGET       -p
  3.003  MEMI         Enter UUT reading in mV AC
  3.004  MEMCX        mV             2% 0.3U       1kHz

  4.001  RSLT         =
  4.002  HEAD         -2 {6 V Range}
  4.003  5502E        +Voltage = 5.000 V; @Frequency = 45 Hz
  4.004  TARGET       -p
  4.005  MEMI         Enter UUT reading in V AC
  4.006  MEMCX        V              1% 0.003U     45Hz

  5.001  5502E        +Voltage = 5.000 V; @Frequency = 500 Hz
  5.002  TARGET       -p
  5.003  MEMI         Enter UUT reading in V AC
  5.004  MEMCX        V              1% 0.003U     500Hz

  6.001  5502E        +Voltage = 5.000 V; @Frequency = 1 kHz
  6.002  TARGET       -p
  6.003  MEMI         Enter UUT reading in V AC
  6.004  MEMCX        V              2% 0.003U     1kHz

  7.001  RSLT         =
  7.002  HEAD         -2 {60 V Range}
  7.003  5502E        +Voltage = 50.00 V; @Frequency = 45 Hz
  7.004  TARGET       -p
  7.005  MEMI         Enter UUT reading in V AC
  7.006  MEMCX        V              1% 0.03U      45Hz

  8.001  5502E        +Voltage = 50.00 V; @Frequency = 500 Hz
  8.002  TARGET       -p
  8.003  MEMI         Enter UUT reading in V AC
  8.004  MEMCX        V              1% 0.03U      500Hz

  9.001  5502E        +Voltage = 50.00 V; @Frequency = 1 kHz
  9.002  TARGET       -p
  9.003  MEMI         Enter UUT reading in V AC
  9.004  MEMCX        V              2% 0.03U      1kHz

 10.001  RSLT         =
 10.002  HEAD         -2 {600 V Range}
 10.003  5502E        +Voltage = 300.0 V; @Frequency = 45 Hz
 10.004  TARGET       -p
 10.005  MEMI         Enter UUT reading in V AC
 10.006  MEMCX        V              1% 0.3U       45Hz

 11.001  5502E        +Voltage = 500.0 V; @Frequency = 500 Hz
 11.002  TARGET       -p
 11.003  MEMI         Enter UUT reading in V AC
 11.004  MEMCX        V              1% 0.3U       500Hz

 12.001  5502E        +Voltage = 500.0 V; @Frequency = 1 kHz
 12.002  TARGET       -p
 12.003  MEMI         Enter UUT reading in V AC
 12.004  MEMCX        V              2% 0.3U       1kHz

 13.001  RSLT         =
 13.002  HEAD         -2 {1000 V Range}
 13.003  5502E        +Voltage = 1000 V; @Frequency = 45 Hz
 13.004  TARGET       -p
 13.005  MEMI         Enter UUT reading in V AC
 13.006  MEMCX        V              1% 3U         45Hz

 14.001  5502E        +Voltage = 1000 V; @Frequency = 500 Hz
 14.002  TARGET       -p
 14.003  MEMI         Enter UUT reading in V AC
 14.004  MEMCX        V              1% 3U         500Hz

 15.001  5502E        +Voltage = 1000 V; @Frequency = 1 kHz
 15.002  TARGET       -p
 15.003  MEMI         Enter UUT reading in V AC
 15.004  MEMCX        V              2% 3U         1kHz

# back to STANDBY once tests are complete
 16.001  5502E        Standby


# The sub procedure for the AC Volts Freq test
 16.002  RSLT         =
 16.003  RSLT         =
 16.004  HEAD         {AC VOLTS FREQUENCY}
 16.005  DISP         Press the yellow button to select Hz

# Setpoints and Measurements for AC Volts Freq
 16.006  HEAD         -2 {99.99 Hz Range}
 16.007  5502E        +Frequency = 45.00 Hz; @Voltage = 1 V
 16.008  TARGET       -p
 16.009  MEMI         Enter UUT reading in Hz
 16.010  MEMCX        Hz             0.1% 0.01U    1V

 17.001  RSLT         =
 17.002  HEAD         -2 {999.9 Hz Range}
 17.003  5502E        +Frequency = 900.0 Hz; @Voltage = 1 V
 17.004  TARGET       -p
 17.005  MEMI         Enter UUT reading in Hz
 17.006  MEMCX        Hz             0.1% 0.1U     1V

 18.001  RSLT         =
 18.002  HEAD         -2 {9.999 kHz Range}
 18.003  5502E        +Frequency = 9.000 kHz; @Voltage = 1 V
 18.004  TARGET       -p
 18.005  MEMI         Enter UUT reading in kHz
 18.006  MEMCX        kHz            0.1% 0.001U   1V

 19.001  RSLT         =
 19.002  HEAD         -2 {99.99 kHz Range}
 19.003  5502E        +Frequency = 50.00 kHz; @Voltage = 5 V
 19.004  TARGET       -p
 19.005  MEMI         Enter UUT reading in kHz
 19.006  MEMCX        kHz            0.1% 0.01U    5V

# Sub procedure end
 20.001  5502E        Standby
 20.002  END





#### 5500 SECTION ####
 20.003  LABEL        m_5500
# The sub procedure for the AC Volts test
 20.004  RSLT         =
 20.005  HEAD         {AC VOLTS}
 20.006  DISP         Turn the rotary switch to V AC

# display connection picture
 20.007  PIC          5520_17x_2w

# Setpoints and Measurements for AC Volts
 20.008  HEAD         -2 {600 mV Range}
 20.009  TARGET       -p
 20.010  5500         300.0mV        1% 0.3U       45H            SI       2W
 21.001  5500         500.0mV        1% 0.3U       500H           SI       2W
 22.001  5500         500.0mV        2% 0.3U       1kH            SI       2W

 23.001  RSLT         =
 23.002  HEAD         -2 {6 V Range}
 23.003  TARGET       -p
 23.004  5500         5.000V         1% 0.003U     45H            SI       2W
 24.001  5500         5.000V         1% 0.003U     500H           SI       2W
 25.001  5500         5.000V         2% 0.003U     1kH            SI       2W

 26.001  RSLT         =
 26.002  HEAD         -2 {60 V Range}
 26.003  TARGET       -p
 26.004  5500         50.00V         1% 0.03U      45H            SI       2W
 27.001  5500         50.00V         1% 0.03U      500H           SI       2W
 28.001  5500         50.00V         2% 0.03U      1kH            SI       2W

 29.001  RSLT         =
 29.002  HEAD         -2 {600 V Range}
 29.003  TARGET       -p
 29.004  5500         300.0V         1% 0.3U       45H            SI       2W
 30.001  5500         500.0V         1% 0.3U       500H           SI       2W
 31.001  5500         500.0V         2% 0.3U       1kH            SI       2W

 32.001  RSLT         =
 32.002  HEAD         -2 {1000 V Range}
 32.003  TARGET       -p
 32.004  5500         1000V          1% 3U         45H            SI       2W
 33.001  5500         1000V          1% 3U         500H           SI       2W
 34.001  5500         1000V          2% 3U         1kH            SI       2W


# The sub procedure for the AC Volts Freq test
 35.001  RSLT         =
 35.002  RSLT         =
 35.003  HEAD         {AC VOLTS FREQUENCY}
 35.004  DISP         Press the yellow button to select Hz

# Setpoints and Measurements for AC Volts Freq
 35.005  HEAD         -2 {99.99 Hz Range}
 35.006  TARGET       -p
 35.007  5500         45.00H         0.1% 0.01U    1V             SI       2W

 36.001  RSLT         =
 36.002  HEAD         -2 {999.9 Hz Range}
 36.003  TARGET       -p
 36.004  5500         900.0H         0.1% 0.1U     1V             SI       2W

 37.001  RSLT         =
 37.002  HEAD         -2 {9.999 kHz Range}
 37.003  TARGET       -p
 37.004  5500         9.000kH        0.1% 0.001U   1V             SI       2W

 38.001  RSLT         =
 38.002  HEAD         -2 {99.99 kHz Range}
 38.003  TARGET       -p
 38.004  5500         50.00kH        0.1% 0.01U    5V             SI       2W

# Sub procedure end
 39.001  END
