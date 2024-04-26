      IMPLICIT  INTEGER*2(I-N)
      INTEGER*2 B,C,D,F,H
      INTEGER*4 A,G,J
      A = 200
      B = -50
      C =   5
      D =   4
      F =   3
      G =   2
      H =   0
      J =   5
      IANS01 = A+B
      IANS02 = A-B
      IANS03 = A*B
      IANS04 = A/B
      IANS05 = A-(B+C)
      IANS06 = A/(B+C)
      IANS07 = A+(B+C)
      IANS08 = A*(B+C)
      IANS09 = (A+B)+C
      IANS10 = (A+B)-C
      IANS11 = (A+B)*C
      IANS12 = (A+B)/C
      IANS13 = (A+B)+(C+D)
      IANS14 = (A+B)*(C+D)
      IANS15 = (A+B)-(C+D)
      IANS16 = (A+B)/(C+D)
      IANS17 = (J+D)**1
      IANS18 = (J-D)**2
      IANS19 = (J*D)**3
      IANS20 = (J/D)**4
      IANS21 = A-(B+2)
      IANS22 = A/(B+2)
      IANS23 = A+(2+B)
      IANS24 = A*(B+2)
      IANS25 = (A+2)+C
      IANS26 = (A+2)-C
      IANS27 = (A+2)*C
      IANS28 = (2+A)/C
      IANS29 = (A+2)+(C+2)
      IANS30 = (A+2)-(2+B)
      IANS31 = (2+A)*(B+2)
      IANS32 = (2+A)/(2+B)
      IANS33 = D**F
      IANS34 = (D**F)**G
      WRITE(6,99)
   99 FORMAT(1H1/1H0)
      IF (IANS01.NE.150.OR.IANS02.NE.250.OR.
     1    IANS03.NE.-10000.OR.IANS04.NE.-4.OR.
     2    IANS05.NE.245.OR.IANS06.NE.-4.OR.
     3    IANS07.NE.155.OR.IANS08.NE.-9000.OR.
     4    IANS09.NE.155.OR.IANS10.NE.145)         GO TO 1
   10 IF (IANS11.NE.750.OR.IANS12.NE.30.OR.
     1    IANS13.NE.159.OR.IANS14.NE.1350.OR.
     2    IANS15.NE.141.OR.IANS16.NE.16.OR.
     3    IANS17.NE.9.OR.IANS18.NE.1.OR.
     4    IANS19.NE.8000.OR.IANS20.NE.1)          GO TO 2
   20 IF (IANS21.NE.248.OR.IANS22.NE.-4.OR.
     *    IANS23.NE.152.OR.IANS24.NE.-9600.OR.
     *    IANS25.NE.207.OR.IANS26.NE.197.OR.
     *    IANS27.NE.1010.OR.IANS28.NE.40.OR.
     *    IANS29.NE.209.OR.IANS30.NE.250.OR.
     *    IANS31.NE.-9696.OR.IANS32.NE.-4.OR.
     *    IANS33.NE.64.OR.IANS34.NE.4096)         GO TO 3
      IF  (H.NE.0)                                GO TO 4
      WRITE(6,100)
  100 FORMAT(1H0,5X,38HERROR IS NOT DETECTED BY THIS PROGRAM./1H0,
     1           5X,15HFILE = TEST0030)
      GO TO 5
    1 WRITE(6,101) IANS01,IANS02,IANS03,IANS04,IANS05,IANS06,IANS07,
     1             IANS09,IANS10
  101 FORMAT(1H0,5X,7HIANS01=,I5,2X,7HIANS02=,I5,2X,7HIANS03=,I5,2X,
     1              7HIANS04=,I5,2X,7HIANS05=,I5/1H0,5X,
     2              7HIANS06=,I5,2X,7HIANS07=,I5,2X,7HIANS08=,I5,2X,
     3              7HIANS09=,I5,2X,7HIANS10=,I5)
      H=1
      GO TO 10
    2 WRITE(6,102) IANS11,IANS12,IANS13,IANS14,IANS15,IANS16,IANS17,
     1             IANS18,IANS19,IANS20
  102 FORMAT(1H0,5X,7HIANS11=,I5,2X,7HIANS12=,I5,2X,7HIANS13=,I5,2X,
     1              7HIANS14=,I5,2X,7HIANS15=,I5/1H0,5X,
     2              7HIANS16=,I5,2X,7HIANS17=,I5,2X,7HIANS18=,I5,2X,
     3              7HIANS19=,I5,2X,7HIANS20=,I5)
      H=1
      GO TO 20
    3 WRITE(6,103) IANS21,IANS22,IANS23,IANS24,IANS25,IANS26,IANS27,
     1             IANS28,IANS29,IANS30,IANS31,IANS32,IANS33,IANS34
  103 FORMAT(1H0,5X,7HIANS21=,I5,2X,7HIANS22=,I5,2X,7HIANS23=,I5,2X,
     1              7HIANS24=,I5,2X,7HIANS25=,I5,2X,7HIANS26=,I5,2X,
     2              7HIANS27=,I5/1H0,5X,
     3              7HIANS28=,I5,2X,7HIANS29=,I5,2X,7HIANS30=,I5,2X,
     4              7HIANS31=,I5,2X,7HIANS32=,I5,2X,7HIANS33=,I5,2X,
     5              7HIANS34=,I5)
    4 WRITE(6,104)
  104 FORMAT(1H0,5X,39H**** ERROR IS DETECTED BY THIS PROGRAM./1H0,
     1          10X,15HFILE = TEST0030)
    5 STOP
      END
