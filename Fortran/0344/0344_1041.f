      PROGRAM MAIN
      INTEGER*8 A,B(100),C(100)
      INTEGER*4 D(100)
      DATA B/100*7775/,C/100*5777/
C
      DO 10 I=1,100
         D(I) = 101-I
         A = IEOR(B(D(I)),C(I))
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,I9)
      STOP
      END
