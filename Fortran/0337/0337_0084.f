      INTEGER X1,X2,Y,Z,IARRAY(2,2),IFU1,IFU2
      IFU1(K)=2*K
      IFU2(K)=(K**2+K)/K
      ITEM=1
      N=0
      IX=5
      P=1.0
      X1=100
      IARRAY(1,1)=-50
      IARRAY(1,2)=-1
      IARRAY(2,1)=1
      IARRAY(2,2)=50
      ISW=1
  100 X2=-150
  110 N=N+1
      IF(N-1)120,130,120
  120 CONTINUE
C
   12 FORMAT(1H1 / )
  130 CONTINUE
C
   13 FORMAT(1H0,7X,9H*** ITEM(,I2,5H) ***,7X,
     1       50H*****  TEST  OF  STANDARD  INTRINSIC  FUNCTION -  ,
     2       14HMOD(I1,I2) -  ,5H*****,18X,9H( PAGE = ,I3,2H )
     3       ///6X,11H- JUSTICE -,18X,13H- ARGUMENTS -,11X,
     4       19H- COMPUTED RESULT -,5X,17H- COMPARE VALUE -)
      L=0
  140 IF(X2)150,160,150
  150 Y=MOD(X1,X2)
      A=FLOAT(X1/X2)
      Z=X1-INT(A)*X2
      CALL I2RTN(L,X1,X2,Y,Z)
      L=L+1
  160 IF(X2-150)170,180,180
  170 X2=X2+1
      IF(L-50)140,110,110
  180 ITEM=ITEM+1
  190 GO TO (1,2,3,4,5,6,7,8,9,10,21),ISW
    1 X1=-100
      ISW=2
      GO TO 100
    2 X1=0
      X2=34
      ISW=3
      N=N+1
C
  200 Y=MOD(X1,X2)
      A=FLOAT(X1/X2)
      Z=X1-INT(A)*X2
      CALL I2RTN(L,X1,X2,Y,Z)
      GO TO 190
    3 ITEM=ITEM+1
C
   15 FORMAT(1H0/19X,3H- (,I3,3H) -// )
      X1=IARRAY(1,1)
      X2=IARRAY(1,2)
      ISW=4
      GO TO 200
    4 X1=IARRAY(2,1)
      X2=IARRAY(2,2)
      ISW=5
      GO TO 200
    5 X1=(5-IX**2)*3+10
      X2=(IX**2-IX*2)*2/(-30)
      ISW=6
      GO TO 200
    6 X1=(IARRAY(2,1)*10+IX*2)/20
      X2=IARRAY(2,2)**2/100+IX*5
      ISW=7
      GO TO 200
    7 X1=IABS(IX-10)*(-10)
      X2=IFIX(P-FLOAT(IX)+3.0)
      ISW=8
      GO TO 200
    8 X1=IFIX(P**2+FLOAT(IX+4))/10
      X2=IABS(IX**2-IFIX(P**2+74.0))
      ISW=9
      GO TO 200
    9 X1=-(8*IX)-IFU1(IX)
      X2=(IFU2(IX)-IFU1(IX))/4
      ISW=10
      GO TO 200
   10 X1=IABS(IFU2(IX)-IFU1(IX))/4
      X2=2*IFU1(IX)+5*IFU2(IX)
      ISW=11
      GO TO 200
   21 CONTINUE
      STOP
      END
C
      SUBROUTINE I2RTN(L,X1,X2,Y,Z)
      INTEGER X1,X2,Y,Z
      IF (L)    120,110,100
  100 IF (L-10) 120,110,101
  101 IF (L-20) 120,110,102
  102 IF (L-30) 120,110,103
  103 IF (L-40) 120,110,120
  110 CONTINUE
C
   10 FORMAT(1H )
  120 IF(Y-Z)130,140,130
  130 WRITE(6,11)X1,X2,Y,Z
   11 FORMAT(1H ,8X,7H*ERROR*,17X,I6,4X,I6,2(17X,I6))
      RETURN
  140 CONTINUE
C
   12 FORMAT(1H ,8X,4H*OK*,20X,I6,4X,I6,2(17X,I6))
      RETURN
      END
