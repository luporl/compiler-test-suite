      PROGRAM MAIN
      INTEGER*8 A(100),B(100),N
      DATA B/100*1234567/,A/100*0/
      DATA N/98765/,L/3/
C
      DO 10 I=1,100,L
         A(I) = IOR(N,B(I))
   10 CONTINUE
C
      WRITE(6,100) A
  100 FORMAT(1H ,8I9)
      STOP
      END
