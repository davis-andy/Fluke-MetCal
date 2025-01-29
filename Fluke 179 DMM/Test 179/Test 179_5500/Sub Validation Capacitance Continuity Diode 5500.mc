Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - Capacitance
INSTRUMENT:            Sub 179 Handheld DMM Validation - Continuity
INSTRUMENT:            Sub 179 Handheld DMM Validation - Diode
DATE:                  2023-07-21 09:38:57
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       8
NUMBER OF LINES:       94
CONFIGURATION:         Fluke 5500A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# Choose which sub procedure to jump to
  1.001  JMPL         Capacitance                  PSUBI("Capacitance")
  1.002  JMPL         Continuity                   PSUBI("Continuity")
  1.003  JMPL         Diode                        PSUBI("Diode")
  1.004  DISP         No Sub Procedure Found
  1.005  END


#### CAPACITANCE TEST ####
  1.006  LABEL        Capacitance
  1.007  RSLT         =
  1.008  HEAD         {CAPACITANCE}
  1.009  DISP         Press the yellow button to select Capacitance

# Setpoints and Measurements
  1.010  RSLT         =
  1.011  HEAD         -2 {1000 nF Range}
  1.012  TARGET       -p
  1.013  5500         900nF          1.2% 2U                               2W

  2.001  RSLT         =
  2.002  HEAD         -2 {10 µF Range}
  2.003  TARGET       -p
  2.004  5500         9.00uF         1.2% 0.02U                            2W

  3.001  RSLT         =
  3.002  HEAD         -2 {100 µF Range}
  3.003  TARGET       -p
  3.004  5500         90.0uF         1.2% 0.2U                             2W

  4.001  RSLT         =
  4.002  HEAD         -2 {9999 µF Range}
  4.003  TARGET       -p
  4.004  5500         900uF          1.2% 2U                               2W

# Sub procedure end
  5.001  5500         *                                                 S
  5.002  END


#### CONTINUITY TEST ####
  5.003  LABEL        Continuity
  5.004  RSLT         =
  5.005  HEAD         {CONTINUITY}
  5.006  DISP         Turn the rotary switch to ))))

# Setpoints and Measurements
  5.007  5500         25Z                                               S  2W
  5.008  EVAL   -s "Continuity: Beeper On": Is the beeper on?
  6.001  5500         250Z                                              S  2W
  6.002  EVAL   -s "Continuity: Beeper Off": Is the beeper off?

#  5.006  5500         25Z                                               S  2W
# 34.007  OPBR         -z Is the beeper on?
# 34.008  MATH         L[1] = MEM1
#  7.001  5500         250Z                                              S  2W
#  7.002  OPBR         -z Is the beeper off?
#  7.003  MATH         L[2] = MEM1
#  7.004  EVAL   -e L[1] && L[2] : CONTINUITY

# Sub procedure end
  7.001  5500         *                                                 S
  7.002  END


#### DIODE TEST ####
  7.003  LABEL        Diode
  7.004  RSLT         =
  7.005  HEAD         {DIODE}
 # 7.005  DISP         Turn the rotary switch to ))))
 # 7.005  DISP
  7.006  DISP         Press the yellow button to select Diode

# Setpoints and Measurements
  7.007  TARGET       -p
  7.008  5500         2.000V         1% 0.002U                             2W

# Sub procedure end
  8.001  5500         *                                                 S
  8.002  END
