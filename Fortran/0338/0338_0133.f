      REAL*4 A1(10)/10*3.5/
      REAL*8 A2(10)/10*-4.2/
      INTEGER*4 B1(10),B2(10)
      DO 1 I=1,10
       B1(I) = ANINT(A1(I))
    1  B2(I) = ANINT(A2(I))
      WRITE(6,*) B1,B2
      STOP
      END
