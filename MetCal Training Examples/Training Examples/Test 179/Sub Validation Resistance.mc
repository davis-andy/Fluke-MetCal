Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - Resistance
DATE:                  2023-07-20 14:58:55
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       7
NUMBER OF LINES:       69
CONFIGURATION:         Fluke 5502E
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# The sub procedure for the Resistance test
  1.001  RSLT         =
  1.002  HEAD         {RESISTANCE}
  1.003  DISP         Turn the rotary switch to Ohms

# display connection picture
  1.004  PIC          5520_17x_cw

# Setpoints and Measurements
  1.005  HEAD         -2 {600 Ω Range}
  1.006  5502E        +Resistance = 500.0 Ohms; LeadComp = 2W
  1.007  TARGET       -p
  1.008  MEMI         Enter UUT reading in Ohms
  1.009  MEMCX        Z              0.9% 0.2U

  2.001  RSLT         =
  2.002  HEAD         -2 {6 kΩ Range}
  2.003  5502E        +Resistance = 5.000 kOhms; LeadComp = 2W
  2.004  TARGET       -p
  2.005  MEMI         Enter UUT reading in kOhms
  2.006  MEMCX        Z              0.9% 0.001U

  3.001  RSLT         =
  3.002  HEAD         -2 {60 kΩ Range}
  3.003  5502E        +Resistance = 50.00 kOhms; LeadComp = 2W
  3.004  TARGET       -p
  3.005  MEMI         Enter UUT reading in kOhms
  3.006  MEMCX        Z              0.9% 0.01U

# Switch over to 2W Connection
  4.001  5502E        Standby
  4.002  PIC          5520_17x_2w

  4.003  RSLT         =
  4.004  HEAD         -2 {600 kΩ Range}
  4.005  5502E        +Resistance = 500.0 kOhms
  4.006  TARGET       -p
  4.007  MEMI         Enter UUT reading in kOhms
  4.008  MEMCX        Z              0.9% 0.1U

  5.001  RSLT         =
  5.002  HEAD         -2 {6 MΩ Range}
  5.003  5502E        +Resistance = 5.000 MOhms
  5.004  TARGET       -p
  5.005  MEMI         Enter UUT reading in MOhms
  5.006  MEMCX        Z              0.9% 0.001U

  6.001  RSLT         =
  6.002  HEAD         -2 {50 MΩ Range}
  6.003  5502E        +Resistance = 19.00 MOhms
  6.004  TARGET       -p
  6.005  MEMI         Enter UUT reading in MOhms
  6.006  MEMCX        Z              1.5% 0.03U

# Sub procedure end
  7.001  5502E        Standby
  7.002  END
