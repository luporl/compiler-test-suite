      PROGRAM  MAIN
      INTEGER*2     ANS(50),CNST(50),A(10,10)
      DATA          ANS/50*0/,CNST/39,42,36,48,51,45,69,72,66,78,81,
     *    75,39,42,36,48,51,45,99,102,96,108,111,105,129,132,126,138,
     *    141,135,69,72,66,78,81,75,14*0/
      M1 = 10
      CALL SUB10 (ANS,CNST,A,M1)
      STOP
      END
      SUBROUTINE SUB10 (ANS,CNST,A,M1)
      INTEGER*2    ANS(50),CNST(50),A(M1,M1)

      X        =    0.0
      DO  1  I =    1,10
      DO  1  J =    1,10
      X        =    X+1.0
    1 A(I,J)   =    X

      N        =    2
      I1 = 1
      I2 = 2
      I3 = 3
      I4 = 4
      DO  2  I =    I1,3
      ANS(1)   =    ANS(1)+A(I,N)
      ANS(2)   =    ANS(2)+A(I,N+1)
      ANS(3)   =    ANS(3)+A(I,N-1)
      ANS(4)   =    ANS(4)+A(I,2*N)
      ANS(5)   =    ANS(5)+A(I,2*N+1)
      ANS(6)   =    ANS(6)+A(I,2*N-1)
      N        =    N+1
    2 CONTINUE
      N        =    2
      DO  3  I =    1,I3
      ANS(7)   =    ANS(7)+A(I+1,N)
      ANS(8)   =    ANS(8)+A(I+1,N+1)
      ANS(9)   =    ANS(9)+A(I+1,N-1)
      ANS(10)  =    ANS(10)+A(I+1,2*N)
      ANS(11)  =    ANS(11)+A(I+1,2*N+1)
      ANS(12)  =    ANS(12)+A(I+1,2*N-1)
      N        =    N+1
    3 CONTINUE
      N        =    2
      DO  4  I =    2,4,I1
      ANS(13)  =    ANS(13)+A(I-1,N)
      ANS(14)  =    ANS(14)+A(I-1,N+1)
      ANS(15)  =    ANS(15)+A(I-1,N-1)
      ANS(16)  =    ANS(16)+A(I-1,2*N)
      ANS(17)  =    ANS(17)+A(I-1,2*N+1)
      ANS(18)  =    ANS(18)+A(I-1,2*N-1)
      N        =    N+1
    4 CONTINUE
      N        =    2
      DO  5  I =    I1,I3
      ANS(19)  =    ANS(19)+A(2*I,N)
      ANS(20)  =    ANS(20)+A(2*I,N+1)
      ANS(21)  =    ANS(21)+A(2*I,N-1)
      ANS(22)  =    ANS(22)+A(2*I,2*N)
      ANS(23)  =    ANS(23)+A(2*I,2*N+1)
      ANS(24)  =    ANS(24)+A(2*I,2*N-1)
      N        =    N+1
    5 CONTINUE
      N        =    2
      DO  6  I =    I1,3,I1
      ANS(25)  =    ANS(25)+A(2*I+1,N)
      ANS(26)  =    ANS(26)+A(2*I+1,N+1)
      ANS(27)  =    ANS(27)+A(2*I+1,N-1)
      ANS(28)  =    ANS(28)+A(2*I+1,2*N)
      ANS(29)  =    ANS(29)+A(2*I+1,2*N+1)
      ANS(30)  =    ANS(30)+A(2*I+1,2*N-1)
      N        =    N+1
    6 CONTINUE
      N        =    2
      DO  7  I =    1,I3,I1
      ANS(31)  =    ANS(31)+A(2*I-1,N)
      ANS(32)  =    ANS(32)+A(2*I-1,N+1)
      ANS(33)  =    ANS(33)+A(2*I-1,N-1)
      ANS(34)  =    ANS(34)+A(2*I-1,2*N)
      ANS(35)  =    ANS(35)+A(2*I-1,2*N+1)
      ANS(36)  =    ANS(36)+A(2*I-1,2*N-1)
      N        =    N+1
    7 CONTINUE
      IPSW     =    0
      DO  9  I =    1,50
      IF (ANS(I).EQ.CNST(I))  GO TO    9
      IF (IPSW.NE.0)          GO TO    8
      WRITE(6,100)
      IPSW     =    1
    8 WRITE(6,101)  I,CNST(I),ANS(I)
    9 CONTINUE
      IF (IPSW.NE.0)          GO TO 10
      WRITE(6,102)
      RETURN
   10 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,44H * TEST OF OPTIMIZATION ( NO-10 ) ERROR LIST,
     *                   2H *//1H0,21X,15HCONSTANT VALUE.,12X,
     *                  13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
