      REAL*8  R81(10),R82(10),R83(10),R84(10),R85(10),R86(10)
      REAL*8  R87(10),R88(10)
      DATA  R81,R82,R83,R84,R85,R86,R87,R88
     *      /10*1.0,10*2.0,10*3.0,10*4.0,10*5.0,10*6.0,10*7.0,10*8.0/
      DO 10 I=1,10
        R81(I) = R82(I) + R83(I) + R84(I)
        R85(I) = R86(I) / R87(I) / R88(I)
   10 CONTINUE
      WRITE(6,*) R81,R85
      STOP
      END
