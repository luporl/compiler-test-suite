      REAL*4 A(100),B(100),C(100)
      CHARACTER*1 STR1(100),STR2(100,100)
      DATA A/100*0.0/,B/100*1.0/,C/100*2.0/,N/100/
      DATA STR1/100*'1'/,STR2/10000*'2'/
      DO 10 I=1,N
         A(I) = C(I) - B(I) + A(I)
         IF(STR1(I).LE.STR2(I,I)) THEN
            A(I) = B(I) + C(I)
            STR1(I) = STR2(I,I)
         ENDIF
         A(I) = B(I) + C(I)
   10 CONTINUE
   20 CONTINUE
      WRITE(6,100) (A(I),I=1,N)
  100 FORMAT(1H ,5F5.1)
      STOP
      END
