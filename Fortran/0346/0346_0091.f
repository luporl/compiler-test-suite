      REAL*8 R81(10),R82(10),R83(10,10)
      REAL*4 R41(10),R42(10),R43(10,10)
      INTEGER*4 I41(10),I42(10),I43(10,10)
      DATA  I41,I42,I43/10*1,10*2,100*3/
      DATA  R41,R42,R43/10*1.0,10*2.0,100*3.0/
      DATA  R81,R82,R83/10*4.0,10*5.0,100*6.0/
      DO 10J=1,10
       DO 10 I=1,10
        I41(I) = I42(I) * I43(I,J)
        R41(I) = R42(I) + R43(I,J)
        R81(I) = R82(I) / R83(I,J)
   10 CONTINUE
      WRITE(6,*) I41,R41,R81
      STOP
      END
