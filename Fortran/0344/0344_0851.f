      REAL A(20),B(20,20),T
      DATA A,B/5*(0.0,1.0),15*(2.0,1.0),20*(-2.0,0.1),(3.0,1.2),(-1,-1),
     +         100*(0.0,8.0),200*(0.5,-1.0),(9.0,1.0),77*(3.3,2.2)/
      INTEGER I

      DO 10 I=1,10
         IF(I.EQ.1) THEN
         T=B(I*2,I+9)
         A(I+3)=T-A(I+3)
         ENDIF
         T=B(3,I)
         A(I+2)=T+A(I)
         A(I  )=T-A(I)
   10 CONTINUE

      
      WRITE (6,100) A
  100 FORMAT((' ',6G13.5))
      STOP
      END
