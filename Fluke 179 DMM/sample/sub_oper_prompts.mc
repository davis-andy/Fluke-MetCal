Fluke Calibration                                           MET/CAL Procedure
=============================================================================
INSTRUMENT:            Sub Display Copyright
INSTRUMENT:            Sub Select Meter Test Mode
INSTRUMENT:            Sub Select Failed Test Mode
INSTRUMENT:            Sub Audible Operator Prompt
DATE:                  2019-02-20 14:52:16
AUTHOR:                Fluke
REVISION:              $Revision: 28110 $
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       5
NUMBER OF LINES:       99
=============================================================================
#
#  Procedure Author:
#        DFM, DAC
#
#  Compatibility:
#        5500/CAL or MET/CAL 7.20 or later
#
#  The copyright in this procedure is owned by Fluke Calibration.
#
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON

  1.001  JMPL         COPYRIGHT                    PSUB("Copyright")
  1.002  JMPL         METER_TEST_MODE              PSUB("Meter Test")
  1.003  JMPL         FAILED_TEST_MODE             PSUB("Failed Test")
  1.004  JMPL         AUDIBLE_PROMPT               PSUB("Operator Prompt")
  1.005  DISP         Subprocedure not found!
  1.006  END

  1.007  EVAL   Increment test number

#======  Sub Copyright  =====================================================

  2.001  LABEL        COPYRIGHT
  2.002  HEAD         COPYRIGHT NOTICE
  2.003  DISP         [32]               PLEASE NOTE!
  2.003  DISP         This procedure is © 2020, Fluke Corporation.
  2.003  DISP         All rights reserved.
  2.003  DISP
  2.003  DISP         All trademarks used herein are registered
  2.003  DISP         trademarks of their respective companies.

  2.004  HEAD
  2.005  END

  2.006  EVAL   Increment test number

#======  Sub Manual Meter Test Mode  ========================================

  3.001  LABEL        METER_TEST_MODE
  3.002  DO
  3.003  MEMI         Select the desired test mode:
  3.003  MEMI
  3.003  MEMI         (1) Go/No-Go
  3.003  MEMI         (2) Keyboard Entry
  3.003  MEMI         (3) Slew
  3.004  UNTIL        MEM == 1 || MEM == 2 || MEM == 3

  3.005  IF           MEM == 1
  3.006  ASK+           G
  3.007  MATH         @TestMode = "ASK+G"
  3.008  ELSEIF       MEM == 2
  3.009  ASK+           K
  3.010  MATH         @TestMode = "ASK+K"
  3.011  ELSEIF       MEM == 3
  3.012  ASK-           B
  3.013  MATH         @TestMode = "ASK-B"
  3.014  ENDIF

  3.015  END

  3.016  EVAL   Increment test number

#======  Sub Pause on Failed Tests  =========================================

  4.001  LABEL        FAILED_TEST_MODE
  4.002  OPBR         -z Do you want this procedure to pause on failed tests?

  4.003  IF           MEM1
# Set ASK flags to enable Post Test box with "Cancel" option on fail.
  4.004  ASK+                                          X
  4.005  ASK-                                                     F
  4.006  MATH         @FailedTestMode = "ASK-F"
  4.007  ELSE
  4.008  ASK-                                                     A
  4.009  MATH         @FailedTestMode = "ASK-A"
  4.010  ENDIF

  4.011  END

  4.012  EVAL   Increment test number

#======  Sub Operator Attention Bell  =======================================

  5.001  LABEL        AUDIBLE_PROMPT
  5.002  HEAD         [7][D250][7][D250][7][D250][7][D250][7]
  5.003  END
