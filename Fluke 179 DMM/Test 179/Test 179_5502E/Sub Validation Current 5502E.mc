JPL                                                         MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - Current AC Milliamps
INSTRUMENT:            Sub 179 Handheld DMM Validation - Current AC Amps
INSTRUMENT:            Sub 179 Handheld DMM Validation - Current DC Milliamps
INSTRUMENT:            Sub 179 Handheld DMM Validation - Current DC Amps
DATE:                  2023-07-20 21:37:42
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       11
NUMBER OF LINES:       141
CONFIGURATION:         Fluke 5502E
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# Choose which sub procedure to jump to
  1.001  JMPL         AC_Milliamps                  PSUBI("AC Milliamps")
  1.002  JMPL         AC_Amps                       PSUBI("AC Amps")
  1.003  JMPL         DC_Milliamps                  PSUBI("DC Milliamps")
  1.004  JMPL         DC_Amps                       PSUBI("DC Amps")
  1.005  DISP         No Sub Procedure Found
  1.006  END


#### AC MILLIAMPS TEST ####
  1.007  LABEL        AC_Milliamps
  1.008  DISP         Turn the rotary switch to mA AC

# display connection picture
  1.009  PIC          5520_17x_lo_amps

# Setpoints and Measurements for AC mA
  1.010  RSLT         =
  1.011  HEAD         {AC MILLIAMPS}
  1.012  RSLT         =
  1.013  HEAD         -2 {60 mA Range}
  1.014  TARGET       -p
  1.015  5502E        +Current = 3.00 mA; @Frequency = 45 Hz; CurrentTerminal = Aux
  1.016  MEMI         Enter UUT reading in mA AC
  1.017  MEMCX        mA             1.5% 0.03U    45Hz

  2.001  5502E        +Current = 50.00 mA; @Frequency = 1 kHz; CurrentTerminal = Aux
  2.002  MEMI         Enter UUT reading in mA AC
  2.003  MEMCX        mA             1.5% 0.03U    1kHz

  3.001  RSLT         =
  3.002  HEAD         -2 {400 mA Range}
  3.003  TARGET       -p
  3.004  5502E        +Current = 400.0 mA; @Frequency = 1 kHz; CurrentTerminal = Aux
  3.005  MEMI         Enter UUT reading in mA AC
  3.006  MEMCX        mA             1.5% 0.3U     1kHz

# Sub procedure end
  4.001  5502E        Standby
  4.002  END


#### DC MILLIAMPS TEST ####
  4.003  LABEL        DC_Milliamps
# Setpoints and Measurements for DC mA
  4.004  RSLT         =
  4.005  HEAD         {DC MILLIAMPS}
  4.006  DISP         Press the yellow button to select mA DC

  4.007  RSLT         =
  4.008  HEAD         -2 {60 mA Range}
  4.009  TARGET       -p
  4.010  5502E        +Current = 3.00 mA; CurrentTerminal = Aux
  4.011  MEMI         Enter UUT reading in mA DC
  4.012  MEMCX        mA             1% 0.03U

  5.001  5502E        +Current = 50.00 mA; CurrentTerminal = Aux
  5.002  MEMI         Enter UUT reading in mA DC
  5.003  MEMCX        mA             1% 0.03U

  6.001  RSLT         =
  6.002  HEAD         -2 {400 mA Range}
  6.003  TARGET       -p
  6.004  5502E        +Current = -400.0 mA; CurrentTerminal = Aux
  6.005  MEMI         Enter UUT reading in mA DC
  6.006  MEMCX        mA             1% 0.3U

# Sub procedure end
  7.001  5502E        Standby
  7.002  END


#### AC AMPS TEST ####
  7.003  LABEL        AC_Amps
# Switch to Amps
  7.004  RSLT         =
  7.005  HEAD         {AC AMPS}
  7.006  DISP         Turn the rotary switch to A AC

# display connection picture
  7.007  PIC          5520_17x_hi_amps

# Setpoints and Measurements for AC A
  7.008  RSLT         =
  7.009  HEAD         -2 {6 A Range}
  7.010  TARGET       -p
  7.011  5502E        +Current = 4.000 A; @Frequency = 45 Hz; CurrentTerminal = 20A
  7.012  MEMI         Enter UUT reading in A AC
  7.013  MEMCX  A     A              1.5% 0.003U   45Hz

  8.001  RSLT         =
  8.002  HEAD         -2 {10 A Range}
  8.003  TARGET       -p
  8.004  5502E        +Current = 9.00 A; @Frequency = 1 kHz; CurrentTerminal = 20A
  8.005  MEMI         Enter UUT reading in A AC
  8.006  MEMCX  A     A              1.5% 0.3U     1kHz

# Sub procedure end
  9.001  5502E        Standby
  9.002  END


#### DC AMPS TEST ####
  9.003  LABEL        DC_Amps
# Setpoints and Measurements for DC A
  9.004  RSLT         =
  9.005  HEAD         {DC AMPS}
  9.006  DISP         Press the yellow button to select A DC

  9.007  RSLT         =
  9.008  HEAD         -2 {6 A Range}
  9.009  TARGET       -p
  9.010  5502E        +Current = 4.000 A; CurrentTerminal = 20A
  9.011  MEMI         Enter UUT reading in A DC
  9.012  MEMCX        A              1% 0.003U

 10.001  RSLT         =
 10.002  HEAD         -2 {10 A Range}
 10.003  TARGET       -p
 10.004  5502E        +Current = -9.00 A; CurrentTerminal = 20A
 10.005  MEMI         Enter UUT reading in A DC
 10.006  MEMCX        A              1% 0.03U

# Sub procedure end
 11.001  5502E        Standby
 11.002  END
