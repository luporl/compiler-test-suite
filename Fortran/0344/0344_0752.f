      REAL*4    R4A(100),R4B(100),R4C(100)
      DATA      R4A/100*0/,
     #          R4B/100*1/,
     #          R4C/100*2/
C
      DO 100 I = 2,100
        R4A(I) = R4C(I) - R4A(I-1) * R4B(I)
  100 CONTINUE
C
      WRITE(6,999) R4A(100)
  999 FORMAT(1H ,'RESULT = ',F20.10)
      STOP
      END
