      INTEGER   A(10),B(10)
      DATA      B/10*3/
      DO 10 I=1,10
        A(I)=IABS(B(I))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
