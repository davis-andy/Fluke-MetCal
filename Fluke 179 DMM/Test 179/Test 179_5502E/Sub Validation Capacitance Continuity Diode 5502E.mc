Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - Capacitance
INSTRUMENT:            Sub 179 Handheld DMM Validation - Continuity
INSTRUMENT:            Sub 179 Handheld DMM Validation - Diode
DATE:                  2023-07-21 09:23:37
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       8
NUMBER OF LINES:       104
CONFIGURATION:         Fluke 5502E
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
  1.013  5502E        +Capacitance = 900 nF; LeadComp = 2W
  1.014  MEMI         Enter UUT reading in nF
  1.015  MEMCX        nF             1.2% 2U

  2.001  RSLT         =
  2.002  HEAD         -2 {10 µF Range}
  2.003  TARGET       -p
  2.004  5502E        +Capacitance = 9.00 uF; LeadComp = 2W
  2.005  MEMI         Enter UUT reading in uF
  2.006  MEMCX        uF             1.2% 0.02U

  3.001  RSLT         =
  3.002  HEAD         -2 {100 µF Range}
  3.003  TARGET       -p
  3.004  5502E        +Capacitance = 90.0 uF; LeadComp = 2W
  3.005  MEMI         Enter UUT reading in uF
  3.006  MEMCX        uF             1.2% 0.2U

  4.001  RSLT         =
  4.002  HEAD         -2 {9999 µF Range}
  4.003  TARGET       -p
  4.004  5502E        +Capacitance = 900 uF; LeadComp = 2W
  4.005  MEMI         Enter UUT reading in uF
  4.006  MEMCX        uF             1.2% 2U

# Sub procedure end
  5.001  5502E        Standby
  5.002  END


#### CONTINUITY TEST ####
  5.003  LABEL        Continuity
  5.004  RSLT         =
  5.005  HEAD         {CONTINUITY}
  5.006  DISP         Turn the rotary switch to ))))

# Setpoints and Measurements
  5.007  5502E        +Resistance = 25 Ohms; LeadComp = 2W
  5.008  EVAL   -s "Continuity: Beeper On": Is the beeper on?
  6.001  5502E        +Resistance = 250 Ohms; LeadComp = 2W
  6.002  EVAL   -s "Continuity: Beeper Off": Is the beeper off?

#  7.001  5502E        +Resistance = 25 Ohms; LeadComp = 2W
#  7.002  OPBR         -z Is the beeper on?
#  7.003  MATH         L[1] = MEM1
#  7.004  5502E        +Resistance = 250 Ohms; LeadComp = 2W
#  7.005  OPBR         -z Is the beeper off?
#  7.006  MATH         L[2] = MEM1
#  7.007  EVAL   -e L[1] && L[2] : CONTINUITY

# Sub procedure end
  7.001  5502E        Standby
  7.002  END


#### DIODE TEST ####
  7.003  LABEL        Diode
  7.004  RSLT         =
  7.005  HEAD         {DIODE}
 # 7.006  DISP         Turn the rotary switch to ))))
 # 7.006  DISP
  7.006  DISP         Press the yellow button to select Diode

# Setpoints and Measurements
  7.007  TARGET       -p
  7.008  5502E        +Voltage = 2.000 V
  7.009  MEMI         Enter UUT reading in V DC
  7.010  MEMCX        V              1% 0.002U

# Sub procedure end
  8.001  5502E        Standby
  8.002  END
