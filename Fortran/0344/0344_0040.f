      INTEGER A(10),B(10)
      LOGICAL L(10)
      DATA    L/10*.FALSE./
      DATA    A/2,1,2,1,2,1,2,1,2,1/
      DATA    B/2,2,2,2,2,2,2,2,2,2/
      DO 10 I=1,10
        L(I)=A(I).LT.B(I)
   10 CONTINUE
      WRITE(6,*) L
      STOP
      END
