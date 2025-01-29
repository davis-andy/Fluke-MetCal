Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - Current Milliamps
INSTRUMENT:            Sub 179 Handheld DMM Validation - Current Amps
DATE:                  2023-07-20 14:47:00
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       11
NUMBER OF LINES:       132
CONFIGURATION:         Fluke 5502E
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# Choose which sub procedure to jump to
  1.001  JMPL         Milliamps                  PSUBI("Milliamps")
  1.002  JMPL         Amps                       PSUBI("Amps")
  1.003  DISP         No Sub Procedure Found
  1.004  END


  1.005  LABEL        Milliamps
# The sub procedure for the Current tests
  1.006  DISP         Turn the rotary switch to mA AC

# display connection picture
  1.007  PIC          5520_17x_lo_amps

# Setpoints and Measurements for AC mA
  1.008  RSLT         =
  1.009  HEAD         {AC MILLIAMPS}
  1.010  HEAD         -2 {60 mA Range}
  1.011  5502E        +Current = 3.00 mA; @Frequency = 45 Hz; CurrentTerminal = Aux
  1.012  TARGET       -p
  1.013  MEMI         Enter UUT reading in mA
  1.014  MEMCX        mA             1.5% 0.03U    45Hz


  2.001  5502E        +Current = 50.00 mA; @Frequency = 1 kHz; CurrentTerminal = Aux
  2.002  TARGET       -p
  2.003  MEMI         Enter UUT reading in mA
  2.004  MEMCX        mA             1.5% 0.03U    1kHz

  3.001  RSLT         =
  3.002  HEAD         -2 {400 mA Range}
  3.003  5502E        +Current = 400.0 mA; @Frequency = 1 kHz; CurrentTerminal = Aux
  3.004  TARGET       -p
  3.005  MEMI         Enter UUT reading in mA
  3.006  MEMCX        mA             1.5% 0.3U     1kHz

# Sub procedure end
  4.001  5502E        Standby

# Setpoints and Measurements for DC mA
  4.002  RSLT         =
  4.003  RSLT         =
  4.004  HEAD         {DC MILLIAMPS}
  4.005  DISP         Press the yellow button to select DC mA

  4.006  HEAD         -2 {60 mA Range}
  4.007  5502E        +Current = 3.00 mA; CurrentTerminal = Aux
  4.008  TARGET       -p
  4.009  MEMI         Enter UUT reading in mA
  4.010  MEMCX        mA             1% 0.03U


  5.001  5502E        +Current = 50.00 mA; CurrentTerminal = Aux
  5.002  TARGET       -p
  5.003  MEMI         Enter UUT reading in mA
  5.004  MEMCX        mA             1% 0.03U

  6.001  RSLT         =
  6.002  HEAD         -2 {400 mA Range}
  6.003  5502E        +Current = -400.0 mA; CurrentTerminal = Aux
  6.004  TARGET       -p
  6.005  MEMI         Enter UUT reading in mA
  6.006  MEMCX        mA             1% 0.3U

# Sub procedure end
  7.001  5502E        Standby
  7.002  END



  7.003  LABEL        Amps
# Switch to Amps
  7.004  RSLT         =
  7.005  RSLT         =
  7.006  HEAD         {AC AMPS}
  7.007  DISP         Turn the rotary switch to A AC

# display connection picture
  7.008  PIC          5520_17x_hi_amps

# Setpoints and Measurements for AC mA
  7.009  HEAD         -2 {6 A Range}
  7.010  5502E        +Current = 4.000 A; @Frequency = 45 Hz; CurrentTerminal = 20A
  7.011  TARGET       -p
  7.012  MEMI         Enter UUT reading in A
  7.013  MEMCX  A     A              1.5% 0.003U   45Hz

  8.001  RSLT         =
  8.002  HEAD         -2 {10 A Range}
  8.003  5502E        +Current = 9.00 A; @Frequency = 1 kHz; CurrentTerminal = 20A
  8.004  TARGET       -p
  8.005  MEMI         Enter UUT reading in A
  8.006  MEMCX  A     A              1.5% 0.3U     1kHz

# Sub procedure end
  9.001  5502E        Standby

# Setpoints and Measurements for DC A
  9.002  RSLT         =
  9.003  RSLT         =
  9.004  HEAD         {DC AMPS}
  9.005  DISP         Press the yellow button to select DC A

  9.006  HEAD         -2 {6 A Range}
  9.007  5502E        +Current = 4.000 A; CurrentTerminal = 20A
  9.008  TARGET       -p
  9.009  MEMI         Enter UUT reading in A
  9.010  MEMCX        A              1% 0.03U

 10.001  RSLT         =
 10.002  HEAD         -2 {10 A Range}
 10.003  5502E        +Current = -9.00 A; CurrentTerminal = 20A
 10.004  TARGET       -p
 10.005  MEMI         Enter UUT reading in A
 10.006  MEMCX        A              1% 0.03U

# Sub procedure end
 11.001  5502E        Standby
 11.002  END
