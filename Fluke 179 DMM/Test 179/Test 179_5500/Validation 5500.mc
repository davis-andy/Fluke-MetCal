Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            179 Handheld DMM Validation
DATE:                  2023-07-21 09:41:25
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       1
NUMBER OF LINES:       194
CONFIGURATION:         Fluke 5500A
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# The main procedure file for the 179 validation procedure

# ASK Flag setup
  1.001  ASK+           K
  1.002  ASK-   R                    P                   Z        F        V

# Reset the STD
  1.003  5500         *                                                 S

# TEST FUSES AND BATTERY
#  1.005  CALL         Sub 179 Handheld DMM -  Fuse Test

# TEST DISPLAY

### Run the main tests ###

# Tag.Name = AC VOLTS
# Tag.Start = begin_AC_Volts
# Tag.End =  end_AC_Volts
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts = 1
# Tag.IsRequired = 1
  1.004  LABEL        begin_AC_Volts
  1.005  CALL         Sub 179 Handheld DMM Validation - AC Volts
  1.006  LABEL        end_AC_Volts

# Tag.Name = DC VOLTS
# Tag.Start = begin_DC_Volts
# Tag.End =  end_DC_Volts
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts = 1
# Tag.IsRequired = 1
  1.007  LABEL        begin_DC_Volts
  1.008  CALL         Sub 179 Handheld DMM Validation - DC Volts
  1.009  LABEL        end_DC_Volts
  1.010  JMPL         Continuity

# Tag.Name = RESISTANCE
# Tag.Start = begin_Ohms
# Tag.End =  end_Ohms
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts = 1
# Tag.IsRequired = 1
  1.011  LABEL        Ohms
  1.012  LABEL        begin_Ohms
  1.013  CALL         Sub 179 Handheld DMM Validation - Resistance
  1.014  LABEL        end_Ohms
  1.015  JMPL         Capacitance

# Tag.Name = CAPACITANCE
# Tag.Start = begin_Capacitance
# Tag.End =  end_Capacitance
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts = 1
# Tag.IsRequired = 1
  1.016  LABEL        Capacitance
  1.017  LABEL        begin_Capacitance
  1.018  CALL         Sub 179 Handheld DMM Validation - Capacitance
  1.019  LABEL        end_Capacitance
  1.020  JMPL         Current_AC_MilliAmps

# Tag.Name = CONTINUITY
# Tag.Start = begin_Continuity
# Tag.End =  end_Continuity
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts = 1
# Tag.IsRequired = 1
  1.021  LABEL        Continuity
  1.022  LABEL        begin_Continuity
  1.023  CALL         Sub 179 Handheld DMM Validation - Continuity
  1.024  LABEL        end_Continuity
  1.025  JMPL         Diode

# Tag.Name = DIODE
# Tag.Start = begin_Diode
# Tag.End =  end_Diode
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts = 1
# Tag.IsRequired = 1
  1.026  LABEL        Diode
  1.027  LABEL        begin_Diode
  1.028  CALL         Sub 179 Handheld DMM Validation - Diode
  1.029  LABEL        end_Diode
  1.030  JMPL         Ohms

# Tag.Name = CURRENT - AC MILLIAMPS
# Tag.Start = begin_Current_AC_MilliAmps
# Tag.End =  end_Current_AC_MilliAmps
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts = 1
# Tag.IsRequired = 1
  1.031  LABEL        Current_AC_MilliAmps
  1.032  LABEL        begin_Current_AC_MilliAmps
  1.033  CALL         Sub 179 Handheld DMM Validation - Current AC Milliamps
  1.034  LABEL        end_Current_AC_MilliAmps
  1.035  JMPL         Current_DC_MilliAmps

# Tag.Name = CURRENT - AC AMPS
# Tag.Start = begin_Current_AC_Amps
# Tag.End =  end_Current_AC_Amps
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts = 1
# Tag.IsRequired = 1
  1.036  LABEL        Current_AC_Amps
  1.037  LABEL        begin_Current_AC_Amps
  1.038  CALL         Sub 179 Handheld DMM Validation - Current AC Amps
  1.039  LABEL        end_Current_AC_Amps
  1.040  JMPL         Current_DC_Amps

# Tag.Name = CURRENT - DC MILLIAMPS
# Tag.Start = begin_Current_DC_MilliAmps
# Tag.End =  end_Current_DC_MilliAmps
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts = 1
# Tag.IsRequired = 1
  1.041  LABEL        Current_DC_MilliAmps
  1.042  LABEL        begin_Current_DC_MilliAmps
  1.043  CALL         Sub 179 Handheld DMM Validation - Current DC Milliamps
  1.044  LABEL        end_Current_DC_MilliAmps
  1.045  JMPL         Current_AC_Amps

# Tag.Name = CURRENT - DC AMPS
# Tag.Start = begin_Current_DC_Amps
# Tag.End =  end_Current_DC_Amps
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts = 1
# Tag.IsRequired = 1
  1.046  LABEL        Current_DC_Amps
  1.047  LABEL        begin_Current_DC_Amps
  1.048  CALL         Sub 179 Handheld DMM Validation - Current DC Amps
  1.049  DISP         Remove all connections
  1.050  LABEL        end_Current_DC_Amps
  1.051  JMPL         Temp

# Tag.Name = TEMPERATURE
# Tag.Start = begin_Temp
# Tag.End =  end_Temp
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts = 1
# Tag.IsRequired = 1
  1.052  LABEL        Temp
  1.053  LABEL        begin_Temp
  1.054  CALL         Sub 179 Handheld DMM Validation - Temperature
  1.055  LABEL        end_Temp
  1.056  JMPL         END

  1.057  LABEL        END
  1.058  DISP         Turn the rotary switch to OFF
  1.059  END
