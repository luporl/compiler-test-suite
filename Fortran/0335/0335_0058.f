      PROGRAM  MAIN
      INTEGER*4     ANS(50),CNST(50)
      REAL*8        A(10,10)
      DATA          ANS/50*0/,CNST/39,42,36,48,51,45,39,42,36,48,51,
     *    45,39,42,36,48,51,45,99,102,96,108,111,105,189,192,186,198,
     *    201,195,69,72,66,78,81,75,14*0/
      M1 = 10
      CALL SUB11 (ANS,CNST,A,M1)
      STOP
      END
      SUBROUTINE SUB11 (ANS,CNST,A,M1)
      INTEGER*4     ANS(50),CNST(50)
      REAL*8       A(M1,M1)

      X        =    1.0
      DO  1  I =    1,10
      DO  1  J =    1,10
      A(I,J)   =    X
    1 X        =    X+1.0

      N1       =    1
      N2       =    2
      I1 = 1
      I3 = 3
      DO  2  I =    I1,3
      ANS(1)   =    ANS(1)+A(N1,N2)
      ANS(2)   =    ANS(2)+A(N1,N2+1)
      ANS(3)   =    ANS(3)+A(N1,N2-1)
      ANS(4)   =    ANS(4)+A(N1,2*N2)
      ANS(5)   =    ANS(5)+A(N1,2*N2+1)
      ANS(6)   =    ANS(6)+A(N1,2*N2-1)
      N1       =    N1+1
      N2       =    N2+1
    2 CONTINUE
      N1       =    0
      N2       =    2
      DO  3  I =    1,I3
      ANS(7)   =    ANS(7)+A(N1+1,N2)
      ANS(8)   =    ANS(8)+A(N1+1,N2+1)
      ANS(9)   =    ANS(9)+A(N1+1,N2-1)
      ANS(10)  =    ANS(10)+A(N1+1,2*N2)
      ANS(11)  =    ANS(11)+A(N1+1,2*N2+1)
      ANS(12)  =    ANS(12)+A(N1+1,2*N2-1)
      N1       =    N1+1
      N2       =    N2+1
    3 CONTINUE
      N1       =    2
      N2       =    2
      DO  4  I =    1,3,I1
      ANS(13)  =    ANS(13)+A(N1-1,N2)
      ANS(14)  =    ANS(14)+A(N1-1,N2+1)
      ANS(15)  =    ANS(15)+A(N1-1,N2-1)
      ANS(16)  =    ANS(16)+A(N1-1,2*N2)
      ANS(17)  =    ANS(17)+A(N1-1,2*N2+1)
      ANS(18)  =    ANS(18)+A(N1-1,2*N2-1)
      N1       =    N1+1
      N2       =    N2+1
    4 CONTINUE
      N1       =    1
      N2       =    2
      DO  5  I =    I1,I3
      ANS(19)  =    ANS(19)+A(2*N1,N2)
      ANS(20)  =    ANS(20)+A(2*N1,N2+1)
      ANS(21)  =    ANS(21)+A(2*N1,N2-1)
      ANS(22)  =    ANS(22)+A(2*N1,2*N2)
      ANS(23)  =    ANS(23)+A(2*N1,2*N2+1)
      ANS(24)  =    ANS(24)+A(2*N1,2*N2-1)
      N1       =    N1+1
      N2       =    N2+1
    5 CONTINUE
      N1       =    2
      N2       =    2
      DO  6  I =    I1,3,I1
      ANS(25)  =    ANS(25)+A(2*N1+1,N2)
      ANS(26)  =    ANS(26)+A(2*N1+1,N2+1)
      ANS(27)  =    ANS(27)+A(2*N1+1,N2-1)
      ANS(28)  =    ANS(28)+A(2*N1+1,2*N2)
      ANS(29)  =    ANS(29)+A(2*N1+1,2*N2+1)
      ANS(30)  =    ANS(30)+A(2*N1+1,2*N2-1)
      N1       =    N1+1
      N2       =    N2+1
    6 CONTINUE
      N1       =    1
      N2       =    2
      DO  7  I =    1,I3,I1
      ANS(31)  =    ANS(31)+A(2*N1-1,N2)
      ANS(32)  =    ANS(32)+A(2*N1-1,N2+1)
      ANS(33)  =    ANS(33)+A(2*N1-1,N2-1)
      ANS(34)  =    ANS(34)+A(2*N1-1,2*N2)
      ANS(35)  =    ANS(35)+A(2*N1-1,2*N2+1)
      ANS(36)  =    ANS(36)+A(2*N1-1,2*N2-1)
      N1       =    N1+1
      N2       =    N2+1
    7 CONTINUE
      IPSW     =    0
      DO  9  I =    1,50
      IF(ANS(I).EQ.CNST(I))   GO TO    9
      IF(IPSW.NE.0)           GO TO    8
      WRITE(6,100)
      IPSW     =    1
    8 WRITE(6,101)  I,CNST(I),ANS(I)
    9 CONTINUE
      IF (IPSW.NE.0)          GO TO   10
      WRITE(6,102)
      RETURN
   10 WRITE(6,103)
      STOP
  100 FORMAT(1H1/1H0,5X,43H* TEST OF OPTIMIZATION ( NO-11 ) ERROR LIST,
     *                   2H *//1H0,21X,15HCONSTANT VALUE.,12X,
     *                  13HRESULT VALUE.)
  101 FORMAT(1H0,5X,5HANS (,I3,5H ) = ,8X,I10,15X,I10)
  102 FORMAT(1H1/1H0/,5X,'OK' )
  103 FORMAT(1H0,5X,'ERROR')
      END
