      DIMENSION  A(10),B(10),C(10),D(10)
      DATA  A,B,C,D/10*1.0,10*8.0,10*2.0,10*2.0/
      DO 10 I=1,10
        A(I) = B(I) / C(I) / D(I)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
