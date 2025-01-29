JPL                                                         MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub Fluke 175/177/179 (1 yr) AC Voltage VER /5502
INSTRUMENT:            Sub Fluke 175/177/179 (1 yr) Resistance VER /5502
INSTRUMENT:            Sub Fluke 175/177/179 (1 yr) Capacitance VER /5502
INSTRUMENT:            Sub Fluke 175/177/179 (1 yr) Continuity VER /5502
INSTRUMENT:            Sub Fluke 175/177/179 (1 yr) Diode Test VER /5502
DATE:                  2023-07-19 18:45:58
AUTHOR:                Fluke
REVISION:              $Revision: 22234 $
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       37
NUMBER OF LINES:       349
CONFIGURATION:         Fluke 5502E
=============================================================================
#
#  Procedure Author:
#        MSD, DAC, VY
#
#  This procedure contains the following tests whose Test Uncertainty Ratio
#  are less than 4:1.
#        CAPACITANCE
#          900 nF; TUR 3.9385
#            9 µF; TUR 3.9385
#           90 µF; TUR 2.5347
#          900 µF; TUR 2.5347
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

  1.001  JMPL         AC_VOLTAGE                   PSUB("AC Voltage")
  1.002  JMPL         RESISTANCE                   PSUB("Resistance")
  1.003  JMPL         CAPACITANCE                  PSUB("Capacitance")
  1.004  JMPL         CONTINUITY                   PSUB("Continuity")
  1.005  JMPL         DIODE_TEST                   PSUB("Diode Test")
  1.006  DISP         Subprocedure not found!
  1.007  END

  1.008  EVAL   Increment step number

# =====  Sub Fluke 175/177/179 (1 yr) ACV VER /5502  ========================

  2.001  LABEL        AC_VOLTAGE
  2.002  RSLT         =
  2.003  HEAD         {AC VOLTAGE}
  2.004  RSLT         =
  2.005  HEAD         -2{600 mV Range}
  2.006  TARGET       -p
  2.007  DISP         Rotate the DUT function switch to OFF then to V AC.
  2.008  PIC          5520_17x_2w.jpg
  2.009  5502E        +Voltage = 300.0 mV; Frequency = 45 Hz
  2.010  TARGET       -m
  2.011  MEMI         Enter DUT reading in millivolts AC:
  2.012  MEMCX  600   300.0mV        1% 0.3U       45Hz

  3.001  5502E        +Voltage = 300.0 mV; Frequency = 500 Hz
  3.002  TARGET       -m
  3.003  MEMI         Enter DUT reading in millivolts AC:
  3.004  MEMCX  600   300.0mV        1% 0.3U       500Hz

  4.001  5502E        +Voltage = 300.0 mV; Frequency = 1 kHz
  4.002  TARGET       -m
  4.003  MEMI         Enter DUT reading in millivolts AC:
  4.004  MEMCX  600   300.0mV        2% 0.3U       1kHz

  5.001  RSLT         =
  5.002  HEAD         -2{6 V Range}
  5.003  TARGET       -p
  5.004  5502E        +Voltage = 5.000 V; Frequency = 45 Hz
  5.005  TARGET       -m
  5.006  MEMI         Enter DUT reading in volts AC:
  5.007  MEMCX  6     5.000V         1% 0.003U     45Hz

  6.001  5502E        +Voltage = 5.000 V; Frequency = 500 Hz
  6.002  TARGET       -m
  6.003  MEMI         Enter DUT reading in volts AC:
  6.004  MEMCX  6     5.000V         1% 0.003U     500Hz

  7.001  5502E        +Voltage = 5.000 V; Frequency = 1 kHz
  7.002  TARGET       -m
  7.003  MEMI         Enter DUT reading in volts AC:
  7.004  MEMCX  6     5.000V         2% 0.003U     1kHz

  8.001  RSLT         =
  8.002  HEAD         -2{60 V Range}
  8.003  TARGET       -p
  8.004  5502E        +Voltage = 50.00 V; Frequency = 45 Hz
  8.005  TARGET       -m
  8.006  MEMI         Enter DUT reading in volts AC:
  8.007  MEMCX  60    50.00V         1% 0.03U      45Hz

  9.001  5502E        +Voltage = 50.00 V; Frequency = 500 Hz
  9.002  TARGET       -m
  9.003  MEMI         Enter DUT reading in volts AC:
  9.004  MEMCX  60    50.00V         1% 0.03U      500Hz

 10.001  5502E        +Voltage = 50.00 V; Frequency = 1 kHz
 10.002  TARGET       -m
 10.003  MEMI         Enter DUT reading in volts AC:
 10.004  MEMCX  60    50.00V         2% 0.03U      1kHz

 11.001  RSLT         =
 11.002  HEAD         -2{600 V Range}
 11.003  TARGET       -p
 11.004  5502E        +Voltage = 300.0 V; Frequency = 45 Hz
 11.005  TARGET       -m
 11.006  MEMI         Enter DUT reading in volts AC:
 11.007  MEMCX  600   300.0V         1% 0.3U       45Hz

 12.001  5502E        +Voltage = 500.0 V; Frequency = 500 Hz
 12.002  TARGET       -m
 12.003  MEMI         Enter DUT reading in volts AC:
 12.004  MEMCX  600   500.0V         1% 0.3U       500Hz

 13.001  5502E        +Voltage = 500.0 V; Frequency = 1 kHz
 13.002  TARGET       -m
 13.003  MEMI         Enter DUT reading in volts AC:
 13.004  MEMCX  600   500.0V         2% 0.3U       1kHz

 14.001  RSLT         =
 14.002  HEAD         -2{1000 V Range}
 14.003  TARGET       -p
 14.004  5502E        +Voltage = 1000 V; Frequency = 45 Hz
 14.005  TARGET       -m
 14.006  MEMI         Enter DUT reading in volts AC:
 14.007  MEMCX  1000  1000V          1% 3U         45Hz

 15.001  5502E        +Voltage = 1000 V; Frequency = 500 Hz
 15.002  TARGET       -m
 15.003  MEMI         Enter DUT reading in volts AC:
 15.004  MEMCX  1000  1000V          1% 3U         500Hz

 16.001  5502E        +Voltage = 1000 V; Frequency = 1 kHz
 16.002  TARGET       -m
 16.003  MEMI         Enter DUT reading in volts AC:
 16.004  MEMCX  1000  1000V          2% 3U         1kHz

 17.001  HEAD         -2
 17.002  5502E        Standby

 17.003  RSLT         =
 17.004  HEAD         {AC VOLTAGE FREQUENCY}
 17.005  RSLT         =
 17.006  HEAD         -2{99.99 Hz Range}
 17.007  TARGET       -p
 17.008  DISP         Press the yellow button to select Hz.
 17.009  5502E        +Frequency = 45.00 Hz; Voltage = 1 V
 17.010  TARGET       -m
 17.011  MEMI         Enter DUT reading in hertz:
 17.012  MEMCX  99.99 45.00H         0.1% 0.01U    1V

 18.001  RSLT         =
 18.002  HEAD         -2{999.9 Hz Range}
 18.003  TARGET       -p
 18.004  5502E        +Frequency = 900.0 Hz; Voltage = 1 V
 18.005  TARGET       -m
 18.006  MEMI         Enter DUT reading in hertz:
 18.007  MEMCX  999.9 900.0H         0.1% 0.1U     1V

 19.001  RSLT         =
 19.002  HEAD         -2{9.999 kHz Range}
 19.003  TARGET       -p
 19.004  5502E        +Frequency = 9.000 kHz; Voltage = 1 V
 19.005  TARGET       -m
 19.006  MEMI         Enter DUT reading in kilohertz:
 19.007  MEMCX  9.999 9.000kH        0.1% 0.001U   1V

 20.001  RSLT         =
 20.002  HEAD         -2{99.99 kHz Range}
 20.003  TARGET
 20.004  5502E        +Frequency = 50.00 kHz; Voltage = 5 V
 20.005  TARGET       -m
 20.006  MEMI         Enter DUT reading in kilohertz:
 20.007  MEMCX  99.99 50.00kH        0.1% 0.01U    5V

 21.001  HEAD         -2
 21.002  HEAD
 21.003  5502E        Standby
 21.004  END

 21.005  EVAL   Increment step number

# =====  Sub Fluke 175/177/179 (1 yr) Resistance VER /5502  =================

 22.001  LABEL        RESISTANCE
 22.002  RSLT         =
 22.003  HEAD         {RESISTANCE}
 22.004  RSLT         =
 22.005  HEAD         -2{600 Ω Range}
 22.006  TARGET       -p
 22.007  DISP         Rotate the DUT function switch to Ω.
 22.008  PIC          5520_17x_cw.jpg
 22.009  5502E        +Resistance = 500.0 Ohms; LeadCompensation = 2Wire
 22.010  TARGET       -m
 22.011  MEMI         Enter DUT reading in ohms:
 22.012  MEMCX  600   500.0Z         0.9% 0.2U

 23.001  RSLT         =
 23.002  HEAD         -2{6 kΩ Range}
 23.003  TARGET       -p
 23.004  5502E        +Resistance = 5.000 kOhms; LeadCompensation = 2Wire
 23.005  TARGET       -m
 23.006  MEMI         Enter DUT reading in kilohms:
 23.007  MEMCX  6     5.000kZ        0.9% 0.001U

 24.001  RSLT         =
 24.002  HEAD         -2{60 kΩ Range}
 24.003  TARGET       -p
 24.004  5502E        +Resistance = 50.00 kOhms; LeadCompensation = 2Wire
 24.005  TARGET       -m
 24.006  MEMI         Enter DUT reading in kilohms:
 24.007  MEMCX  60    50.00kZ        0.9% 0.01U

 25.001  RSLT         =
 25.002  HEAD         -2{600 kΩ Range}
 25.003  TARGET       -p
 25.004  5502E        +Resistance = 500.0 kOhms
 25.005  TARGET       -m
 25.006  MEMI         Enter DUT reading in kilohms:
 25.007  MEMCX  600   500.0kZ        0.9% 0.1U

 26.001  RSLT         =
 26.002  HEAD         -2{6 MΩ Range}
 26.003  TARGET       -p
 26.004  5502E        +Resistance = 5.000 MOhms
 26.005  TARGET       -m
 26.006  MEMI         Enter DUT reading in megohms:
 26.007  MEMCX  6     5.000MZ        0.9% 0.001U

 27.001  RSLT         =
 27.002  HEAD         -2{50 MΩ Range}
 27.003  TARGET       -p
 27.004  5502E        +Resistance = 19.00 MOhms
 27.005  TARGET       -m
 27.006  MEMI         Enter DUT reading in megohms:
 27.007  MEMCX  50    19.00MZ        1.5% 0.03U

 28.001  HEAD         -2
 28.002  HEAD
 28.003  5502E        Standby
 28.004  END

 28.005  EVAL   Increment step number

# =====  Sub Fluke 175/177/179 (1 yr) Capacitance VER /5502  ================

 29.001  LABEL        CAPACITANCE
 29.002  RSLT         =
 29.003  HEAD         {CAPACITANCE}
 29.004  RSLT         =
 29.005  HEAD         -2{1000 nF Range}
 29.006  TARGET       -p
 29.007  DISP         Press the yellow button to select Capacitance.
# Ramp up to prevent DUT from autoranging to the 10 µF range.
 29.008  5502E        +Capacitance = 800 nF; LeadCompensation = 2Wire
 29.009  5502E        +Capacitance = 900 nF; LeadCompensation = 2Wire
 29.010  TARGET       -m
 29.011  MEMI         Enter DUT reading in nanofarads:
 29.012  MEMCX  1000  900nF          1.2% 2U
#! WARNING: Test Tol 1.28e-08, Sys Tol 3.25e-09 F, TUR 3.9385 (< 4.00).

 30.001  RSLT         =
 30.002  HEAD         -2{10 µF Range}
 30.003  TARGET
 30.004  5502E        +Capacitance = 9.00 uF; LeadCompensation = 2Wire
 30.005  TARGET       -m
 30.006  MEMI         Enter DUT reading in microfarads:
 30.007  MEMCX  10    9.00uF         1.2% 0.02U
#! WARNING: Test Tol 1.28e-07, Sys Tol 3.25e-08 F, TUR 3.9385 (< 4.00).

 31.001  RSLT         =
 31.002  HEAD         -2{100 µF Range}
 31.003  TARGET
 31.004  5502E        +Capacitance = 90.0 uF; LeadCompensation = 2Wire
 31.005  TARGET       -m
 31.006  MEMI         Enter DUT reading in microfarads:
 31.007  MEMCX  100   90.0uF         1.2% 0.2U
#! WARNING: Test Tol 1.28e-06, Sys Tol 5.05e-07 F, TUR 2.5347 (< 4.00).

 32.001  RSLT         =
 32.002  HEAD         -2{1000 µF Range}
 32.003  TARGET
 32.004  5502E        +Capacitance = 900 uF; LeadCompensation = 2Wire
 32.005  TARGET       -m
 32.006  MEMI         Enter DUT reading in microfarads:
 32.007  MEMCX  1000  900uF          1.2% 2U
#! WARNING: Test Tol 1.28e-05, Sys Tol 5.05e-06 F, TUR 2.5347 (< 4.00).

 33.001  HEAD         -2
 33.002  HEAD
 33.003  5502E        Standby
 33.004  END

 33.005  EVAL   Increment step number

# =====  Sub Fluke 175/177/179 (1 yr) Continuity VER /5502  =================

 34.001  LABEL        CONTINUITY
 34.002  RSLT         =
 34.003  HEAD         CONTINUITY
 34.004  TARGET
 34.005  DISP         Rotate the DUT function switch to Continuity.
 34.006  5502E        LeadCompensation = 2Wire;
 34.006  5502E        +Resistance = 25 Ohms
 34.007  OPBR         -z Is the beeper on?
 34.008  MATH         L[1] = MEM1
 34.009  5502E        LeadCompensation = 2Wire;
 34.009  5502E        +Resistance = 250 Ohms
 34.010  OPBR         -z Is the beeper off?
 34.011  MATH         L[2] = MEM1
 34.012  EVAL   -e L[1] && L[2] : CONTINUITY

 35.001  HEAD
 35.002  5502E        Standby
 35.003  END

 35.004  EVAL   Increment step number

# =====  Sub Fluke 175/177/179 (1 yr) Diode Test VER /5502  =================

 36.001  LABEL        DIODE_TEST
 36.002  RSLT         =
 36.003  HEAD         {DIODE TEST}
 36.004  TARGET       -p
 36.005  DISP         Press the yellow button to select Diode Test.
 36.006  PIC          5520_17x_2w.jpg
 36.007  5502E        +Voltage = 2.000 V
 36.008  TARGET       -m
 36.009  MEMI         Enter DUT reading in volts DC:
 36.010  MEMCX        2.000V         1% 0.002U

 37.001  HEAD
 37.002  5502E        Standby
 37.003  END
