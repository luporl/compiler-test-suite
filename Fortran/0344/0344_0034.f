      INTEGER*4  A(10),B(10)
      DATA       A/10*0/,B/10*8/
      DO 10 I=1,10
        A(I)=ISHFT(B(I),-3)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
