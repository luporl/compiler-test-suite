      REAL*4    T,S,R4B(10),R4C(10)
      DATA      R4B/10*1/,
     #          R4C/10*4/
C
      S=0
      T = 1
      DO 100 I = 1,10
        S      = S - R4B(I)
        R4C(I) = S
        T      = T + R4B(I)
  100 CONTINUE
C
      WRITE(6,999) S,R4C(10)
  999 FORMAT(1H ,'RESULT = ',2F20.10)
      STOP
      END
