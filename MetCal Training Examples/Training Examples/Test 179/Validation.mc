Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            179 Handheld DMM Validation
DATE:                  2023-07-20 16:01:32
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       1
NUMBER OF LINES:       218
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# The main procedure file for the 179 validation procedure

# REMOVE THIS BEFORE TESTING WITH EQUIPMENT!!
  1.001  VSET         REMCON = no

# ASK Flag setup  - REMOVE + A and ADD - F AFTER TESTING IS DONE
  1.002  ASK+           K
  1.003  ASK-   R                    P                   Z        F        V


  1.004  IEEE2        *IDN?[I$]
  1.005  MATH         @model = FLD(MEM2, 2, ",")

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
# Tag.HasOperatorPrompts =
# Tag.IsRequired = 1
  1.006  LABEL        begin_AC_Volts
#  1.005  RSLT         =
  1.007  IF           ZCMPI(@model, "5500A") || ZCMPI(@model, "5500")
  1.008  CALL         Sub 179 Handheld DMM Validation - AC Volts /5500
  1.009  ELSE
  1.010  CALL         Sub 179 Handheld DMM Validation - AC Volts /5502E
  1.011  ENDIF
  1.012  LABEL        end_AC_Volts

# Tag.Name = DC VOLTS
# Tag.Start = begin_DC_Volts
# Tag.End =  end_DC_Volts
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts =
# Tag.IsRequired = 1
  1.013  LABEL        begin_DC_Volts
  1.014  RSLT         =
  1.015  IF           ZCMPI(@model, "5500A") || ZCMPI(@model, "5500")
  1.016  CALL         Sub 179 Handheld DMM Validation - DC Volts /5500
  1.017  ELSE
  1.018  CALL         Sub 179 Handheld DMM Validation - DC Volts /5502E
  1.019  ENDIF
  1.020  LABEL        end_DC_Volts
  1.021  JMPL         Diode

# Tag.Name = RESISTANCE
# Tag.Start = begin_Ohms
# Tag.End =  end_Ohms
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts =
# Tag.IsRequired = 1
  1.022  LABEL        Ohms
  1.023  LABEL        begin_Ohms
  1.024  RSLT         =
  1.025  IF           ZCMPI(@model, "5500A") || ZCMPI(@model, "5500")
  1.026  CALL         Sub 179 Handheld DMM Validation - Resistance /5500
  1.027  ELSE
  1.028  CALL         Sub 179 Handheld DMM Validation - Resistance /5502E
  1.029  ENDIF
  1.030  LABEL        end_Ohms
  1.031  JMPL         Capacitance

# Tag.Name = CAPACITANCE
# Tag.Start = begin_Capacitance
# Tag.End =  end_Capacitance
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts =
# Tag.IsRequired = 1
  1.032  LABEL        Capacitance
  1.033  LABEL        begin_Capacitance
  1.034  RSLT         =
  1.035  IF           ZCMPI(@model, "5500A") || ZCMPI(@model, "5500")
  1.036  CALL         Sub 179 Handheld DMM Validation - Capacitance /5500
  1.037  ELSE
  1.038  CALL         Sub 179 Handheld DMM Validation - Capacitance /5502E
  1.039  ENDIF
  1.040  LABEL        end_Capacitance
  1.041  JMPL         Continuity

# Tag.Name = CONTINUITY
# Tag.Start = begin_Continuity
# Tag.End =  end_Continuity
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts =
# Tag.IsRequired = 1
  1.042  LABEL        Continuity
  1.043  LABEL        begin_Continuity
  1.044  RSLT         =
  1.045  IF           ZCMPI(@model, "5500A") || ZCMPI(@model, "5500")
  1.046  CALL         Sub 179 Handheld DMM Validation - Continuity /5500
  1.047  ELSE
  1.048  CALL         Sub 179 Handheld DMM Validation - Continuity /5502E
  1.049  ENDIF
  1.050  LABEL        end_Continuity
  1.051  JMPL         Current_MilliAmps

# Tag.Name = DIODE
# Tag.Start = begin_Diode
# Tag.End =  end_Diode
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts =
# Tag.IsRequired = 1
  1.052  LABEL        Diode
  1.053  LABEL        begin_Diode
  1.054  RSLT         =
  1.055  IF           ZCMPI(@model, "5500A") || ZCMPI(@model, "5500")
  1.056  CALL         Sub 179 Handheld DMM Validation - Diode /5500
  1.057  ELSE
  1.058  CALL         Sub 179 Handheld DMM Validation - Diode /5502E
  1.059  ENDIF
  1.060  LABEL        end_Diode
  1.061  JMPL         Ohms

# Tag.Name = CURRENT - MILLIAMPS
# Tag.Start = begin_Current_MilliAmps
# Tag.End =  end_Current_MilliAmps
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts =
# Tag.IsRequired = 1
  1.062  LABEL        Current_MilliAmps
  1.063  LABEL        begin_Current_MilliAmps
  1.064  RSLT         =
  1.065  IF           ZCMPI(@model, "5500A") || ZCMPI(@model, "5500")
  1.066  CALL         Sub 179 Handheld DMM Validation - Current Milliamps /5500
  1.067  ELSE
  1.068  CALL         Sub 179 Handheld DMM Validation - Current Milliamps /5502E
  1.069  ENDIF
  1.070  LABEL        end_Current_MilliAmps
  1.071  JMPL         Current_Amps

# Tag.Name = CURRENT - AMPS
# Tag.Start = begin_Current_Amps
# Tag.End =  end_Current_Amps
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts =
# Tag.IsRequired = 1
  1.072  LABEL        Current_Amps
  1.073  LABEL        begin_Current_Amps
  1.074  RSLT         =
  1.075  IF           ZCMPI(@model, "5500A") || ZCMPI(@model, "5500")
  1.076  CALL         Sub 179 Handheld DMM Validation - Current Amps /5500
  1.077  ELSE
  1.078  CALL         Sub 179 Handheld DMM Validation - Current Amps /5502E
  1.079  ENDIF
  1.080  DISP         Remove all connections
  1.081  LABEL        end_Current_Amps
  1.082  JMPL         Temp

# Tag.Name = TEMPERATURE
# Tag.Start = begin_Temp
# Tag.End =  end_Temp
# Tag.Prerequisites =
# Tag.Description =
# Tag.ExecutionTimeInMinutes =
# Tag.Notes =
# Tag.HasOperatorPrompts =
# Tag.IsRequired = 1
  1.083  LABEL        Temp
  1.084  LABEL        begin_Temp
  1.085  RSLT         =
  1.086  IF           ZCMPI(@model, "5500A") || ZCMPI(@model, "5500")
  1.087  CALL         Sub 179 Handheld DMM Validation - Temperature /5500
  1.088  ELSE
  1.089  CALL         Sub 179 Handheld DMM Validation - Temperature /5502E
  1.090  ENDIF
  1.091  LABEL        end_Temp
  1.092  JMPL         END

  1.093  LABEL        END
  1.094  DISP         Turn the rotary switch to OFF
  1.095  END


# CW for lower end of ohms and capacitance
# 5500 is done for -amps, 5520 needs HC
