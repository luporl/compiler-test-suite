      PROGRAM MAIN
      INTEGER*8 A(100),B(100)
      DATA B/100*-1234567/
C
      DO 10 I=1,100
         A(I) = NOT(B(I))
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END
