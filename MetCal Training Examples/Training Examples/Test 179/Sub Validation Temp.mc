Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM Validation - Temperature /5502E
INSTRUMENT:            Sub 179 Handheld DMM Validation - Temperature /5500
DATE:                  2023-07-20 15:49:01
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       7
NUMBER OF LINES:       96
CONFIGURATION:         Fluke 5502E
CONFIGURATION:         Fluke 5500A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# Choose which sub procedure to jump to
  1.001  JMPL         m_5502E                  PSUBI("5502E")
  1.002  JMPL         m_5500                   PSUBI("5500")
  1.003  DISP         No Sub Procedure Found
  1.004  END


#### 5502E SECTION ####
  1.005  LABEL        m_5502E
# The sub procedure file for the Temperature test
  1.006  RSLT         =
  1.007  HEAD         {TEMPERATURE}
  1.008  DISP         Turn the rotary switch to mV DC
  1.008  DISP
  1.008  DISP         Press the yellow button to select Temperature
  1.008  DISP
  1.008  DISP         If necessary, press the RANGE button to select °C

# display connection picture
  1.009  PIC          5520_179_tc

# designate tolerance
  1.010  TOL          1% 1u

# set STD to 0° and wait for emfs to dissipate
  1.011  5502E        Mode = TC_Source; TC_Type = K
  1.011  5502E        +Temperature = 0.0 degC
  1.012  WAIT         -a -t 2:30 Thermal emfs dissipating...

# Setpoints and Measurements
  1.013  TARGET       -p
  1.014  MEMI         Enter UUT reading in °C
  1.015  MEMCX        degC           TOL

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





#### 5500 SECTION ####
  4.003  LABEL        m_5500
# The sub procedure file for the Temperature test
  4.004  RSLT         =
  4.005  HEAD         {TEMPERATURE}
  4.006  DISP         Turn the rotary switch to mV DC
  4.006  DISP
  4.006  DISP         Press the yellow button to select Temperature
  4.006  DISP
  4.006  DISP         If necessary, press the RANGE button to select °C

# display connection picture
  4.007  PIC          5520_179_tc

# designate tolerance
  4.008  TOL          1% 1u

# set STD to 0° and wait for emfs to dissipate
  4.009  5500         0.0degC                                     _K TC S  2W
  4.010  WAIT         -a -t 2:30 Thermal emfs dissipating...

# Setpoints and Measurements
  4.011  5500         0.0degC        TOL                          _K TC    2W

  5.001  5500         -40.0degC      TOL                          _K TC    2W

  6.001  5500         400.0degC      TOL                          _K TC    2W

# Sub procedure end
  7.001  END
