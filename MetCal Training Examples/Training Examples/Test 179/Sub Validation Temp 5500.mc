Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - Temperature /5500
DATE:                  2023-07-20 15:25:54
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       4
NUMBER OF LINES:       40
CONFIGURATION:         Fluke 5500A
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
  1.006  5500         0.0degC                                     _K TC S  2W
  1.007  WAIT         -a -t 2:30 Thermal emfs dissipating...

# Setpoints and Measurements
  1.008  5500         0.0degC        TOL                          _K TC    2W

  2.001  5500         -40.0degC      TOL                          _K TC    2W

  3.001  5500         400.0degC      TOL                          _K TC    2W

# Sub procedure end
  4.001  END
