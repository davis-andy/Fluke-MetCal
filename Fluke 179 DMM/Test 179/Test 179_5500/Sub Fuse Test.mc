JPL                                                         MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub 179 Handheld DMM - Fuse Test
DATE:                  2023-07-19 19:51:11
AUTHOR:                Andy Davis
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       5
NUMBER OF LINES:       37
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON

# sub routine to get the fuses of the DMM
  1.001  HEAD         {Fuse Test}
  1.002  DISP         Turn the rotary switch to Ohms
  1.003  DISP         Short the V|OHM|DIODE input connector to the 400mA input connector
  1.004  OPBR         -z Does the display show 0L?
  1.005  IF           MEM1==0
  1.006  TARGET       -p
  1.007  MEMI         Enter the value shown on the display.
  1.008  EVAL   -e MEM<12: 440mA Fuse OK
  2.001  ELSE
  2.002  EVAL   -e 13<12: 440mA Fuse OK
#  2.003  DISP         Replace 440mA Fuse.
  3.001  ENDIF


  3.002  DISP         Short the V|OHM|DIODE input connector to the 10A input connector
  3.003  OPBR         -z Does the display show 0L?
  3.004  IF           MEM1==0
  3.005  TARGET       -p
  3.006  MEMI         Enter the value shown on the display.
  3.007  EVAL   -e MEM<0.5: 11A Fuse OK
  4.001  ELSE
  4.002  EVAL   -e 13<12: 11A Fuse OK
#  4.002  DISP         Replace 11A Fuse.
  5.001  ENDIF
