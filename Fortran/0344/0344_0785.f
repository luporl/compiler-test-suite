      REAL*4    S
      REAL*8    R4B(100),R4C(100)
      DATA      R4B/100*1/,R4C/100*5/
C
      S=0
      T=S
      DO 100 I=1,100
        S = S * R4B(I) +R4C(I)
  100 CONTINUE
C
      WRITE(6,999) S
  999 FORMAT(1H ,'RESULT = ',F20.10)
      STOP
      END
