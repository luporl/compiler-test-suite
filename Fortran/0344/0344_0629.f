      REAL A(10)/10*1.0/
      DO 10 I=1,10
        WRITE (6,1000) A(I)
        A(I)=A(I)+1
        WRITE (6,1000) A(I)
 10   CONTINUE
      STOP
 1000 FORMAT(F10.5)
      END
