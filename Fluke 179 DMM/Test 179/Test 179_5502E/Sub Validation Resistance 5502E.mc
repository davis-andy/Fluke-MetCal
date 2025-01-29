JPL                                                         MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - Resistance
DATE:                  2023-07-20 21:18:49
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       7
NUMBER OF LINES:       66
CONFIGURATION:         Fluke 5502E
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# The sub procedure for the Resistance test
  1.001  RSLT         =
  1.002  HEAD         {RESISTANCE}
  1.003  DISP         Turn the rotary switch to Ω

# display connection picture
  1.004  PIC          5520_17x_cw

# Setpoints and Measurements
  1.005  RSLT         =
  1.006  HEAD         -2 {600 Ω Range}
  1.007  TARGET       -p
  1.008  5502E        +Resistance = 500.0 Ohms; LeadComp = 4W
  1.009  MEMI         Enter UUT reading in Ω
  1.010  MEMCX        Z              0.9% 0.2U

  2.001  RSLT         =
  2.002  HEAD         -2 {6 kΩ Range}
  2.003  TARGET       -p
  2.004  5502E        +Resistance = 5.000 kOhms; LeadComp = 2W
  2.005  MEMI         Enter UUT reading in kΩ
  2.006  MEMCX        kZ             0.9% 0.001U

  3.001  RSLT         =
  3.002  HEAD         -2 {60 kΩ Range}
  3.003  TARGET       -p
  3.004  5502E        +Resistance = 50.00 kOhms; LeadComp = 2W
  3.005  MEMI         Enter UUT reading in kΩ
  3.006  MEMCX        kZ             0.9% 0.01U

  4.001  RSLT         =
  4.002  HEAD         -2 {600 kΩ Range}
  4.003  TARGET       -p
  4.004  5502E        +Resistance = 500.0 kOhms
  4.005  MEMI         Enter UUT reading in kΩ
  4.006  MEMCX        kZ             0.9% 0.1U

  5.001  RSLT         =
  5.002  HEAD         -2 {6 MΩ Range}
  5.003  TARGET       -p
  5.004  5502E        +Resistance = 5.000 MOhms
  5.005  MEMI         Enter UUT reading in MΩ
  5.006  MEMCX        MZ             0.9% 0.001U

  6.001  RSLT         =
  6.002  HEAD         -2 {50 MΩ Range}
  6.003  TARGET       -p
  6.004  5502E        +Resistance = 19.00 MOhms
  6.005  MEMI         Enter UUT reading in MΩ
  6.006  MEMCX        MZ             1.5% 0.03U

# Sub procedure end
  7.001  5502E        Standby
  7.002  END
