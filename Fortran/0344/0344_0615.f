      INTEGER INT1(10)/10*1/,INT2(10)/10*0/,N/1/
C
      DO 10 I=1,10
        INT1(N)=INT2(I)
 10   CONTINUE
C
      DO 20 I=1,10
        INT1(N)=I
 20   CONTINUE
C
      WRITE(6,1000) INT1
      WRITE(6,1000) INT2
 1000 FORMAT(10I4)
      STOP
      END
