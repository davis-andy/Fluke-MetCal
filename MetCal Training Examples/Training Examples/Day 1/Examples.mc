Fluke Training                                              MET/CAL Procedure
=============================================================================
INSTRUMENT:            Examples
DATE:                  2023-07-20 11:29:46
AUTHOR:                System Administrator
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       1
NUMBER OF LINES:       94
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
# comments

# F12 for Configuration

# F9 for syntax check

# F5 for debug
# CTRL + F5 run
# ALT + F5 stop
# F11 step

# F6 to continue on next line


# Suggested ASK Flag settings on slide 105 (pg 53 in training book)
  1.001  ASK+           K
  1.002  ASK-   R                    P                   Z        F        V

  1.003  VSET         REMCON = no

  1.004  MEMI         enter a number
  1.005  MEM2         enter a string
  1.006  MATH         M[5] = 99
  1.007  MATH         S[12] = MEM2 & " DAVIS"
  1.008  MATH         named_var = "Hello"
  1.009  MATH         @glob_var = 80


  1.010  DISP         [MEM] is mem
  1.010  DISP         [MEM2] is mem2
  1.010  DISP         [M5] is M5
  1.010  DISP         [S12] is S12
  1.010  DISP         [v named_var] is local variable
  1.010  DISP         [v @glob_var] is global variable


  1.011  MATH         rads = RAD(180)
  1.012  MATH         rads = FMT(rads, "%0.2f")
  1.013  DISP         [v rads]


  1.014  MATH         id = lbNew("Choose IEEE Type")
  1.015  MATH         lbText(id, "Select the correct IEEE Format")
  1.016  MATH         lbText(id, "from the options below")
  1.017  MATH         lbAddList(id, "PORT,GPIB,TCIP,USB")
  1.018  MATH         lbshow(id)
  1.019  MATH         Selection = LBGETSEL(id, 1)


  1.020  WAIT         hi [D2500]
  1.021  WAIT         [D2500]



  1.022  MEMI         Enter your birth year
  1.023  MATH         @year = date("YYYY")
  1.024  OPBR         -z      Have you had your birthday yet?
  1.025  IF           MEM1
  1.026  MATH         M[3] = @year - MEM
  1.027  ELSE
  1.028  MATH         M[3] = @year - MEM - 1
  1.029  ENDIF
  1.030  DISP         Your age is [M3]

  1.031  MEMI         Enter your birth year
  1.032  MATH         @year = date("YYYY")
  1.033  OPBR         -z      Have you had your birthday yet?
  1.034  JMPL         not_yet MEM1<1
  1.035  MATH         M[3] = @year - MEM
  1.036  DISP         Your age is [M3]
  1.037  END
  1.038  LABEL        not_yet
  1.039  MATH         M[3] = @year - MEM - 1
  1.040  DISP         Your age is [M3]
  1.041  END

  1.042  MEMI         Enter your birth year
  1.043  OPBR         -z      Have you had your birthday yet?
  1.044  MATH         age = date("YYYY") - MEM + MEM1 - 1
  1.045  DISP         Your age is [v age]

  1.046  MATH         L[1] = ACCV2("Fluke 5520A","Amps SI",.2,100)
