Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - Temperature
DATE:                  2023-07-20 16:25:48
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       4
NUMBER OF LINES:       50
CONFIGURATION:         Fluke 5502E
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# The sub procedure file for the Temperature test
  1.001  RSLT         =
  1.002  HEAD         {TEMPERATURE}
  1.003  DISP         Turn the rotary switch to mV DC
  1.003  DISP
  1.003  DISP         Press the yellow button to select Temperature
  1.003  DISP
  1.003  DISP         If necessary, press the RANGE button to select °C

# display connection picture
  1.004  PIC          5520_179_tc

# designate tolerance
  1.005  TOL          1% 1u

# set STD to 0° and wait for emfs to dissipate
  1.006  5502E        Mode = TC_Source; TC_Type = K
  1.006  5502E        +Temperature = 0.0 degC
  1.007  WAIT         -a -t 2:30 Thermal emfs dissipating...

# Setpoints and Measurements
  1.008  TARGET       -p
  1.009  MEMI         Enter UUT reading in °C
  1.010  MEMCX        degC           TOL

  2.001  5502E        +Temperature = -40.0 degC; TC_Type = K
  2.002  TARGET       -p
  2.003  MEMI         Enter UUT reading in °C
  2.004  MEMCX        degC           TOL

  3.001  5502E        +Temperature = 400.0 degC; TC_Type = K
  3.002  TARGET       -p
  3.003  MEMI         Enter UUT reading in °C
  3.004  MEMCX        degC           TOL

# Sub procedure end
  4.001  5502E        Standby
  4.002  END
