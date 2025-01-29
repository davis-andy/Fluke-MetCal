Fluke                                                       MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub Fluke 175/177/179 (1 yr) AC Milliamps VER /5502
INSTRUMENT:            Sub Fluke 175/177/179 (1 yr) DC Milliamps VER /5502
INSTRUMENT:            Sub Fluke 175/177/179 (1 yr) AC Amps VER /5502
INSTRUMENT:            Sub Fluke 175/177/179 (1 yr) DC Amps VER /5502
DATE:                  2018-01-22 09:31:32
AUTHOR:                Fluke
REVISION:              $Revision: 22227 $
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       15
NUMBER OF LINES:       175
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

  1.001  JMPL         AC_MILLIAMPS                 PSUB("AC Milliamps")
  1.002  JMPL         DC_MILLIAMPS                 PSUB("DC Milliamps")
  1.003  JMPL         AC_AMPS                      PSUB("AC Amps")
  1.004  JMPL         DC_AMPS                      PSUB("DC Amps")
  1.005  DISP         Subprocedure not found!
  1.006  END

  1.007  EVAL   Increment step number

# =====  Sub Fluke 175/177/179 (1 yr) AC Milliamps VER /5502  ===============

  2.001  LABEL        AC_MILLIAMPS
  2.002  RSLT         =
  2.003  HEAD         {AC MILLIAMPS}
  2.004  RSLT         =
  2.005  HEAD         -2{60 mA Range}
  2.006  TARGET       -p
  2.007  DISP         Rotate the DUT function switch to mA AC.
  2.008  PIC          5520_17x_lo_amps.jpg
  2.009  5502E        CurrentTerminal = Aux
  2.009  5502E        +Current = 3.00 mA; Frequency = 45 Hz
  2.010  TARGET       -m
  2.011  MEMI         Enter DUT reading in milliamps AC:
  2.012  MEMCX  60    3.00mA         1.5% 0.03U    45Hz

  3.001  5502E        CurrentTerminal = Aux
  3.001  5502E        +Current = 50.00 mA; Frequency = 1 kHz
  3.002  TARGET       -m
  3.003  MEMI         Enter DUT reading in milliamps AC:
  3.004  MEMCX  60    50.00mA        1.5% 0.03U    1kHz

  4.001  RSLT         =
  4.002  HEAD         -2{400 mA Range}
  4.003  TARGET       -p
  4.004  5502E        CurrentTerminal = Aux
  4.004  5502E        +Current = 400.0 mA; Frequency = 1 kHz
  4.005  TARGET       -m
  4.006  MEMI         Enter DUT reading in milliamps AC:
  4.007  MEMCX  400   400.0mA        1.5% 0.3U     1kHz

  5.001  HEAD         -2
  5.002  HEAD
  5.003  5502E        Standby
  5.004  END

  5.005  EVAL   Increment step number

# =====  Sub Fluke 175/177/179 (1 yr) DC Milliamps VER /5502  ===============

  6.001  LABEL        DC_MILLIAMPS
  6.002  RSLT         =
  6.003  HEAD         {DC MILLIAMPS}
  6.004  RSLT         =
  6.005  HEAD         -2{60 mA Range}
  6.006  TARGET       -p
  6.007  DISP         Press the yellow button to select mA DC.
  6.008  5502E        +Current = +3.00 mA; CurrentTerminal = Aux
  6.009  TARGET       -m
  6.010  MEMI         Enter DUT reading in milliamps DC:
  6.011  MEMCX  60    +3.00mA        1% 0.03U

  7.001  5502E        +Current = +50.00 mA; CurrentTerminal = Aux
  7.002  TARGET       -m
  7.003  MEMI         Enter DUT reading in milliamps DC:
  7.004  MEMCX  60    +50.00mA       1% 0.03U

  8.001  RSLT         =
  8.002  HEAD         -2{400 mA Range}
  8.003  TARGET       -p
  8.004  5502E        +Current = -400.0 mA; CurrentTerminal = Aux
  8.005  TARGET       -m
  8.006  MEMI         Enter DUT reading in milliamps DC:
  8.007  MEMCX  400   -400.0mA       1% 0.3U

  9.001  HEAD         -2
  9.002  HEAD
  9.003  5502E        Standby
  9.004  END

  9.005  EVAL   Increment step number

# =====  Sub Fluke 175/177/179 (1 yr) AC Amps VER /5502  ====================

 10.001  LABEL        AC_AMPS
 10.002  RSLT         =
 10.003  HEAD         {AC AMPS}
 10.004  RSLT         =
 10.005  HEAD         -2{6 A Range}
 10.006  TARGET       -p
 10.007  DISP         Rotate the DUT function switch to A AC.
 10.008  PIC          5520_17x_hi_amps.jpg
 10.009  5502E        CurrentTerminal = 20A
 10.009  5502E        +Current = 4.000 A; Frequency = 45 Hz
 10.010  TARGET       -m
 10.011  MEMI         Enter DUT reading in amps AC:
 10.012  MEMCX  6     4.000A         1.5% 0.003U   45Hz

 11.001  RSLT         =
 11.002  HEAD         -2{10A Range}
 11.003  TARGET
 11.004  5502E        CurrentTerminal = 20A
 11.004  5502E        +Current = 9.00 A; Frequency = 1 kHz
 11.005  TARGET       -m
 11.006  MEMI         Enter DUT reading in amps AC:
 11.007  MEMCX  10    9.00A          1.5% 0.03U    1kHz

 12.001  HEAD         -2
 12.002  HEAD
 12.003  5502E        Standby
 12.004  END

 12.005  EVAL   Increment step number

# =====  Sub Fluke 175/177/179 (1 yr) DC Amps VER /5502  ====================

 13.001  LABEL        DC_AMPS
 13.002  RSLT         =
 13.003  HEAD         {DC AMPS}
 13.004  RSLT         =
 13.005  HEAD         -2{6 A Range}
 13.006  TARGET       -p
 13.007  DISP         Press the yellow button to select A DC Function.
 13.008  5502E        +Current = +4.000 A; CurrentTerminal = 20A
 13.009  TARGET       -m
 13.010  MEMI         Enter DUT reading in amps DC:
 13.011  MEMCX  6     +4.000A        1% 0.003U

 14.001  RSLT         =
 14.002  HEAD         -2{10 A Range}
 14.003  TARGET
 14.004  5502E        +Current = -9.00 A; CurrentTerminal = 20A
 14.005  TARGET       -m
 14.006  MEMI         Enter DUT reading in amps DC:
 14.007  MEMCX  10    -9.00A         1% 0.03U

 15.001  HEAD         -2
 15.002  HEAD
 15.003  5502E        Standby
 15.004  END
